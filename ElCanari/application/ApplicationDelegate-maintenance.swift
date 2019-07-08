//
//  ApplicationDelegate-maintenance.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 30/11/2018.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension ApplicationDelegate {

  //····················································································································

  @IBAction func actionOpenAllDocumentsInDirectory (_ inSender : AnyObject) {
    let fileExtensions = Set (["ElCanariSymbol", "ElCanariPackage", "ElCanariDevice", "ElCanariFont", "ElCanariProject"])
    self.actionOpenAllDocumentsInDirectory (fileExtensions, "document", inSender)
  }

  //····················································································································

  @IBAction func actionOpenAllSymbolsInDirectory (_ inSender : Any?) {
    self.actionOpenAllDocumentsInDirectory (["ElCanariSymbol"], "symbol", inSender)
  }

  //····················································································································

  @IBAction func actionOpenAllPackagesInDirectory (_ inSender : Any?) {
    self.actionOpenAllDocumentsInDirectory (["ElCanariPackage"], "package", inSender)
  }

  //····················································································································

  @IBAction func actionOpenAllDevicesInDirectory (_ inSender : Any?) {
    self.actionOpenAllDocumentsInDirectory (["ElCanariDevice"], "device", inSender)
  }

  //····················································································································

  @IBAction func actionOpenAllFontInDirectory (_ inSender : Any?) {
    self.actionOpenAllDocumentsInDirectory (["ElCanariFont"], "font", inSender)
  }

  //····················································································································

  private func actionOpenAllDocumentsInDirectory (_ extensions : Set <String>, _ inTitle : String, _ inSender : Any?) {
    if let button = inSender as? NSButton, let window = button.window {
      self.mMaintenanceLogTextView?.string = ""
      self.mMaintenanceLogTextField?.stringValue = ""
      let op = NSOpenPanel ()
      op.allowsMultipleSelection = false
      op.canChooseDirectories = true
      op.canChooseFiles = false
      op.beginSheetModal (for: window) { (_ response : NSApplication.ModalResponse) in
        op.orderOut (nil)
        if response == .OK {
          let baseDirectory : String = op.urls [0].path
          let fm = FileManager ()
          let dc = NSDocumentController ()
          let files = try? fm.subpathsOfDirectory (atPath: baseDirectory)
          var fileCount = 0
          for f in files ?? [] {
            let fullpath = baseDirectory + "/" + f
            if extensions.contains (fullpath.pathExtension) {
              fileCount += 1
            }
          }
          if fileCount == 0 {
            let alert = NSAlert ()
            alert.messageText = "No \(inTitle) to Open"
            _ = alert.beginSheetModal (for: window)
          }else{
            let alert = NSAlert ()
            alert.messageText = "Open \(fileCount) \(inTitle)\((fileCount > 1) ? "s" : "")? This may take a while, and you cannot cancel this operation."
            alert.accessoryView = self.mOpenAllDialogAccessoryCheckBox
            alert.informativeText = "Animating is slower, but you have a visual effect during documents opening."
            alert.addButton (withTitle: "Ok")
            alert.addButton (withTitle: "Cancel")
            alert.beginSheetModal (for: window) { (response : NSApplication.ModalResponse) in
              if response == .alertFirstButtonReturn {
                let message = "Opening \(fileCount) \(inTitle)\((fileCount > 1) ? "s" : "")\n"
                self.mMaintenanceLogTextView?.appendMessageString (message)
                let animating = (self.mOpenAllDialogAccessoryCheckBox?.state ?? .on) == .on
                var count = 0
                for f in files ?? [] {
                  let fullpath = baseDirectory + "/" + f
                  if extensions.contains (fullpath.pathExtension) {
                    dc.openDocument (
                      withContentsOf: URL (fileURLWithPath: fullpath),
                      display: true
                    ){ (document : NSDocument?, documentWasAlreadyOpen : Bool, error : Error?) in
                      if animating {
                        _ = RunLoop.main.run (mode: .default, before: Date ())
                      }
                      if document != nil {
                        count += 1
                        let message = (count > 1)
                          ? "\(count) \(inTitle)s have been opened"
                          : "\(count) \(inTitle) has been opened"
                        self.mMaintenanceLogTextField?.stringValue = message
                      }else{
                        self.mMaintenanceLogTextView?.appendErrorString ("Cannot open \(f)")
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  //····················································································································

  @IBAction func updateAllProjectsInDirectory (_ inSender : Any?) {
    if let button = inSender as? NSButton, let window = button.window {
      self.mMaintenanceLogTextView?.string = ""
      self.mMaintenanceLogTextField?.stringValue = ""
      self.mCount = 0
      let fileExtension = "ElCanariProject"
      let op = NSOpenPanel ()
      op.allowsMultipleSelection = false
      op.canChooseDirectories = true
      op.canChooseFiles = false
      op.beginSheetModal (for: window) { (_ response : NSApplication.ModalResponse) in
        op.orderOut (nil)
        if response == .OK {
          let baseDirectory : String = op.urls [0].path
          let fm = FileManager ()
          let dc = NSDocumentController ()
          let subPathes = (try? fm.subpathsOfDirectory (atPath: baseDirectory)) ?? []
          let filesInCurrentDirectory = fm.subpaths (atPath: baseDirectory) ?? []
          var fileCount = 0
          for f in filesInCurrentDirectory + subPathes {
            let fullpath = baseDirectory + "/" + f
            if fullpath.pathExtension == fileExtension {
              fileCount += 1
            }
          }
          if fileCount == 0 {
            let alert = NSAlert ()
            alert.messageText = "No project to Open"
            _ = alert.beginSheetModal (for: window)
          }else{
            let alert = NSAlert ()
            alert.messageText = "Update \(fileCount) project\((fileCount > 1) ? "s" : "")? This may take a while, and you cannot cancel this operation."
            alert.addButton (withTitle: "Ok")
            alert.addButton (withTitle: "Cancel")
            alert.beginSheetModal (for: window) { (response : NSApplication.ModalResponse) in
              if response == .alertFirstButtonReturn {
                self.mMaintenanceLogTextField?.stringValue = "No updated project"
                self.mMaintenanceLogTextView?.appendMessageString ("Updating \(fileCount) project\((fileCount > 1) ? "s" : "")\n")
                for f in filesInCurrentDirectory + subPathes {
                  let fullpath = baseDirectory + "/" + f
                  if fullpath.pathExtension == fileExtension {
                    dc.openDocument (
                      withContentsOf: URL (fileURLWithPath: fullpath),
                      display: true // animating,
                    ){ (document : NSDocument?, documentWasAlreadyOpen : Bool, error : Error?) in
                      if let projectDocument = document as? CustomizedProjectDocument {
//                        projectDocument.resetDevicesAndFontsVersionAction (nil)
                        var errorMessages = [String] ()
                        projectDocument.updateDevices (projectDocument.rootObject.mDevices, &errorMessages)
                        projectDocument.updateFonts (projectDocument.rootObject.mFonts, &errorMessages)
                        projectDocument.save (nil)
                        projectDocument.close ()
                        if errorMessages.count == 0 {
                          self.mCount += 1
                          let message = (self.mCount > 1)
                            ? "\(self.mCount) projects have been updated."
                            : "1 project has been updated."
                          self.mMaintenanceLogTextField?.stringValue = message
                        }else{
                          self.mMaintenanceLogTextView?.appendErrorString ("Cannot update \(f)\n")
                          self.mMaintenanceLogTextView?.appendMessageString (errorMessages.joined (separator: "\n"))
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  //····················································································································

  @IBAction func updateAllDevicesInDirectory (_ inSender : Any?) {
    if let button = inSender as? NSButton, let window = button.window {
      self.mMaintenanceLogTextView?.string = ""
      self.mMaintenanceLogTextField?.stringValue = ""
      self.mCount = 0
      let fileExtension = "ElCanariDevice"
      let op = NSOpenPanel ()
      op.allowsMultipleSelection = false
      op.canChooseDirectories = true
      op.canChooseFiles = false
      op.beginSheetModal (for: window) { (_ response : NSApplication.ModalResponse) in
        op.orderOut (nil)
        if response == .OK {
          let baseDirectory : String = op.urls [0].path
          let fm = FileManager ()
          let dc = NSDocumentController ()
          let subPathes = (try? fm.subpathsOfDirectory (atPath: baseDirectory)) ?? []
          let filesInCurrentDirectory = fm.subpaths (atPath: baseDirectory) ?? []
          var fileCount = 0
          for f in filesInCurrentDirectory + subPathes {
            let fullpath = baseDirectory + "/" + f
            if fullpath.pathExtension == fileExtension {
              fileCount += 1
            }
          }
          if fileCount == 0 {
            let alert = NSAlert ()
            alert.messageText = "No device to Open"
            _ = alert.beginSheetModal (for: window)
          }else{
            let alert = NSAlert ()
            alert.messageText = "Update \(fileCount) device\((fileCount > 1) ? "s" : "")? This may take a while, and you cannot cancel this operation."
            alert.addButton (withTitle: "Ok")
            alert.addButton (withTitle: "Cancel")
            alert.beginSheetModal (for: window) { (response : NSApplication.ModalResponse) in
              if response == .alertFirstButtonReturn {
                self.mMaintenanceLogTextField?.stringValue = "No updated device"
                self.mMaintenanceLogTextView?.appendMessageString ("Updating \(fileCount) device\((fileCount > 1) ? "s" : "")\n")
                for f in filesInCurrentDirectory + subPathes {
                  let fullpath = baseDirectory + "/" + f
                  if fullpath.pathExtension == fileExtension {
                    dc.openDocument (
                      withContentsOf: URL (fileURLWithPath: fullpath),
                      display: true // animating,
                    ){ (document : NSDocument?, documentWasAlreadyOpen : Bool, error : Error?) in
                      if let deviceDocument = document as? CustomizedDeviceDocument {
//                        deviceDocument.resetSymbolsVersion ()
//                        deviceDocument.resetPackagesVersion ()
                        var okMessages = [String] ()
                        var errorMessages = [String] ()
                        deviceDocument.performSymbolsUpdate (&okMessages, &errorMessages)
                        deviceDocument.performPackagesUpdate (deviceDocument.rootObject.mPackages, &okMessages, &errorMessages)
                        deviceDocument.save (nil)
                        deviceDocument.close ()
                        if errorMessages.count == 0 {
                          self.mCount += 1
                          let message = (self.mCount > 1)
                            ? "\(self.mCount) devices have been updated."
                            : "1 device has been updated."
                          self.mMaintenanceLogTextField?.stringValue = message
                        }else{
                          self.mMaintenanceLogTextView?.appendErrorString ("Cannot update \(f)\n")
                          self.mMaintenanceLogTextView?.appendMessageString (errorMessages.joined (separator: "\n"))
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

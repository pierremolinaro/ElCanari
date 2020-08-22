//--- START OF USER ZONE 1

fileprivate var gDocWindowSet = Set <CanariPDFWindow> ()

extension ApplicationDelegate {

  @objc func closeDocumentWindow (_ inNotification : Notification) {
    if let window = inNotification.object as? CanariPDFWindow {
      gDocWindowSet.remove (window)
      Swift.print ("Object \(window)")
    }
  }

}


//--- END OF USER ZONE 1
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension DeviceDocument {
  @objc func showDocAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    let selectedDocArray = self.documentationController.selectedArray
    if selectedDocArray.count == 1 {
      let selectedDoc = selectedDocArray [0]
      let window = CanariPDFWindow (fileName: selectedDoc.mFileName, pdfData: selectedDoc.mFileData)
      window.makeKeyAndOrderFront (nil)
      Swift.print ("Object \(window)")
      gDocWindowSet.insert (window)
      NotificationCenter.default.addObserver (
        gApplicationDelegate!,
        selector: #selector (ApplicationDelegate.closeDocumentWindow(_:)),
        name: NSWindow.willCloseNotification,
        object: window
      )
    }
//--- END OF USER ZONE 2
  }
}

//----------------------------------------------------------------------------------------------------------------------

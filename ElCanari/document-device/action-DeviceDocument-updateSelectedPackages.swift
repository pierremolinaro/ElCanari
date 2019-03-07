//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension DeviceDocument {
  @objc func updateSelectedPackages (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    let selectedPackages = self.mPackageController.selectedArray_property.propval
    let fm = FileManager ()
    var messages = [String] ()
    for package in selectedPackages {
      let pathes = packageFilePathInLibraries (package.mName)
      if pathes.count == 0 {
        messages.append ("No file in Library for package \(package.mName)")
      }else if pathes.count == 1 {
        if let data = fm.contents (atPath: pathes [0]),
           let (_, metadataDictionary, rootObject) = try? loadEasyBindingFile (nil, from: data),
           let packageRoot = rootObject as? PackageRoot,
           let version = metadataDictionary [PMPackageVersion] as? Int {
          if version <= package.mVersion {
            messages.append ("Package \(package.mName) is up-to-date.")
          }else{
            let strokeBezierPathes = NSBezierPath ()
            var masterPads = [MasterPadInDevice] ()
            var slavePads = [SlavePadInDevice] ()
            packageRoot.accumulate (
              withUndoManager: self.ebUndoManager,
              strokeBezierPathes: strokeBezierPathes,
              masterPads: &masterPads,
              slavePads: &slavePads
            )
            packageRoot.removeRecursivelyAllRelationsShips ()
          //-- Set properties
            package.mVersion = version
            package.mFileData = data
            package.mStrokeBezierPath = strokeBezierPathes
          //--- Set relationship
            package.mMasterPads_property.setProp (masterPads)
            package.mSlavePads_property.setProp (slavePads)
          //---
            messages.append ("Package \(package.mName) has been updated to version \(version).")
          }
        }else{
          messages.append ("Invalid file at path \(pathes [0])")
        }
      }else{ // pathes.count > 1
        messages.append ("Cannot update, several files in Library for package \(package.mName):")
        for path in pathes {
          messages.append ("  - \(path)")
        }
      }
    }
    if messages.count > 0 {
      let alert = NSAlert ()
      alert.messageText = "Done."
      alert.informativeText = messages.joined (separator: "\n")
      alert.beginSheetModal (for: self.windowForSheet!)
    }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

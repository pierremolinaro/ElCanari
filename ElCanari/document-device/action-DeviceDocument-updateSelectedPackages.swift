//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension DeviceDocument {
  @objc func updateSelectedPackages (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    let selectedPackages = self.packageController.selectedArray_property.propval
    var okMessages = [String] ()
    var errorMessages = [String] ()
    self.performPackagesUpdate (selectedPackages, &okMessages, &errorMessages)
    let alert = NSAlert ()
    alert.messageText = (errorMessages.count == 0) ? "Success." : "Error"
    alert.informativeText = (okMessages + errorMessages).joined (separator: "\n")
    alert.beginSheetModal (for: self.windowForSheet!)
//--- END OF USER ZONE 2
  }
}

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension ProjectDocument {
  @objc func resetDevicesAndFontsVersionAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
       for device in self.rootObject.mDevices {
         device.mDeviceVersion = 0
       }
       for font in self.rootObject.mFonts {
         font.mFontVersion = 0
       }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Preferences {
  func revealUserLibraryInFinderAction (_ sender : NSObject) {
//--- START OF USER ZONE 2
    NSWorkspace.shared ().open (URL (fileURLWithPath: userLibraryPath ()))
//--- END OF USER ZONE 2
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Preferences {
  @objc func checkLibraryAction (_ sender : NSObject) {
//--- START OF USER ZONE 2
    let myWindow = (sender as! NSButton).window!
    checkLibrary (myWindow, logView:mCheckLibraryResultTextView)
//--- END OF USER ZONE 2
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

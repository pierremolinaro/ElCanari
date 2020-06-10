//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_MasterPadInDevice_padNumberDisplay (
       _ self_mCenterX : Int,                      
       _ self_mCenterY : Int,                      
       _ prefs_padNumberColor : NSColor,           
       _ self_mName : String,                      
       _ prefs_padNumberFont : NSFont
) -> EBShape {
//--- START OF USER ZONE 2
      let textAttributes : [NSAttributedString.Key : Any] = [
        NSAttributedString.Key.font : prefs_padNumberFont,
        NSAttributedString.Key.foregroundColor : prefs_padNumberColor
      ]
      return EBShape (
        text: self_mName, // padString,
        CanariPoint (x: self_mCenterX, y: self_mCenterY).cocoaPoint,
        textAttributes,
        .center,
        .center
      )
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

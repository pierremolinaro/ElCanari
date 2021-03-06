//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_borderViewBackground (
       _ prefs_boardBackgroundColorForBoard : NSColor,
       _ self_borderOutlineBackground : EBShape, 
       _ self_mBoardObjects_objectDisplay : [BoardObject_objectDisplay]
) -> EBShape {
//--- START OF USER ZONE 2
       var shape = EBShape ()
       for object in self_mBoardObjects_objectDisplay {
         if let s = object.objectDisplay {
           shape.add (s.blended (withFraction: 0.5, of: prefs_boardBackgroundColorForBoard))
         }
       }
       shape.add (self_borderOutlineBackground)
       return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_CommentInSchematic_selectionDisplay (
       _ self_mComment : String,                    
       _ self_mX : Int,                             
       _ self_mY : Int
) -> EBShape {
//--- START OF USER ZONE 2
        let p = CanariPoint (x: self_mX, y: self_mY).cocoaPoint
        var shape = EBShape ()
        shape.addTextKnob (
          (self_mComment == "") ? "Empty comment" : self_mComment,
          p,
          NSFont.systemFont (ofSize: NSFont.smallSystemFontSize),
          .center,
          .center,
          0
        )
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

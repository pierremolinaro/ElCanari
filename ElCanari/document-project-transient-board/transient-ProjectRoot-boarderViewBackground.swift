//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_boarderViewBackground (
       _ self_borderClearanceBackground : EBShape,
       _ self_mBoardObjects_objectDisplay : [BoardObject_objectDisplay]
) -> EBShape {
//--- START OF USER ZONE 2
       let shape = EBShape ()
       for object in self_mBoardObjects_objectDisplay {
         if let s = object.objectDisplay {
           shape.append (s)
         }
       }
       shape.append (self_borderClearanceBackground)
       return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

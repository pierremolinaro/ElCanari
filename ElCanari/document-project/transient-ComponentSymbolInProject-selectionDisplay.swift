//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ComponentSymbolInProject_selectionDisplay (
       _ self_symbolInfo : ComponentSymbolInfo
) -> EBShape {
//--- START OF USER ZONE 2
        let shape = EBShape ()
        let p = self_symbolInfo.center.cocoaPoint ()
        shape.append (EBKnobShape (at: p, index: 0, .rect, 8.0))
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

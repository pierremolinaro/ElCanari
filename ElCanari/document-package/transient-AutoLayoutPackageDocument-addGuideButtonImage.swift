//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_AutoLayoutPackageDocument_addGuideButtonImage (
       _ prefs_packageGuideColor : NSColor
) -> NSImage {
//--- START OF USER ZONE 2
        var bp = EBBezierPath ()
        bp.lineWidth = 2.0
        bp.move (to: NSPoint (x: 0, y: 0))
        bp.line (to: NSPoint (x: 10, y: 10))
        bp.lineCapStyle = .round
        let shape = EBShape (stroke: [bp], prefs_packageGuideColor)
        let r = shape.boundingBox
        return buildPDFimage (frame: r.insetBy(dx: -2.0, dy: -2.0), shape: shape)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

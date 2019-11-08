//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_DeviceSymbolInstanceInProject_strokeBezierPath (
       _ self_mSymbolType_mStrokeBezierPath : NSBezierPath?,   
       _ prefs_symbolDrawingWidthMultipliedByTenForSchematic : Int
) -> NSBezierPath {
//--- START OF USER ZONE 2
        let bp = NSBezierPath ()
        if let strokeBezierPath = self_mSymbolType_mStrokeBezierPath {
          bp.append (strokeBezierPath)
          bp.lineWidth = CGFloat (prefs_symbolDrawingWidthMultipliedByTenForSchematic) / 10.0
          bp.lineJoinStyle = .round
          bp.lineCapStyle = .round
        }
        return bp
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ComponentSymbolInProject_selectionDisplay (
       _ prefs_pinNameFont : NSFont,                      
       _ self_mDisplayComponentNameOffsetX : Int,         
       _ self_mDisplayComponentNameOffsetY : Int,         
       _ self_mDisplayComponentValue : Bool,              
       _ self_mDisplayComponentValueOffsetX : Int,        
       _ self_mDisplayComponentValueOffsetY : Int,        
       _ self_symbolInfo : ComponentSymbolInfo
) -> EBShape {
//--- START OF USER ZONE 2
        var shape = EBShape ()
        var strokeBezierPath = EBBezierPath ()
        strokeBezierPath.append (self_symbolInfo.strokeBezierPath)
        strokeBezierPath.lineWidth = SCHEMATIC_HILITE_WIDTH
        shape.addStrokeBezierPathes ([strokeBezierPath], .cyan)
        let symbolCenter = self_symbolInfo.center.cocoaPoint
        shape.addKnob (at: symbolCenter, knobIndex: SYMBOL_IN_SCHEMATICS_CENTER_KNOB, .rect, SCHEMATIC_KNOB_SIZE)
      //--- Component name knob
        do{
          let componentNameCenter = CanariPoint (x: self_symbolInfo.center.x + self_mDisplayComponentNameOffsetX, y: self_symbolInfo.center.y + self_mDisplayComponentNameOffsetY)
          var bp = EBBezierPath ()
          bp.move (to: symbolCenter)
          bp.line (to: componentNameCenter.cocoaPoint)
          bp.lineWidth = SCHEMATIC_HILITE_WIDTH
          shape.addStrokeBezierPathes ([bp], .black)
          let componentNameShape = EBShape (
            textKnob: self_symbolInfo.componentName,
            componentNameCenter.cocoaPoint,
            prefs_pinNameFont,
            .center,
            .center,
            knobIndex: SYMBOL_IN_SCHEMATICS_COMPONENT_NAME_KNOB
          )
          shape.add (componentNameShape)
        }
      //--- Component value knob
        if self_mDisplayComponentValue {
          let value = (self_symbolInfo.componentValue != "") ? self_symbolInfo.componentValue : "No value"
          let componentValueCenter = CanariPoint (
            x: self_symbolInfo.center.x + self_mDisplayComponentValueOffsetX,
            y: self_symbolInfo.center.y + self_mDisplayComponentValueOffsetY
          )
          var bp = EBBezierPath ()
          bp.move (to: symbolCenter)
          bp.line (to: componentValueCenter.cocoaPoint)
          bp.lineWidth = SCHEMATIC_HILITE_WIDTH
          shape.addStrokeBezierPathes ([bp], .black)
          let componentValueShape = EBShape (
            textKnob: value,
            componentValueCenter.cocoaPoint,
            prefs_pinNameFont,
            .center,
            .center,
            knobIndex: SYMBOL_IN_SCHEMATICS_COMPONENT_VALUE_KNOB
          )
          shape.add (componentValueShape)
        }
      //---
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

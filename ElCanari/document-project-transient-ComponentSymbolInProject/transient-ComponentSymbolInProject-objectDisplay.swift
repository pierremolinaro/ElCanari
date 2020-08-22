//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ComponentSymbolInProject_objectDisplay (
       _ prefs_pinNameFont : NSFont,                   
       _ self_mDisplayComponentNameOffsetX : Int,      
       _ self_mDisplayComponentNameOffsetY : Int,      
       _ self_mDisplayComponentValue : Bool,           
       _ self_mDisplayComponentValueOffsetX : Int,     
       _ self_mDisplayComponentValueOffsetY : Int,     
       _ self_symbolInfo : ComponentSymbolInfo,        
       _ prefs_symbolColorForSchematic : NSColor,      
       _ self_mSymbolInstanceName : String,            
       _ self_mSymbolTypeName : String
) -> EBShape {
//--- START OF USER ZONE 2
        var shape = EBShape ()
        let strokeShape = EBShape (stroke: [EBBezierPath (self_symbolInfo.strokeBezierPath)], prefs_symbolColorForSchematic)
        let filledPath = EBShape (filled: [EBBezierPath (self_symbolInfo.filledBezierPath)], prefs_symbolColorForSchematic)
        let box = filledPath.boundingBox.union (strokeShape.boundingBox)
        shape.add (filled: [EBBezierPath (rect: box)], nil)
        shape.add (strokeShape)
        shape.add (filledPath)
     
        for pinShape in self_symbolInfo.pins {
          if (pinShape.pinIdentifier.symbol.symbolInstanceName == self_mSymbolInstanceName) && (pinShape.pinIdentifier.symbol.symbolTypeName == self_mSymbolTypeName) {
            shape.add (pinShape.shape)
          }
        }
      //--- Component name
        do{
          let componentNameTextAttributes : [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font : prefs_pinNameFont
          ]
          let componentNameCenter = CanariPoint (x: self_symbolInfo.center.x + self_mDisplayComponentNameOffsetX, y: self_symbolInfo.center.y + self_mDisplayComponentNameOffsetY)
          let componentNameShape = EBShape (
            text: self_symbolInfo.componentName,
            componentNameCenter.cocoaPoint,
            componentNameTextAttributes,
            .center,
            .center
          )
          shape.add (componentNameShape)
        }
      //--- Component value
        if self_mDisplayComponentValue {
          let componentValueTextAttributes : [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font : prefs_pinNameFont
          ]
          let value = (self_symbolInfo.componentValue != "") ? self_symbolInfo.componentValue : "No value"
          let componentValueCenter = CanariPoint (x: self_symbolInfo.center.x + self_mDisplayComponentValueOffsetX, y: self_symbolInfo.center.y + self_mDisplayComponentValueOffsetY)
          let componentValueShape = EBShape (
            text: value,
            componentValueCenter.cocoaPoint,
            componentValueTextAttributes,
            .center,
            .center
          )
          shape.add (componentValueShape)
        }
      //--
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

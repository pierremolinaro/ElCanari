//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_AutoLayoutPackageDocument_addSlavePadButtonImage (
       _ prefs_frontSidePadColor : NSColor
) -> NSImage {
//--- START OF USER ZONE 2
          let temporaryObject = PackageSlavePad (nil)
          if let displayShape = temporaryObject.objectDisplay {
            let textAttributes : [NSAttributedString.Key : Any] = [
              NSAttributedString.Key.font : NSFont.systemFont (ofSize: NSFont.smallSystemFontSize),
              NSAttributedString.Key.foregroundColor : prefs_frontSidePadColor
            ]
            let s = "( )"
            var shape = EBShape (text: s, NSPoint (x: 0.5, y: 0.0), textAttributes, .center, .center)
            shape.add (displayShape)
            let r = shape.boundingBox
            if !r.isEmpty {
              return buildPDFimage (frame: r, shape: shape)
            }else{
              return NSImage (named: NSImage.statusPartiallyAvailableName)!
            }
          }else{
            return NSImage (named: NSImage.statusPartiallyAvailableName)!
          }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_AutoLayoutSymbolDocument_addOvalButtonImage (
       _ prefs_symbolColor : NSColor
) -> NSImage {
//--- START OF USER ZONE 2
        let temporaryObject = SymbolOval (nil)
        if let displayShape = temporaryObject.objectDisplay {
          let r = displayShape.boundingBox
          if !r.isEmpty {
            return buildPDFimage (frame: r.insetBy(dx: -2.0, dy: -2.0), shape: displayShape)
          }else{
            return NSImage (named: NSImage.statusPartiallyAvailableName)!
          }
        }else{
          return NSImage (named: NSImage.statusPartiallyAvailableName)!
        }//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------

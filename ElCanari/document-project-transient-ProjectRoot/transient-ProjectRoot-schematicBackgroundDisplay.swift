//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ProjectRoot_schematicBackgroundDisplay (
       _ self_mSchematicTitle : String,                
       _ self_mSchematicVersion : String,              
       _ self_sheetGeometry : SchematicSheetGeometry,  
       _ self_mSelectedSheet_mSheetTitle : String?,    
       _ self_mSheets : [EBManagedObject_alloc_index_protocol],
       _ self_mSelectedSheet : EBManagedObject_alloc_index_protocol?,
       _ self_mSchematicDate : Date
) -> EBShape {
//--- START OF USER ZONE 2
        let textAttributes : [NSAttributedString.Key : Any] = [
          NSAttributedString.Key.font : NSFont.systemFont (ofSize: NSFont.smallSystemFontSize)
        ]
        let lineAttributes : [NSAttributedString.Key : Any] = [
          NSAttributedString.Key.font : NSFont.systemFont (ofSize: NSFont.smallSystemFontSize * 0.75)
        ]
        let LEFT_COLUMN  : CGFloat = 196.0
        let RIGHT_COLUMN : CGFloat =  32.0
        let LINE_HEIGHT  : CGFloat =  18.0
        let OFFSET       : CGFloat =  0.5
        var shape = EBShape ()
        let sheetWidth = canariUnitToCocoa (self_sheetGeometry.size.width) - 2.0
        let sheetHeight = canariUnitToCocoa (self_sheetGeometry.size.height) - 2.0
        let vMarks = self_sheetGeometry.verticalDivisions
        let hMarks = self_sheetGeometry.horizontalDivisions
      //---
        var filledBP = EBBezierPath (rect: NSRect (x: OFFSET, y: OFFSET, width: PAPER_GUTTER_WIDTH_COCOA_UNIT, height: sheetHeight))
        filledBP.appendRect (NSRect (x: OFFSET, y: sheetHeight - PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET, width: sheetWidth, height: PAPER_GUTTER_HEIGHT_COCOA_UNIT))
        filledBP.appendRect (NSRect (x: sheetWidth - PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: OFFSET, width: PAPER_GUTTER_WIDTH_COCOA_UNIT, height: sheetHeight))
        filledBP.appendRect (NSRect (x: OFFSET, y: OFFSET, width: sheetWidth, height: PAPER_GUTTER_HEIGHT_COCOA_UNIT))
        filledBP.appendRect (NSRect (x: sheetWidth - PAPER_GUTTER_WIDTH_COCOA_UNIT - LEFT_COLUMN - RIGHT_COLUMN + OFFSET, y: PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET, width: LEFT_COLUMN + RIGHT_COLUMN, height: LINE_HEIGHT * 3.0))
        shape.add (filled: [filledBP], .white)
      //---
        var bp = EBBezierPath (rect: NSRect (x: OFFSET, y: OFFSET, width: sheetWidth, height: sheetHeight))
        bp.appendRect (NSRect (x: PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET, width: sheetWidth - PAPER_GUTTER_WIDTH_COCOA_UNIT * 2.0, height: sheetHeight - PAPER_GUTTER_HEIGHT_COCOA_UNIT * 2.0))
        bp.move (to: NSPoint (x: sheetWidth - LEFT_COLUMN - RIGHT_COLUMN - PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET))
        bp.relativeLine (to: NSPoint (x: 0.0, y: LINE_HEIGHT * 3.0))
        bp.relativeLine (to: NSPoint (x: LEFT_COLUMN + RIGHT_COLUMN, y: 0.0))
        bp.move (to: NSPoint (x: sheetWidth - LEFT_COLUMN - RIGHT_COLUMN - PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: LINE_HEIGHT + PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET))
        bp.relativeLine (to: NSPoint (x: LEFT_COLUMN + RIGHT_COLUMN, y: 0.0))
        bp.move (to: NSPoint (x: sheetWidth - LEFT_COLUMN - RIGHT_COLUMN - PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: LINE_HEIGHT * 2.0 + PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET))
        bp.relativeLine (to: NSPoint (x: LEFT_COLUMN + RIGHT_COLUMN, y: 0.0))
        bp.move (to: NSPoint (x: sheetWidth - RIGHT_COLUMN - PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: LINE_HEIGHT + PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET))
        bp.relativeLine (to: NSPoint (x: 0.0, y: LINE_HEIGHT * 2.0))
     //--- Draw vertical marks
       let vIncrement = (sheetHeight - PAPER_GUTTER_HEIGHT_COCOA_UNIT * 2.0) / CGFloat (vMarks)
       var p = NSPoint (x: PAPER_GUTTER_WIDTH_COCOA_UNIT * 0.5 + OFFSET, y: PAPER_GUTTER_HEIGHT_COCOA_UNIT + vIncrement * 0.5 + OFFSET)
       for mark in 0 ..< vMarks {
         shape.add (text: "\(mark)", p, lineAttributes, .center, .center)
         p.y += vIncrement
       }
       p = NSPoint (x: sheetWidth - PAPER_GUTTER_WIDTH_COCOA_UNIT * 0.5 + OFFSET, y: PAPER_GUTTER_HEIGHT_COCOA_UNIT + vIncrement * 0.5 + OFFSET)
       for mark in 0 ..< vMarks {
         shape.add (text: "\(mark)", p, lineAttributes, .center, .center)
         p.y += vIncrement
       }
     //--- Draw horizontal marks
       let hIncrement = (sheetWidth - PAPER_GUTTER_WIDTH_COCOA_UNIT * 2.0) / CGFloat (hMarks)
       p = NSPoint (x: PAPER_GUTTER_WIDTH_COCOA_UNIT + hIncrement / 2.0 + OFFSET, y: PAPER_GUTTER_HEIGHT_COCOA_UNIT * 0.5 + OFFSET)
       for mark in 0 ..< hMarks {
         let pointCode = UnicodeScalar (mark + 0x41)! // "A", "B", …
         shape.add (text: "\(pointCode)", p, lineAttributes, .center, .center)
         p.x += hIncrement
       }
       p = NSPoint (x: PAPER_GUTTER_WIDTH_COCOA_UNIT + hIncrement / 2.0 + OFFSET, y: sheetHeight - PAPER_GUTTER_HEIGHT_COCOA_UNIT * 0.5 + OFFSET)
       for mark in 0 ..< hMarks {
         let pointCode = UnicodeScalar (mark + 0x41)! // "A", "B", …
         shape.add (text: "\(pointCode)", p, lineAttributes, .center, .center)
         p.x += hIncrement
       }
    //--- Draw vertical separators
      p = NSPoint (x: OFFSET, y: PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET)
      for _ in 0 ... vMarks {
        bp.move (to: p)
        bp.relativeLine (to: NSPoint (x: PAPER_GUTTER_WIDTH_COCOA_UNIT, y: 0.0))
        bp.relativeMove (to: NSPoint (x: sheetWidth - 2.0 * PAPER_GUTTER_WIDTH_COCOA_UNIT, y: 0.0))
        bp.relativeLine (to: NSPoint (x: PAPER_GUTTER_WIDTH_COCOA_UNIT, y: 0.0))
        p.y += vIncrement
      }
    //--- Draw horizontal separators
      p = NSPoint (x: PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: OFFSET)
      for _ in 0 ... hMarks {
        bp.move (to: p)
        bp.relativeLine (to: NSPoint (x: 0.0, y: PAPER_GUTTER_HEIGHT_COCOA_UNIT))
        bp.relativeMove (to: NSPoint (x: 0.0, y: sheetHeight - 2.0 * PAPER_GUTTER_HEIGHT_COCOA_UNIT))
        bp.relativeLine (to: NSPoint (x: 0.0, y: PAPER_GUTTER_HEIGHT_COCOA_UNIT))
        p.x += hIncrement
      }
    //---
      bp.lineWidth = 1.0
      bp.lineCapStyle = .round
      bp.lineJoinStyle = .round
      shape.add (stroke: [bp], .black)
     //--- Schematics Title
        p = NSPoint (x: sheetWidth - RIGHT_COLUMN - LEFT_COLUMN / 2.0 - PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: LINE_HEIGHT * 2.5 + PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET)
        shape.add (text: self_mSchematicTitle, p, textAttributes, .center, .center)
     //--- Version
        p = NSPoint (x: sheetWidth - RIGHT_COLUMN / 2.0 - PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: LINE_HEIGHT * 2.5 + PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET)
        shape.add (text: self_mSchematicVersion, p, textAttributes, .center, .center)
     //--- Sheet Title
        p = NSPoint (x: sheetWidth - RIGHT_COLUMN - LEFT_COLUMN / 2.0 - PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: LINE_HEIGHT * 1.5 + PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET)
        shape.add (text: self_mSelectedSheet_mSheetTitle ?? "—", p, textAttributes, .center, .center)
     //--- Date
        let dateFormatter = DateFormatter ()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        p = NSPoint (x: sheetWidth - (LEFT_COLUMN + RIGHT_COLUMN) / 2.0 - PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: LINE_HEIGHT * 0.5 + PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET)
        shape.add (text: dateFormatter.string (from: self_mSchematicDate), p, textAttributes, .center, .center)
     //--- Sheet index
        var s = "?"
        if let selectedSheetIndex = self_mSelectedSheet?.ebObjectIndex {
          var idx = 1
          for sheet in self_mSheets {
            if sheet.ebObjectIndex == selectedSheetIndex {
              s = "\(idx)"
            }
            idx += 1
          }
        }
        p = NSPoint (x: sheetWidth - RIGHT_COLUMN / 2.0 - PAPER_GUTTER_WIDTH_COCOA_UNIT + OFFSET, y: LINE_HEIGHT * 1.5 + PAPER_GUTTER_HEIGHT_COCOA_UNIT + OFFSET)
        shape.add (text: s + "/\(self_mSheets.count)", p, textAttributes, .center, .center)
    //----
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

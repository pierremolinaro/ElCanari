//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_schematicsBackgroundDisplay (
       _ self_mSchematicTitle : String,                 
       _ self_mSchematicVersion : String,               
       _ self_mSchematicSheetOrientation : SchematicsSheetOrientation,
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
        let MARGIN       : CGFloat =  13.0
        let OFFSET       : CGFloat =  0.5
        let shape = EBShape ()
        let A4Height : CGFloat
        let A4Width  : CGFloat
        let hMarks : Int
        let vMarks : Int
        switch self_mSchematicSheetOrientation {
        case .horizontal :
           A4Height = A4MinSize - SCHEMATICS_TOP_MARGIN - SCHEMATICS_BOTTOM_MARGIN - 2.0
           A4Width  = A4MaxSize - SCHEMATICS_LEFT_MARGIN - SCHEMATICS_RIGHT_MARGIN - 2.0
           hMarks = 8
           vMarks = 6
        case .vertical :
           A4Height = A4MaxSize - SCHEMATICS_TOP_MARGIN - SCHEMATICS_BOTTOM_MARGIN - 2.0
           A4Width  = A4MinSize - SCHEMATICS_LEFT_MARGIN - SCHEMATICS_RIGHT_MARGIN - 2.0
           hMarks = 6
           vMarks = 8
        }
      //---
        let filledBP = NSBezierPath (rect: NSRect (x: OFFSET, y: OFFSET, width: MARGIN, height: A4Height))
        filledBP.appendRect (NSRect (x: OFFSET, y: A4Height - MARGIN + OFFSET, width: A4Width, height: MARGIN))
        filledBP.appendRect (NSRect (x: A4Width - MARGIN + OFFSET, y: OFFSET, width: MARGIN, height: A4Height))
        filledBP.appendRect (NSRect (x: OFFSET, y: OFFSET, width: A4Width, height: MARGIN))
        filledBP.appendRect (NSRect (x: A4Width - MARGIN - LEFT_COLUMN - RIGHT_COLUMN + OFFSET, y: MARGIN + OFFSET, width: LEFT_COLUMN + RIGHT_COLUMN, height: LINE_HEIGHT * 3.0))
        shape.append (EBFilledBezierPathShape ([filledBP], .white))
      //---
        let bp = NSBezierPath (rect: NSRect (x: OFFSET, y: OFFSET, width: A4Width, height: A4Height))
        bp.appendRect (NSRect (x: MARGIN + OFFSET, y: MARGIN + OFFSET, width: A4Width - MARGIN * 2.0, height: A4Height - MARGIN * 2.0))
        bp.move (to: NSPoint (x: A4Width - LEFT_COLUMN - RIGHT_COLUMN - MARGIN + OFFSET, y: MARGIN + OFFSET))
        bp.relativeLine (to: NSPoint (x: 0.0, y: LINE_HEIGHT * 3.0))
        bp.relativeLine (to: NSPoint (x: LEFT_COLUMN + RIGHT_COLUMN, y: 0.0))
        bp.move (to: NSPoint (x: A4Width - LEFT_COLUMN - RIGHT_COLUMN - MARGIN + OFFSET, y: LINE_HEIGHT + MARGIN + OFFSET))
        bp.relativeLine (to: NSPoint (x: LEFT_COLUMN + RIGHT_COLUMN, y: 0.0))
        bp.move (to: NSPoint (x: A4Width - LEFT_COLUMN - RIGHT_COLUMN - MARGIN + OFFSET, y: LINE_HEIGHT * 2.0 + MARGIN + OFFSET))
        bp.relativeLine (to: NSPoint (x: LEFT_COLUMN + RIGHT_COLUMN, y: 0.0))
        bp.move (to: NSPoint (x: A4Width - RIGHT_COLUMN - MARGIN + OFFSET, y: LINE_HEIGHT + MARGIN + OFFSET))
        bp.relativeLine (to: NSPoint (x: 0.0, y: LINE_HEIGHT * 2.0))
     //--- Draw vertical marks
       let vIncrement = (A4Height - MARGIN * 2.0) / CGFloat (vMarks)
       var p = NSPoint (x: MARGIN * 0.5 + OFFSET, y: MARGIN + vIncrement * 0.5 + OFFSET)
       for mark in 0 ..< vMarks {
         shape.append (EBTextShape ("\(mark)", p, lineAttributes, .center, .center))
         p.y += vIncrement
       }
       p = NSPoint (x: A4Width - MARGIN * 0.5 + OFFSET, y: MARGIN + vIncrement * 0.5 + OFFSET)
       for mark in 0 ..< vMarks {
         shape.append (EBTextShape ("\(mark)", p, lineAttributes, .center, .center))
         p.y += vIncrement
       }
     //--- Draw horizontal marks
       let hIncrement = (A4Width - MARGIN * 2.0) / CGFloat (hMarks)
       p = NSPoint (x: MARGIN + hIncrement / 2.0 + OFFSET, y: MARGIN * 0.5 + OFFSET)
       for mark in 0 ..< hMarks {
         let pointCode = UnicodeScalar (mark + 0x41)! // "A", "B", …
         shape.append (EBTextShape ("\(pointCode)", p, lineAttributes, .center, .center))
         p.x += hIncrement
       }
       p = NSPoint (x: MARGIN + hIncrement / 2.0 + OFFSET, y: A4Height - MARGIN * 0.5 + OFFSET)
       for mark in 0 ..< hMarks {
         let pointCode = UnicodeScalar (mark + 0x41)! // "A", "B", …
         shape.append (EBTextShape ("\(pointCode)", p, lineAttributes, .center, .center))
         p.x += hIncrement
       }
    //--- Draw vertical separators
      p = NSPoint (x: OFFSET, y: MARGIN + OFFSET)
      for _ in 0 ... vMarks {
        bp.move (to: p)
        bp.relativeLine (to: NSPoint (x: MARGIN, y: 0.0))
        bp.relativeMove (to: NSPoint (x: A4Width - 2.0 * MARGIN, y:0.0))
        bp.relativeLine (to: NSPoint (x: MARGIN, y: 0.0))
        p.y += vIncrement
      }
    //--- Draw horizontal separators
      p = NSPoint (x: MARGIN + OFFSET, y: OFFSET)
      for _ in 0 ... hMarks {
        bp.move (to: p)
        bp.relativeLine (to: NSPoint (x: 0.0, y: MARGIN))
        bp.relativeMove (to: NSPoint (x: 0.0, y: A4Height - 2.0 * MARGIN))
        bp.relativeLine (to: NSPoint (x: 0.0, y: MARGIN))
        p.x += hIncrement
      }
    //---
      bp.lineWidth = 1.0
      bp.lineCapStyle = .round
      bp.lineJoinStyle = .round
      shape.append (EBStrokeBezierPathShape ([bp], .black))
     //--- Schematics Title
        p = NSPoint (x: A4Width - RIGHT_COLUMN - LEFT_COLUMN / 2.0 - MARGIN + OFFSET, y: LINE_HEIGHT * 2.5 + MARGIN + OFFSET)
        shape.append (EBTextShape (self_mSchematicTitle, p, textAttributes, .center, .center))
     //--- Version
        p = NSPoint (x: A4Width - RIGHT_COLUMN / 2.0 - MARGIN + OFFSET, y: LINE_HEIGHT * 2.5 + MARGIN + OFFSET)
        shape.append (EBTextShape (self_mSchematicVersion, p, textAttributes, .center, .center))
     //--- Sheet Title
        p = NSPoint (x: A4Width - RIGHT_COLUMN - LEFT_COLUMN / 2.0 - MARGIN + OFFSET, y: LINE_HEIGHT * 1.5 + MARGIN + OFFSET)
        shape.append (EBTextShape (self_mSelectedSheet_mSheetTitle ?? "—", p, textAttributes, .center, .center))
     //--- Date
        let dateFormatter = DateFormatter ()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        p = NSPoint (x: A4Width - (LEFT_COLUMN + RIGHT_COLUMN) / 2.0 - MARGIN + OFFSET, y: LINE_HEIGHT * 0.5 + MARGIN + OFFSET)
        shape.append (EBTextShape (dateFormatter.string (from: self_mSchematicDate), p, textAttributes, .center, .center))
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
        p = NSPoint (x: A4Width - RIGHT_COLUMN / 2.0 - MARGIN + OFFSET, y: LINE_HEIGHT * 1.5 + MARGIN + OFFSET)
        shape.append (EBTextShape (s + "/\(self_mSheets.count)", p, textAttributes, .center, .center))
    //----
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

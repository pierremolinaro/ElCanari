//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_schematicsBackgroundDisplay (
       _ self_mSchematicsTitle : String,                
       _ self_mSchematicsVersion : String,              
       _ self_mSchematicsSheetOrientation : SchematicsSheetOrientation,
       _ self_mSelectedSheet_mSheetTitle : String?,     
       _ self_mSchematicsDate : Date
) -> EBShape {
//--- START OF USER ZONE 2
        let LEFT_COLUMN  : CGFloat = 250.0
        let RIGHT_COLUMN : CGFloat =  40.0
        let LINE_HEIGHT  : CGFloat =  30.0
        let shape = EBShape ()
        let A4Height : CGFloat
        let A4Width  : CGFloat
        switch self_mSchematicsSheetOrientation {
        case .horizontal :
           A4Height = 595.0
           A4Width  = 850.0
        case .vertical :
           A4Height = 850.0
           A4Width  = 595.0
        }
        let bp = NSBezierPath (rect: NSRect (x: 0.0, y: 0.0, width: A4Width, height: A4Height))
        bp.move (to: NSPoint (x: A4Width - LEFT_COLUMN - RIGHT_COLUMN, y: 0.0))
        bp.relativeLine (to: NSPoint (x: 0.0, y: LINE_HEIGHT * 3.0))
        bp.relativeLine (to: NSPoint (x: LEFT_COLUMN + RIGHT_COLUMN, y: 0.0))
        bp.move (to: NSPoint (x: A4Width - LEFT_COLUMN - RIGHT_COLUMN, y: LINE_HEIGHT))
        bp.relativeLine (to: NSPoint (x: LEFT_COLUMN + RIGHT_COLUMN, y: 0.0))
        bp.move (to: NSPoint (x: A4Width - LEFT_COLUMN - RIGHT_COLUMN, y: LINE_HEIGHT * 2.0))
        bp.relativeLine (to: NSPoint (x: LEFT_COLUMN + RIGHT_COLUMN, y: 0.0))
        bp.move (to: NSPoint (x: A4Width - RIGHT_COLUMN, y: LINE_HEIGHT))
        bp.relativeLine (to: NSPoint (x: 0.0, y: LINE_HEIGHT * 2.0))
        bp.lineWidth = 2.0
        shape.append (EBStrokeBezierPathShape ([bp], .black))
        let textAttributes : [NSAttributedString.Key : Any] = [
          NSAttributedString.Key.font : NSFont.boldSystemFont (ofSize: 0.0)
        ]
     //--- Schematics Title
        var p = NSPoint (x: A4Width - RIGHT_COLUMN - LEFT_COLUMN / 2.0, y: LINE_HEIGHT * 2.5)
        shape.append (EBTextShape (self_mSchematicsTitle, p, textAttributes, .center, .center))
     //--- Version
        p = NSPoint (x: A4Width - RIGHT_COLUMN / 2.0, y: LINE_HEIGHT * 2.5)
        shape.append (EBTextShape (self_mSchematicsVersion, p, textAttributes, .center, .center))
     //--- Sheet Title
        p = NSPoint (x: A4Width - RIGHT_COLUMN - LEFT_COLUMN / 2.0, y: LINE_HEIGHT * 1.5)
        shape.append (EBTextShape (self_mSelectedSheet_mSheetTitle ?? "—", p, textAttributes, .center, .center))
     //--- Date
        let dateFormatter = DateFormatter ()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        let s = dateFormatter.string (from: self_mSchematicsDate)
        p = NSPoint (x: A4Width - (LEFT_COLUMN + RIGHT_COLUMN) / 2.0, y: LINE_HEIGHT * 0.5)
        shape.append (EBTextShape (s, p, textAttributes, .center, .center))
     //---
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

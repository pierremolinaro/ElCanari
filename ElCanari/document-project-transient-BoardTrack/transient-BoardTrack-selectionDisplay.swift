//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_BoardTrack_selectionDisplay (
       _ self_mConnectorP1_location : CanariPoint?,
       _ self_mConnectorP1_connectedToComponent : Bool?,
       _ self_mConnectorP2_location : CanariPoint?,
       _ self_mConnectorP2_connectedToComponent : Bool?,
       _ prefs_frontSideLayoutColorForBoard : NSColor,
       _ prefs_backSideLayoutColorForBoard : NSColor,
       _ self_mSide : TrackSide,            
       _ self_actualTrackWidth : Int
) -> EBShape {
//--- START OF USER ZONE 2
      var shape = EBShape ()
      if let p1 = self_mConnectorP1_location?.cocoaPoint, let p2 = self_mConnectorP2_location?.cocoaPoint {
      //--- Hilite
        let color : NSColor
        switch self_mSide {
        case .front :
          color = prefs_frontSideLayoutColorForBoard
        case .back :
          color = prefs_backSideLayoutColorForBoard
        }
        var bp = EBBezierPath ()
        bp.lineWidth = canariUnitToCocoa (self_actualTrackWidth) + 1.0
        bp.lineCapStyle = .round
        bp.lineJoinStyle = .round
        bp.move (to: p1)
        bp.line (to: p2)
        shape.add (stroke: [bp], .cyan)
        bp.lineWidth = canariUnitToCocoa (self_actualTrackWidth)
        shape.add (stroke: [bp], color)
      //--- Knobs
        if let connected = self_mConnectorP1_connectedToComponent, !connected {
          shape.add (knobAt: p1, knobIndex: BOARD_TRACK_P1, .diamond, 2.0)
        }
        if let connected = self_mConnectorP2_connectedToComponent, !connected {
          shape.add (knobAt: p2, knobIndex: BOARD_TRACK_P2, .diamond, 2.0)
        }
      }
      return shape
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------

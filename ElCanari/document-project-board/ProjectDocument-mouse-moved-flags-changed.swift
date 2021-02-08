//
//  ProjectDocument-mouse-moved-flags-changed.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 06/09/2020.
//
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension CustomizedProjectDocument {

  //····················································································································

  internal func mouseMovedOrFlagsChangedInBoard (_ inUnalignedMouseLocation : NSPoint) {
    var shape : EBShape? = nil
    let newTrackSide : TrackSide = self.rootObject.mBoardSideForNewTrack
    let d = milsToCocoaUnit (CGFloat (self.rootObject.mControlKeyHiliteDiameter))
  //--- Option key ?
    if NSEvent.modifierFlags.contains (.option) {
      let connectorsUnderMouse = self.rootObject.connectors (at: inUnalignedMouseLocation.canariPoint, trackSide: newTrackSide)
      if connectorsUnderMouse.count == 1 {
        let connectorUnderMouse = connectorsUnderMouse [0]
        if let netName = connectorUnderMouse.netName () {
          let connectedConnectors = self.findAllConnectorsConnectedTo (connectorUnderMouse, trackSide: newTrackSide)
          var bpArray = [EBBezierPath] ()
          for object in self.rootObject.mBoardObjects {
            if let connector = object as? BoardConnector,
                  !connectedConnectors.contains (connector),
                  connector.netNameFromComponentPad == netName {
              connector.buildBezierPathArrayForHilitingOnOptionFlag (
                trackSide: newTrackSide,
                controlKeyHiliteDiameter: d,
                bezierPathArray: &bpArray
              )
            }
          }
          if bpArray.count > 0 {
            if shape == nil {
              shape = EBShape ()
            }
            shape?.add (filled: bpArray, NSColor.white)
//            ioHelperString = "Option: start a new track"
          }
        }
      }
    }
  //--- Control key ?
    if NSEvent.modifierFlags.contains (.control), !NSEvent.modifierFlags.contains (.shift), d > 0.0, let boardView = self.mBoardView?.mGraphicView {
      if boardView.frame.contains (inUnalignedMouseLocation) {
        let r = NSRect (
          x: inUnalignedMouseLocation.x - d / 2.0,
          y: inUnalignedMouseLocation.y - d / 2.0,
          width: d,
          height: d
        )
        var bp = EBBezierPath (ovalIn: r)
        bp.lineWidth = 1.0 / boardView.actualScale
        if shape == nil {
          shape = EBShape ()
        }
        shape?.add (filled: [bp], NSColor.lightGray.withAlphaComponent (0.2))
        shape?.add (stroke: [bp], NSColor.green)
      }
    }
  //---
    self.mBoardView?.mGraphicView.mOptionalFrontShape = shape
  }

  //····················································································································

  internal func findAllConnectorsConnectedTo (_ inConnector : BoardConnector,
                                              trackSide inTrackSide : TrackSide) -> [BoardConnector] {
    var connectorSet = Set ([inConnector])
    var exploreArray = [inConnector]
    while !exploreArray.isEmpty {
      let c = exploreArray.removeLast ()
      let tracks = c.mTracksP1 + c.mTracksP2
      for t in tracks {
        if let connector1 = t.mConnectorP1, !connectorSet.contains (connector1) {
          connectorSet.insert (connector1)
          exploreArray.append (connector1)
        }
        if let connector2 = t.mConnectorP2, !connectorSet.contains (connector2) {
          connectorSet.insert (connector2)
          exploreArray.append (connector2)
        }
      }
    }
    return Array (connectorSet)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

extension BoardConnector {

  //····················································································································

  func netName () -> String? {
    if let name = self.netNameFromComponentPad, name != "—" {
      return name
    }else if let name = self.netNameFromTracks, name != "—" {
      return name
    }else{
      return nil
    }
  }

  //····················································································································

  func buildBezierPathArrayForHilitingOnOptionFlag (trackSide inTrackSide : TrackSide,
                                                    controlKeyHiliteDiameter inDiameter : CGFloat,
                                                    bezierPathArray ioArray : inout [EBBezierPath]) {
    if let padCenter = self.location, let connectorSide = self.side {
      let accepts : Bool
      switch connectorSide {
      case .front :
        accepts = inTrackSide == .front
      case .back :
        accepts = inTrackSide == .back
      case .both :
        accepts = true
      }
      if accepts {
        let r = NSRect (
          x: canariUnitToCocoa (padCenter.x) - inDiameter / 2.0,
          y: canariUnitToCocoa (padCenter.y) - inDiameter / 2.0,
          width: inDiameter,
          height: inDiameter
        )
        ioArray.append (EBBezierPath (ovalIn: r))
      }
    }
  }

  //····················································································································

}
//----------------------------------------------------------------------------------------------------------------------

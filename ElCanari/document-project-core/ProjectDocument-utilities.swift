//
//  ProjectDocument-utilities.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 29/04/2019.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let SCHEMATIC_GRID_IN_MILS = 50
let SCHEMATIC_GRID_IN_CANARI_UNIT = milsToCanariUnit (SCHEMATIC_GRID_IN_MILS)
let SCHEMATIC_GRID_IN_COCOA_UNIT = milsToCocoaUnit (CGFloat (SCHEMATIC_GRID_IN_MILS))

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let NC_DISTANCE_IN_COCOA_UNIT = milsToCocoaUnit (50.0)
let NC_TITLE = "nc"

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let CONNECTED_POINT_DIAMETER = milsToCocoaUnit (50.0)

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let SCHEMATIC_KNOB_SIZE : CGFloat = 4.0
let SCHEMATIC_HILITE_WIDTH : CGFloat = 0.5

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let BOARD_KNOB_SIZE : CGFloat = 4.0
let BOARD_HILITE_WIDTH : CGFloat = 0.5

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let SCHEMATIC_LABEL_SIZE : CGFloat = 3.6

let WIRE_DEFAULT_SIZE_ON_DRAG_AND_DROP = milsToCanariUnit (400)

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct SymbolInProjectIdentifier : Hashable {
  let symbolInstanceName : String
  let symbolTypeName : String
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct PinSymbolInProjectIdentifier : Hashable {
  let symbol : SymbolInProjectIdentifier
  let pinName : String
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct ComponentPinDescriptor : Hashable {
  let pinIdentifier : PinSymbolInProjectIdentifier
  let pinLocation : CanariPoint
  let shape : EBShape
  let netName : String // Empty string if no net
  let padName : String
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct ComponentSymbolInfo : Hashable {
  let filledBezierPath : NSBezierPath
  let strokeBezierPath : NSBezierPath
  let center : CanariPoint
  let pins : [ComponentPinDescriptor]
  let componentName : String
  let componentValue : String
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct DeviceSymbolInfo : Hashable {
  let filledBezierPath : NSBezierPath
  let strokeBezierPath : NSBezierPath
  let center : CanariPoint
  let assignments : [PinPadAssignmentInProject]
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias SymbolInProjectIdentifierArray = [SymbolInProjectIdentifier]

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias DeviceSymbolDictionary = [SymbolInProjectIdentifier : DeviceSymbolInfo]

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct PinInProjectDescriptor : Hashable {
  let pinName : String
  let symbol : SymbolInProjectIdentifier
  let pinXY : CanariPoint

  let nameXY : CanariPoint
  let nameHorizontalAlignment : HorizontalAlignment
  let pinNameIsDisplayedInSchematics : Bool

  let numberXY : CanariPoint
  let numberHorizontalAlignment : HorizontalAlignment
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct PinPadAssignmentInProject : Hashable {
  let padName : String
  let pin : PinInProjectDescriptor? // if nil, pad is nc
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias NetInfoArray = [NetInfo]

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct NetInfo : Hashable {
  let netIdentifier : Int
  let netName : String
  let netClassName : String
  let points : NetInfoPointArray
  let subnets : StatusStringArray
  let subnetsHaveWarning : Bool
  let pinCount : Int
  let labelCount : Int
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct NetInfoPoint : Hashable {
  let pin : String?
  let labels : StringArray
  let wires : Set <Int>
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias NetInfoPointArray = [NetInfoPoint]

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct SchematicPointStatus : Hashable {
  let location : CanariPoint
  let connected : Bool
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct SchematicSheetDescriptor : Hashable {
  let size : CanariSize // Canari Unit
  let horizontalDivisions : Int
  let verticalDivisions : Int
  let sheetIndex : Int

  func coordinates (ofPoint inPoint : CanariPoint) -> String {
    return ""
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias IntArray = [Int]

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func + (lhs : QuadrantRotation, rhs : QuadrantRotation) -> QuadrantRotation {
  let v = (lhs.rawValue + rhs.rawValue) % 4
  return QuadrantRotation (rawValue: v)!
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension QuadrantRotation {

  //····················································································································

  mutating func rotateClockwise () {
    switch self {
    case .rotation0 :
      self = .rotation270
    case .rotation90 :
      self = .rotation0
    case .rotation180 :
      self = .rotation90
    case .rotation270 :
      self = .rotation180
    }
  }

  //····················································································································

  mutating func rotateCounterClockwise () {
    switch self {
    case .rotation0 :
      self = .rotation90
    case .rotation90 :
      self = .rotation180
    case .rotation180 :
      self = .rotation270
    case .rotation270 :
      self = .rotation0
    }
  }
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct BorderCurveDescriptor : Hashable {

  //····················································································································

  let p1 : CanariPoint
  let p2 : CanariPoint
  let cp1 : CanariPoint
  let cp2 : CanariPoint
  let shape : BorderCurveShape

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct BoardCharSegment : Hashable {
  let x1 : Int8
  let y1 : Int8
  let x2 : Int8
  let y2 : Int8
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct BoardFontCharacter : Hashable {
  let advancement : Int
  let segments : [BoardCharSegment]

  func ebHashValue () -> UInt32 {
    var crc : UInt32 = 0
    crc.accumulateUInt32 (advancement.ebHashValue ())
    for segment in segments {
      crc.accumulateInt8 (segment.x1)
      crc.accumulateInt8 (segment.y1)
      crc.accumulateInt8 (segment.x2)
      crc.accumulateInt8 (segment.y2)
    }
    return crc
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias BoardFontDictionary = [UInt32 : BoardFontCharacter]

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct BoardFontDescriptor : Hashable {
  let nominalSize : Int
  let dictionary :  BoardFontDictionary

  func ebHashValue () -> UInt32 {
    var crc : UInt32 = 0
    crc.accumulateUInt32 (nominalSize.ebHashValue ())
    for key in dictionary.keys.sorted () {
      crc.accumulateUInt32 (key.ebHashValue ())
      crc.accumulateUInt32 (dictionary [key]!.ebHashValue ())
    }
    return crc
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias PackageMasterPadDictionary = [String : MasterPadDescriptor]

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Dictionary where Key == String, Value == MasterPadDescriptor {

  //····················································································································

  var padsRect : CanariRect {
    var points = [CanariPoint] ()
    for (_, masterPadDescriptor) in self {
      points.append (masterPadDescriptor.center)
      for slavePadDescriptor in masterPadDescriptor.slavePads {
        points.append (slavePadDescriptor.center)
      }
    }
    return CanariRect (points: points)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct MasterPadDescriptor : Hashable {

  //····················································································································

  let name : String
  let center : CanariPoint
  let padSize : CanariSize
  let holeSize : CanariSize
  let shape : PadShape
  let style : PadStyle
  let slavePads : [SlavePadDescriptor]

  //····················································································································

  func bezierPath (index inIndex : Int) -> EBBezierPath {
    if inIndex == 0 {
      return EBBezierPath.pad (
        centerX: self.center.x,
        centerY: self.center.y,
        width: self.padSize.width,
        height: self.padSize.height,
        shape: self.shape
      )
    }else{
      let slavePad = self.slavePads [inIndex - 1]
      return EBBezierPath.pad (
        centerX: slavePad.center.x,
        centerY: slavePad.center.y,
        width: slavePad.padSize.width,
        height: slavePad.padSize.height,
        shape: slavePad.shape
      )
    }
  }

  //····················································································································

  func accumulatePadBezierPathes (into ioShape : inout EBShape,
                                  side : ComponentSide,
                                  padDisplayAttributes : [NSAttributedString.Key : Any]?,
                                  padNumberAF : AffineTransform,
                                  frontPadColor : NSColor?,
                                  backPadColor : NSColor?,
                                  padNetDictionary inPadNetDictionary : [String : String]) {
    let center = self.center.cocoaPoint
    let padSize = self.padSize.cocoaSize
    let rPad = NSRect (x: center.x - padSize.width / 2.0, y: center.y - padSize.height / 2.0, width: padSize.width, height: padSize.height)
    var bp : EBBezierPath
    switch self.shape {
    case .rect :
      bp = EBBezierPath (rect: rPad)
    case .round :
      bp = EBBezierPath (oblongInRect: rPad)
    case .octo :
      bp = EBBezierPath (octogonInRect: rPad)
    }
    switch self.style {
    case .traversing :
      let holeSize = self.holeSize.cocoaSize
      let rHole = NSRect (x: center.x - holeSize.width / 2.0, y: center.y - holeSize.height / 2.0, width: holeSize.width, height: holeSize.height)
      bp.appendOblong (in: rHole)
      bp.windingRule = .evenOdd
      if let color = frontPadColor {
        ioShape.add (filled: [bp], color)
      }else if let color = backPadColor {
        ioShape.add (filled: [bp], color)
      }
    case .surface :
      switch side {
      case .front :
        if let color = frontPadColor {
          ioShape.add (filled: [bp], color)
        }
      case .back :
        if let color = backPadColor {
          ioShape.add (filled: [bp], color)
        }
      }
    }
  //--- Pad names
    if let textAttributes = padDisplayAttributes {
      var af = AffineTransform ()
      af.translate (x: center.x, y: center.y)
      af.prepend (padNumberAF)
      ioShape.add (EBShape (text: self.name, NSPoint (), textAttributes, .center, .center).transformed (by: af))
    }
  //--- Tool tip
    ioShape.addToolTip (rPad, inPadNetDictionary [self.name] ?? "No net")
  //--- Slave pads
    for pad in slavePads {
      pad.accumulatePadBezierPathes (
        into: &ioShape,
        side: side,
        name: "(" + self.name + ")",
        padDisplayAttributes: padDisplayAttributes,
        padNumberAF: padNumberAF,
        frontPadColor: frontPadColor,
        backPadColor: backPadColor
      )
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct SlavePadDescriptor : Hashable {

  //····················································································································

  let center : CanariPoint
  let padSize : CanariSize
  let holeSize : CanariSize
  let shape : PadShape
  let style : SlavePadStyle

  //····················································································································

  func accumulatePadBezierPathes (into ioShape : inout EBShape,
                                  side : ComponentSide,
                                  name : String,
                                  padDisplayAttributes : [NSAttributedString.Key : Any]?,
                                  padNumberAF : AffineTransform,
                                  frontPadColor : NSColor?,
                                  backPadColor : NSColor?) {
    let center = self.center.cocoaPoint
    let padSize = self.padSize.cocoaSize
    let rPad = NSRect (x: center.x - padSize.width / 2.0, y: center.y - padSize.height / 2.0, width: padSize.width, height: padSize.height)
    var bp : EBBezierPath
    switch self.shape {
    case .rect :
      bp = EBBezierPath (rect: rPad)
    case .round :
      bp = EBBezierPath (oblongInRect: rPad)
    case .octo :
      bp = EBBezierPath (octogonInRect: rPad)
    }
    switch self.style {
    case .traversing :
      let holeSize = self.holeSize.cocoaSize
      let rHole = NSRect (x: center.x - holeSize.width / 2.0, y: center.y - holeSize.height / 2.0, width: holeSize.width, height: holeSize.height)
      bp.appendOblong (in: rHole)
      bp.windingRule = .evenOdd
      if let color = frontPadColor {
        ioShape.add (filled: [bp], color)
      }else if let color = backPadColor {
        ioShape.add (filled: [bp], color)
      }
    case .componentSide :
      switch side {
      case .front :
        if let color = frontPadColor {
          ioShape.add (filled: [bp], color)
        }
      case .back :
        if let color = backPadColor {
          ioShape.add (filled: [bp], color)
        }
      }
    case .oppositeSide :
      switch side {
      case .front :
        if let color = backPadColor {
          ioShape.add (filled: [bp], color)
        }
      case .back :
        if let color = frontPadColor {
          ioShape.add (filled: [bp], color)
        }
      }
    }
  //--- Pad name
    if let textAttributes = padDisplayAttributes {
      var af = AffineTransform ()
      af.translate (x: center.x, y: center.y)
      af.prepend (padNumberAF)
      ioShape.add (EBShape (text: name, NSPoint (), textAttributes, .center, .center).transformed (by: af))
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct PadLocationAndSide : Hashable {
  let location : NSPoint
  let side : ConnectorSide
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct ComponentPadDescriptor : Hashable {
   let padName : String
   let pads : [PadLocationAndSide] // Master pad (index 0), then slave pads (if any)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias ComponentPadDescriptorDictionary = [String : ComponentPadDescriptor] // Pad name

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias PadNetDictionary = [String : String] // Pad name, associated net

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

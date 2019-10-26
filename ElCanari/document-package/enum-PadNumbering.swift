//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum PadNumbering : Int, EnumPropertyProtocol {
  case noNumbering = 0
  case counterClock = 1
  case upRight = 2
  case upLeft = 3
  case downRight = 4
  case downLeft = 5
  case rightUp = 6
  case rightDown = 7
  case leftUp = 8
  case leftDown = 9


  //····················································································································

  init? (string : String) {
    switch string {
      case "noNumbering" : self = .noNumbering // 0
      case "counterClock" : self = .counterClock // 1
      case "upRight" : self = .upRight // 2
      case "upLeft" : self = .upLeft // 3
      case "downRight" : self = .downRight // 4
      case "downLeft" : self = .downLeft // 5
      case "rightUp" : self = .rightUp // 6
      case "rightDown" : self = .rightDown // 7
      case "leftUp" : self = .leftUp // 8
      case "leftDown" : self = .leftDown // 9
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .noNumbering : return "noNumbering" // 0
      case .counterClock : return "counterClock" // 1
      case .upRight : return "upRight" // 2
      case .upLeft : return "upLeft" // 3
      case .downRight : return "downRight" // 4
      case .downLeft : return "downLeft" // 5
      case .rightUp : return "rightUp" // 6
      case .rightDown : return "rightDown" // 7
      case .leftUp : return "leftUp" // 8
      case .leftDown : return "leftDown" // 9
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> PadNumbering? {
    if let v = PadNumbering (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> PadNumbering {
    var result = self
    let v : PadNumbering? = PadNumbering (rawValue:rawValue) ;
    if let unwrappedV = v {
      result = unwrappedV
    }
    return result
  }

  //····················································································································
  //  ValuePropertyProtocol
  //····················································································································

  func ebHashValue () -> UInt32 {
    return UInt32 (self.rawValue)
  }

  func convertToNSObject () -> NSObject {
    return NSNumber (value: self.rawValue)
  }

  static func convertFromNSObject (object : NSObject) -> PadNumbering {
    var result = PadNumbering.noNumbering
    if let number = object as? NSNumber, let v = PadNumbering (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    ioData.append (base62Encoded: self.rawValue)
  }
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias EBReadOnlyProperty_PadNumbering = EBReadOnlyEnumProperty <PadNumbering>
typealias EBTransientProperty_PadNumbering = EBTransientEnumProperty <PadNumbering>
typealias EBReadWriteProperty_PadNumbering = EBReadWriteEnumProperty <PadNumbering>
typealias EBStoredProperty_PadNumbering = EBStoredEnumProperty <PadNumbering>
typealias EBPropertyProxy_PadNumbering = EBPropertyEnumProxy <PadNumbering>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

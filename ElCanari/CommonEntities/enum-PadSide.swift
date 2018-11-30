//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum PadSide : Int, EnumPropertyProtocol {
  case traversing = 0
  case front = 1
  case back = 2


  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .traversing : return "traversing" // 0
      case .front : return "front" // 1
      case .back : return "back" // 2
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> PadSide? {
    if let v = PadSide (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> PadSide {
    var result = self
    let v : PadSide? = PadSide (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> PadSide {
    var result = PadSide.traversing
    if let number = object as? NSNumber, let v = PadSide (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias EBReadOnlyController_PadSide = EBReadOnlyEnumController <PadSide>

typealias EBReadOnlyProperty_PadSide = EBReadOnlyEnumProperty <PadSide>
typealias EBTransientProperty_PadSide = EBTransientEnumProperty <PadSide>
typealias EBReadWriteProperty_PadSide = EBReadWriteEnumProperty <PadSide>
typealias EBStoredProperty_PadSide = EBStoredEnumProperty <PadSide>
typealias EBPropertyProxy_PadSide = EBPropertyEnumProxy <PadSide>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

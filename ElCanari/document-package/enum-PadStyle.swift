//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum PadStyle : Int, EnumPropertyProtocol {
  case traversing = 0
  case surface = 1


  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .traversing : return "traversing" // 0
      case .surface : return "surface" // 1
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> PadStyle? {
    if let v = PadStyle (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> PadStyle {
    var result = self
    let v : PadStyle? = PadStyle (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> PadStyle {
    var result = PadStyle.traversing
    if let number = object as? NSNumber, let v = PadStyle (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias EBReadOnlyController_PadStyle = EBReadOnlyEnumController <PadStyle>

typealias EBReadOnlyProperty_PadStyle = EBReadOnlyEnumProperty <PadStyle>
typealias EBTransientProperty_PadStyle = EBTransientEnumProperty <PadStyle>
typealias EBReadWriteProperty_PadStyle = EBReadWriteEnumProperty <PadStyle>
typealias EBStoredProperty_PadStyle = EBStoredEnumProperty <PadStyle>
typealias EBPropertyProxy_PadStyle = EBPropertyEnumProxy <PadStyle>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

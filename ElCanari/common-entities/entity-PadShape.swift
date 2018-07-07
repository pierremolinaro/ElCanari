//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum PadShape : Int, ValuePropertyProtocol {
  case rectangular = 0
  case round = 1


  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .rectangular : return "rectangular" // 0
      case .round : return "round" // 1
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> PadShape {
    var result = self
    let v : PadShape? = PadShape (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> PadShape {
    var result = PadShape.rectangular
    if let number = object as? NSNumber, let v = PadShape (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias EBReadOnlyProperty_PadShape = EBReadOnlyValueProperty <PadShape>
typealias EBTransientProperty_PadShape = EBTransientValueProperty <PadShape>
typealias EBStoredProperty_PadShape = EBStoredValueProperty <PadShape>
typealias EBPropertyProxy_PadShape = EBPropertyValueProxy <PadShape>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum QuadrantRotation : Int, ValuePropertyProtocol {
  case rotation0 = 0
  case rotation90 = 1
  case rotation180 = 2
  case rotation270 = 3


  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .rotation0 : return "rotation0" // 0
      case .rotation90 : return "rotation90" // 1
      case .rotation180 : return "rotation180" // 2
      case .rotation270 : return "rotation270" // 3
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> QuadrantRotation {
    var result = self
    let v : QuadrantRotation? = QuadrantRotation (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> QuadrantRotation {
    var result = QuadrantRotation.rotation0
    if let number = object as? NSNumber, let v = QuadrantRotation (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias EBReadOnlyProperty_QuadrantRotation = EBReadOnlyValueProperty <QuadrantRotation>
typealias EBTransientProperty_QuadrantRotation = EBTransientValueProperty <QuadrantRotation>
typealias EBReadWriteProperty_QuadrantRotation = EBReadWriteValueProperty <QuadrantRotation>
typealias EBStoredProperty_QuadrantRotation = EBStoredValueProperty <QuadrantRotation>
typealias EBPropertyProxy_QuadrantRotation = EBPropertyValueProxy <QuadrantRotation>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

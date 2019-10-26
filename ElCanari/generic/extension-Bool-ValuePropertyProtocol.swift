//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    extension Bool : ValuePropertyProtocol
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Bool : ValuePropertyProtocol {

  //····················································································································

  func ebHashValue () -> UInt32 {
    var crc : UInt32 = 0
    crc.accumulateUInt8 (self ? 1 : 0)
    return crc
  }

  //····················································································································

  func convertToNSObject () -> NSObject {
    return NSNumber (value: self)
  }

  //····················································································································

  static func convertFromNSObject (object : NSObject) -> Bool {
    let number = object as! NSNumber
    return number.boolValue
  }

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    ioData.append (ascii: self ? .T : .F)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

public func < (left : Bool, right : Bool) -> Bool {
  return !left && right
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

public func > (left : Bool, right : Bool) -> Bool {
  return left && !right
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    extension UInt32 : ValuePropertyProtocol
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension UInt32 : ValuePropertyProtocol {

  //····················································································································

  func ebHashValue () -> UInt32 {
    return self
  }

  //····················································································································

  func convertToNSObject () -> NSObject {
    return NSNumber (value: self)
  }

  //····················································································································

  static func convertFromNSObject (object : NSObject) -> UInt32 {
    let number = object as! NSNumber
    return number.uint32Value
  }

  //····················································································································

  func stringPropertyValue () -> String {
    return "\(String (self, radix: 36))\n"
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

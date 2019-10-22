//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    extension String : ValuePropertyProtocol
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension String : ValuePropertyProtocol {

  //····················································································································

  func ebHashValue () -> UInt32 {
    let possibleData = self.data (using: String.Encoding.utf8)
    if let data = possibleData {
      return data.ebHashValue ()
    }else{
      return 0
    }
  }

  //····················································································································

  func convertToNSObject () -> NSObject {
    return self as NSObject
  }

  //····················································································································

  static func convertFromNSObject (object : NSObject) -> String {
    return object as! String
  }

  //····················································································································

  func stringPropertyValue () -> String {
    var s = ""
    for character in self {
      if character == "\"" {
        s += "\\\""
      }else if character == "\\" {
        s += "\\\\"
      }else{
        s.append (character)
      }
    }
    s += "\n"
    return s
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

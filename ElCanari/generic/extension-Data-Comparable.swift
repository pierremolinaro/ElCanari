//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    Data extension: comparable
//----------------------------------------------------------------------------------------------------------------------

extension Data : Comparable {

  //····················································································································

  static public func < (_ left : Data, _ right : Data) -> Bool {
    var result = left.count < right.count
    if left.count == right.count {
      var idx = 0
      while (idx < right.count) && !result {
        result = left [idx] < right [idx]
        idx += 1
      }
    }
    return result
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

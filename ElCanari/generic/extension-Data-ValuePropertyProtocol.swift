//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    extension Data : ValuePropertyProtocol
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Data : ValuePropertyProtocol {

  //····················································································································

  func ebHashValue () -> UInt32 {
    var crc : UInt32 = 0
    for i in 0 ..< self.count {
      crc.accumulateUInt8 (self [i])
    }
    return crc
  }

  //····················································································································

  func convertToNSObject () -> NSObject {
    return self as NSObject
  }

  //····················································································································

  static func convertFromNSObject (object : NSObject) -> Data {
    return object as! Data
  }

  //····················································································································

  func stringPropertyValue () -> String {
  //--- Base 85
    var data = Data ()
    let BASE : UInt32 = 85
    for i in 0 ..< self.count / 4 {
      var v : UInt32 = UInt32 (self [4 * i])
      v <<= 8
      v |= UInt32 (self [4 * i + 1])
      v <<= 8
      v |= UInt32 (self [4 * i + 2])
      v <<= 8
      v |= UInt32 (self [4 * i + 3])
      let d4 = ASCII.ampersand.rawValue + UInt8 (v % BASE)
      v /= BASE
      let d3 = ASCII.ampersand.rawValue + UInt8 (v % BASE)
      v /= BASE
      let d2 = ASCII.ampersand.rawValue + UInt8 (v % BASE)
      v /= BASE
      let d1 = ASCII.ampersand.rawValue + UInt8 (v % BASE)
      v /= BASE
      let d0 = ASCII.ampersand.rawValue + UInt8 (v)
      data.append (d0)
      data.append (d1)
      data.append (d2)
      data.append (d3)
      data.append (d4)
    }
  //--- Last bytes
    switch self.count % 4 {
    case 1 :
      var v = UInt32 (self [self.count - 1])
      let d1 = ASCII.ampersand.rawValue + UInt8 (v % BASE)
      v /= BASE
      let d0 = ASCII.ampersand.rawValue + UInt8 (v)
      data.append (d0)
      data.append (d1)
      data.append (ASCII.pound.rawValue)
    case 2 :
      var v = UInt32 (self [self.count - 2])
      v <<= 8
      v |= UInt32 (self [self.count - 1])
      let d2 = ASCII.ampersand.rawValue + UInt8 (v % BASE)
      v /= BASE
      let d1 = ASCII.ampersand.rawValue + UInt8 (v % BASE)
      v /= BASE
      let d0 = ASCII.ampersand.rawValue + UInt8 (v)
      data.append (d0)
      data.append (d1)
      data.append (d2)
      data.append (ASCII.dollar.rawValue)
    case 3 :
      var v = UInt32 (self [self.count - 3])
      v <<= 8
      v |= UInt32 (self [self.count - 2])
      v <<= 8
      v |= UInt32 (self [self.count - 1])
      let d3 = ASCII.ampersand.rawValue + UInt8 (v % BASE)
      v /= BASE
      let d2 = ASCII.ampersand.rawValue + UInt8 (v % BASE)
      v /= BASE
      let d1 = ASCII.ampersand.rawValue + UInt8 (v % BASE)
      v /= BASE
      let d0 = ASCII.ampersand.rawValue + UInt8 (v)
      data.append (d0)
      data.append (d1)
      data.append (d2)
      data.append (d3)
      data.append (ASCII.perCent.rawValue)
    default :
      ()
    }
    return String (data: data, encoding: .utf8)!
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
// unarchiveFromStringData
//----------------------------------------------------------------------------------------------------------------------

extension Bool {

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    ioData.append (ascii: self ? .T : .F)
  }

  //····················································································································

  static func unarchiveFromStringData (_ inStringData : Data) -> Bool? {
    if inStringData.count == 1 {
      let c = inStringData [0]
      if c == ASCII.T.rawValue {
        return true
      }else if c == ASCII.F.rawValue {
        return false
      }else{
        return nil
      }
    }else{
      return nil
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

extension Int {

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    ioData.append (base62Encoded: self)
  }

  //····················································································································

  static func unarchiveFromStringData (_ inStringData : Data) -> Int? {
    return inStringData.base62EncodedInt ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

extension UInt32 {

  //····················································································································

   func appendPropertyValueTo (_ ioData : inout Data) {
    ioData.append (base62Encoded: Int (self))
  }

  //····················································································································

  static func unarchiveFromStringData (_ inStringData : Data) -> UInt32? {
    return inStringData.base62EncodedUInt32 ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

extension Double {

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    let s = String (self.bitPattern, radix: 16)
    ioData.append (s.data (using: .utf8)!)
  }

  //····················································································································

  static func unarchiveFromStringData (_ inStringData : Data) -> Double? {
    var result : Double? = nil
    if let s = String (data: inStringData, encoding: .utf8), let v = UInt64 (s, radix: 16) {
      result = Double (bitPattern: v)
    }
    return result
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

extension String {

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    let escapedString = self.replacingOccurrences(of: "\n", with: "\\n")
    ioData.append (escapedString.data (using: .utf8)!)
  }

  //····················································································································

  static func unarchiveFromStringData (_ inStringData : Data) -> String? {
    var result : String? = nil
    if let s = String (data: inStringData, encoding: .utf8) {
      result = s.replacingOccurrences(of: "\\n", with: "\n")
    }
    return result
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

extension NSBezierPath {

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    ioData.append (self.archiveToString ().data (using: .utf8)!)
  }

  //····················································································································

  static func unarchiveFromStringData (_ inStringData : Data) -> NSBezierPath? {
    var result : NSBezierPath? = nil
    if let s = String (data: inStringData, encoding: .utf8) {
      result = NSBezierPath.unarchiveFromString (string: s) as? NSBezierPath
    }
    return result
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

extension Date {

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    self.timeIntervalSince1970.appendPropertyValueTo (&ioData)
  }

  //····················································································································

  static func unarchiveFromStringData (_ inStringData : Data) -> Date? {
    var result : Date? = nil
    if let timeIntervalSince1970 = Double.unarchiveFromStringData (inStringData) {
      result = Date (timeIntervalSince1970: timeIntervalSince1970)
    }
    return result
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

extension NSColor {

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    ioData.append (self.archiveToString ().data (using: .utf8)!)
  }


  //····················································································································

  static func unarchiveFromStringData (_ inStringData : Data) -> NSColor? {
    var result : NSColor? = nil
    if let s = String (data: inStringData, encoding: .utf8) {
      result = NSColor.unarchiveFromString (string: s) as? NSColor
    }
    return result
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

extension Data {

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    ioData.append (self.base64EncodedData ())
  }

  //····················································································································

  static func unarchiveFromStringData (_ inStringData : Data) -> Data? {
    return Data (base64Encoded: inStringData, options: [])
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

private let base62EncodedChars : [ASCII] = [
  .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine,
  .A, .B, .C, .D, .E, .F, .G, .H, .I, .J, .K, .L, .M,
  .N, .O, .P, .Q, .R, .S, .T, .U, .V, .W, .X, .Y, .Z,
  .a, .b, .c, .d, .e, .f, .g, .h, .i, .j, .k, .l, .m,
  .n, .o, .p, .q, .r, .s, .t, .u, .v, .w, .x, .y, .z
]

//----------------------------------------------------------------------------------------------------------------------

extension Data {

  //····················································································································

  mutating func append (base62Encoded inValue : Int) {
    let insertionIndex = self.count
    if inValue > 0 {
      var v = inValue
      while v > 0 {
        self.insert (base62EncodedChars [v % base62EncodedChars.count].rawValue, at: insertionIndex)
        v /= base62EncodedChars.count
      }
    }else if inValue < 0 {
      var v = -inValue
      while v > 0 {
        self.insert (base62EncodedChars [v % base62EncodedChars.count].rawValue, at: insertionIndex)
        v /= base62EncodedChars.count
      }
      self.insert (ASCII.minus.rawValue, at: insertionIndex) // Minus sign
    }else{
      self.append (base62EncodedChars [0].rawValue)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

enum ASCII : UInt8 {
  case lineFeed = 0x0A

  case space = 0x20
  case exclamation = 0x21 // !
  case quotation = 0x22 // "
  case pound = 0x23 // #
  case dollar = 0x24 // $
  case perCent = 0x25 // %
  case ampersand = 0x26 // &
  case apostrophe = 0x27 // '
  case leftParenthesis = 0x28 // (
  case rightParenthesis = 0x29 // )
  case asterisk = 0x2A // *
  case plus = 0x2B // +
  case comma = 0x2C // ,
  case minus = 0x2D // -
  case period = 0x2E // ;
  case slash = 0x2F // /

  case zero = 0x30
  case one = 0x31
  case two = 0x32
  case three = 0x33
  case four = 0x34
  case five = 0x35
  case six = 0x36
  case seven = 0x37
  case eight = 0x38
  case nine = 0x39

  case colon = 0x3A // :
  case semicolon = 0x3B // ;
  case lessThan = 0x3C // <
  case equal = 0x3D // =
  case greaterThan = 0x3E // >
  case question = 0x3F // ?
  case at = 0x40 // @

  case A = 0x41
  case B = 0x42
  case C = 0x43
  case D = 0x44
  case E = 0x45
  case F = 0x46
  case G = 0x47
  case H = 0x48
  case I = 0x49
  case J = 0x4A
  case K = 0x4B
  case L = 0x4C
  case M = 0x4D
  case N = 0x4E
  case O = 0x4F
  case P = 0x50
  case Q = 0x51
  case R = 0x52
  case S = 0x53
  case T = 0x54
  case U = 0x55
  case V = 0x56
  case W = 0x57
  case X = 0x58
  case Y = 0x59
  case Z = 0x5A

  case leftBracket = 0x5B // [
  case baskSlah = 0x5E // \
  case rightBracket = 0x5F // ]
  case baskApostrophe = 0x60 // `

  case a = 0x61
  case b = 0x62
  case c = 0x63
  case d = 0x64
  case e = 0x65
  case f = 0x66
  case g = 0x67
  case h = 0x68
  case i = 0x69
  case j = 0x6A
  case k = 0x6B
  case l = 0x6C
  case m = 0x6D
  case n = 0x6E
  case o = 0x6F
  case p = 0x70
  case q = 0x71
  case r = 0x72
  case s = 0x73
  case t = 0x74
  case u = 0x75
  case v = 0x76
  case w = 0x77
  case x = 0x78
  case y = 0x79
  case z = 0x7A

  case leftBrace = 0x7B // {
  case verticalBar = 0x7C // |
  case rightBrace = 0x7D // }
  case tilde = 0x7E // ~
}

//----------------------------------------------------------------------------------------------------------------------

extension Data {

  //····················································································································

  func parseUnsigned (idx ioIdx : inout Int, ok ioOk : inout Bool, result outResult : inout Int) {
    outResult = 0
    var loop = true
    while loop {
      if ioIdx < self.count {
        let c = self [ioIdx]
        if (c >= ASCII.zero.rawValue) && (c <= ASCII.nine.rawValue) {
          outResult *= 62
          outResult += Int (c - ASCII.zero.rawValue)
          ioIdx += 1
        }else if (c >= ASCII.A.rawValue) && (c <= ASCII.Z.rawValue) {
          outResult *= 62
          outResult += Int (c - ASCII.A.rawValue) + 10
          ioIdx += 1
        }else if (c >= ASCII.a.rawValue) && (c <= ASCII.z.rawValue) {
          outResult *= 62
          outResult += Int (c - ASCII.a.rawValue) + 10 + 26
          ioIdx += 1
        }else{
          loop = false
        }
      }else{
        loop = false
      }
    }
  }

  //····················································································································

  func base62EncodedInt () -> Int? {
    var sign = 1
    var idx = 0
    if self.count > 0, self [0] == ASCII.minus.rawValue {
      sign = -1
      idx = 1
    }
    var r = 0
    var ok = true
    parseUnsigned (idx: &idx, ok: &ok, result: &r)
    return ok ? (sign * r) : nil
  }

  //····················································································································

  func base62EncodedUInt32 () -> UInt32? {
    var result : UInt32 = 0
    var idx = 0
    var loop = true
    var ok = true
    while loop {
      if idx < self.count {
        let c = self [idx]
        if (c >= ASCII.zero.rawValue) && (c <= ASCII.nine.rawValue) {
          result *= 62
          result += UInt32 (c - ASCII.zero.rawValue)
          idx += 1
        }else if (c >= ASCII.A.rawValue) && (c <= ASCII.Z.rawValue) {
          result *= 62
          result += UInt32 (c - ASCII.A.rawValue) + 10
          idx += 1
        }else if (c >= ASCII.a.rawValue) && (c <= ASCII.z.rawValue) {
          result *= 62
          result += UInt32 (c - ASCII.a.rawValue) + 10 + 26
          idx += 1
        }else{
          loop = false
          ok = false
        }
      }else{
        loop = false
      }
    }
    return ok ? result : nil
  }

  //····················································································································

  func base62EncodedIntArray () -> [Int] {
    var result = [Int] ()
    var ok = true
    var idx = 0
    var loop = true
    while loop {
      var value = 0
      parseUnsigned (idx: &idx, ok: &ok, result: &value)
      result.append (value)
      if ok && (idx < self.count) && (self [idx] == ASCII.colon.rawValue) {
        idx += 1
        var factor = 0
        parseUnsigned (idx: &idx, ok: &ok, result: &factor)
        for i in 1 ... factor {
          result.append (value + i)
        }
      }
      loop = ok && (idx < self.count) && (self [idx] == ASCII.space.rawValue)
      idx += 1
    }
    return result
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


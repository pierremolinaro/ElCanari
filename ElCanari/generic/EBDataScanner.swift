//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//  EBDataScanner
//----------------------------------------------------------------------------------------------------------------------

struct EBDataScanner {
  private var mData : Data
  private var mReadIndex = 0
  private var mReadOk = true
  private var mExpectedBytes = [UInt8] ()

  //····················································································································

  init (data : Data) {
    mData = data
  }

  //····················································································································

  mutating func ignoreBytes (inLengthToIgnore : Int) {
    if self.mReadOk {
      self.mReadIndex += inLengthToIgnore
    }
  }

  //····················································································································

  func test (byte : UInt8) -> Bool {
    var result = self.mReadOk
    if result, self.mReadIndex < self.mData.count {
      result = byte == self.mData [self.mReadIndex]
    }
    return result
  }

  //····················································································································

  mutating func testAccept (byte : UInt8) -> Bool {
    var result = self.mReadOk
    if result {
      if self.mReadIndex >= self.mData.count {
//        result = false
         NSLog ("Read beyond end of data")
         self.mReadOk = false
      }else{
        result = byte == self.mData [self.mReadIndex]
        if result {
          self.mReadIndex += 1
          self.mExpectedBytes = []
        }else{
          self.mExpectedBytes.append (byte)
        }
      }
    }
    return result ;
  }

  //····················································································································

  mutating func testAcceptFromByte (lowerBound: UInt8,
                                    upperBound: UInt8,
                                    value: inout UInt8) -> Bool {
    var result = self.mReadOk
    if result {
      if self.mReadIndex >= self.mData.count {
         NSLog ("Read beyond end of data")
         self.mReadOk = false
       }else{
        let byte = self.mData [self.mReadIndex]
        result = (byte >= lowerBound) && (byte <= upperBound)
        if (result) {
          value = byte
          self.mReadIndex += 1
          self.mExpectedBytes = []
        }else{
          for i in lowerBound ..< upperBound + 1 {
            self.mExpectedBytes.append (i)
          }
        }
      }
    }
    return result ;
  }

  //····················································································································

  mutating func acceptRequired (byte : UInt8) {
    if self.mReadOk {
      if self.mReadIndex >= self.mData.count {
         NSLog ("Read beyond end of data")
         self.mReadOk = false
      }else{
        if (byte == self.mData [self.mReadIndex]) {
          self.mReadIndex += 1
          self.mExpectedBytes = []
        }else{
          var message = ""
          for b in self.mExpectedBytes {
            message += String (format:"0x%02hhx, ", b)
          }
          NSLog ("invalid current byte (0x%02x): expected byte:%@0x%02x", byte, message, self.mData [mReadIndex]) ;
          self.mReadOk = false
        }
      }
    }
  }

  //····················································································································

  mutating func testString (string inString : String) -> Bool {
    let readIndex = self.mReadIndex
    var ok = self.mReadOk
    for c in inString.utf8 {
      if ok && (self.mReadIndex < self.mData.count) {
        ok = self.mData [self.mReadIndex] == c
        self.mReadIndex += 1
      }
    }
    if !ok {
      self.mReadIndex = readIndex
    }
    return ok
  }

  //····················································································································

  mutating func parseByte () -> UInt8 {
    var result : UInt8 = 0
    if mReadOk {
      if mReadIndex >= mData.count {
         NSLog ("Read beyond end of data")
         mReadOk = false
       }else{
        result = mData [mReadIndex]
        mReadIndex += 1
      }
    }
    return result
  }

  //····················································································································

  mutating func parseAutosizedUnsignedInteger () -> UInt {
    var result : UInt = 0
    var shift : UInt = 0
    var loop = true
    while loop && mReadOk {
      if mReadIndex >= mData.count {
         NSLog ("Read beyond end of data")
         mReadOk = false
      }else{
        let byte = mData [mReadIndex]
        let w : UInt = UInt (byte) & 0x7F
        result |= (w << shift)
        shift += 7
        loop = (byte & 0x80) != 0
        mReadIndex += 1
      }
    }
    return result ;
  }

  //····················································································································

  mutating func parseAutosizedData () -> Data {
    var result = Data ()
    if mReadOk {
      let dataLength : Int = Int (parseAutosizedUnsignedInteger ())
      if (mReadIndex + dataLength) >= mData.count {
        NSLog ("Read beyond end of data")
        mReadOk = false
      }else{
        result = mData.subdata (in: mReadIndex ..< mReadIndex + dataLength)
        mReadIndex += dataLength
      }
    }
    return result ;
  }

  //····················································································································

  mutating func parseAutosizedString () -> String {
    var result : String = ""
    var stringLength = 0
    var loop = true
    while loop && mReadOk {
      if (mReadIndex + stringLength) >= mData.count {
        mReadOk = false
      }else{
        loop = mData [mReadIndex + stringLength] != 0
        stringLength += 1
      }
    }
    if (mReadOk) {
      let d = mData.subdata (in: mReadIndex ..< mReadIndex + stringLength - 1)
      if let r = String (data:d, encoding:String.Encoding.utf8) {
        result = r
      }else{
        mReadOk = false
      }
      mReadIndex += stringLength
    }
    return result
  }

  //····················································································································
  // TEXTUAL FORMAT
  //····················································································································

  mutating func parseBase62EncodedInt () -> Int {
    var result = 0
    var loop = true
    var sign = 1
    if self.mReadOk, self.mReadIndex < self.mData.count, self.mData [self.mReadIndex] == ASCII.minus.rawValue {
      sign = -1
      self.mReadIndex += 1
    }
    while self.mReadOk && loop {
      if self.mReadIndex < self.mData.count {
        let c = self.mData [self.mReadIndex]
        if (c >= ASCII.zero.rawValue) && (c <= ASCII.nine.rawValue) {
          result *= 62
          result += Int (c - ASCII.zero.rawValue)
          self.mReadIndex += 1
        }else if (c >= ASCII.A.rawValue) && (c <= ASCII.Z.rawValue) {
          result *= 62
          result += Int (c - ASCII.A.rawValue) + 10
          self.mReadIndex += 1
        }else if (c >= ASCII.a.rawValue) && (c <= ASCII.z.rawValue) {
          result *= 62
          result += Int (c - ASCII.a.rawValue) + 10 + 26
          self.mReadIndex += 1
        }else if c == ASCII.lineFeed.rawValue {
          self.mReadIndex += 1
          loop = false
        }else{
          self.mReadOk = false
          loop = false
        }
      }else{
        self.mReadOk = false
      }
    }
    return sign * result
  }

  //····················································································································

  mutating func parseJSON () throws -> [String : Any] {
    var result = [String : Any] ()
    var jsonData = Data ()
    var loop = true
    while self.mReadOk, loop {
      if self.mReadIndex >= self.mData.count {
        self.mReadOk = false
      }else if self.mData [self.mReadIndex] == ASCII.lineFeed.rawValue {
        self.mReadIndex += 1
        loop = false
      }else{
        jsonData.append (self.mData [self.mReadIndex])
        self.mReadIndex += 1
      }
    }
//    Swift.print ("jsonData \(jsonData)")
    if self.mReadOk, let r = try JSONSerialization.jsonObject (with: jsonData, options: []) as? [String : Any] {
      result = r
    }else{
      self.mReadOk = false
    }
    return result
  }

  //····················································································································

  mutating func parseStringAsData () throws -> Data {
    var result = Data ()
    var loop = true
    while self.mReadOk, loop {
      if self.mReadIndex >= self.mData.count {
        self.mReadOk = false
      }else if self.mData [self.mReadIndex] == ASCII.lineFeed.rawValue {
        self.mReadIndex += 1
        loop = false
      }else{
        result.append (self.mData [self.mReadIndex])
        self.mReadIndex += 1
      }
    }
    return result
  }

  //····················································································································

  mutating func parseString () throws -> String {
    var result = ""
    var stringData = Data ()
    var loop = true
    while self.mReadOk, loop {
      if self.mReadIndex >= self.mData.count {
        self.mReadOk = false
      }else if self.mData [self.mReadIndex] == ASCII.lineFeed.rawValue {
        self.mReadIndex += 1
        loop = false
      }else{
        stringData.append (self.mData [self.mReadIndex])
        self.mReadIndex += 1
      }
    }
    if self.mReadOk, let s = String (data: stringData, encoding: .utf8) {
      result = s
    }else{
      self.mReadOk = false
    }
    return result
  }

  //····················································································································

  func ok () -> Bool {
    return mReadOk
  }

  //····················································································································

  func eof () -> Bool {
    return self.mReadIndex >= self.mData.count
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum BoardTextVerticalAlignment : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case above = 0
  case base = 1
  case center = 2
  case below = 3


  //····················································································································

  init? (string : String) {
    switch string {
      case "above" : self = .above // 0
      case "base" : self = .base // 1
      case "center" : self = .center // 2
      case "below" : self = .below // 3
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .above : return "above" // 0
      case .base : return "base" // 1
      case .center : return "center" // 2
      case .below : return "below" // 3
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> BoardTextVerticalAlignment? {
    if let v = BoardTextVerticalAlignment (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> BoardTextVerticalAlignment {
    var result = self
    let v : BoardTextVerticalAlignment? = BoardTextVerticalAlignment (rawValue:rawValue) ;
    if let unwrappedV = v {
      result = unwrappedV
    }
    return result
  }

  //····················································································································
  //  EBStoredPropertyProtocol
  //····················································································································

  func ebHashValue () -> UInt32 {
    return UInt32 (self.rawValue)
  }

  //····················································································································

  func convertToNSObject () -> NSObject {
    return NSNumber (value: self.rawValue)
  }

  //····················································································································

  static func convertFromNSObject (object : NSObject) -> BoardTextVerticalAlignment {
    var result = BoardTextVerticalAlignment.above
    if let number = object as? NSNumber, let v = BoardTextVerticalAlignment (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  static func unarchiveFromDataRange (_ inData : Data, _ inRange : NSRange) -> BoardTextVerticalAlignment? {
    if let rawValue = inData.base62EncodedInt (range: inRange), let enumValue = BoardTextVerticalAlignment (rawValue: rawValue) {
      return enumValue
    }else{
      return nil
    }
  }

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    ioData.append (base62Encoded: self.rawValue)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias EBReadOnlyProperty_BoardTextVerticalAlignment = EBReadOnlyEnumProperty <BoardTextVerticalAlignment>
typealias EBTransientProperty_BoardTextVerticalAlignment = EBTransientEnumProperty <BoardTextVerticalAlignment>
typealias EBReadWriteProperty_BoardTextVerticalAlignment = EBReadWriteEnumProperty <BoardTextVerticalAlignment>
typealias EBStoredProperty_BoardTextVerticalAlignment = EBStoredEnumProperty <BoardTextVerticalAlignment>
typealias EBPropertyProxy_BoardTextVerticalAlignment = EBPropertyEnumProxy <BoardTextVerticalAlignment>
typealias EBPreferencesProperty_BoardTextVerticalAlignment = EBStoredEnumProperty <BoardTextVerticalAlignment>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

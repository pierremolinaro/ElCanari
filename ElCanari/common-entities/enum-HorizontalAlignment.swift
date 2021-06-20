//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

enum HorizontalAlignment : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case onTheRight = 0
  case center = 1
  case onTheLeft = 2


  //····················································································································

  init? (string : String) {
    switch string {
      case "onTheRight" : self = .onTheRight // 0
      case "center" : self = .center // 1
      case "onTheLeft" : self = .onTheLeft // 2
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .onTheRight : return "onTheRight" // 0
      case .center : return "center" // 1
      case .onTheLeft : return "onTheLeft" // 2
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> HorizontalAlignment? {
    if let v = HorizontalAlignment (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> HorizontalAlignment {
    var result = self
    let v : HorizontalAlignment? = HorizontalAlignment (rawValue:rawValue) ;
    if let unwrappedV = v {
      result = unwrappedV
    }
    return result
  }

  //····················································································································
  //  EBPropertyProtocol
  //····················································································································

  func ebHashValue () -> UInt32 {
    return UInt32 (self.rawValue)
  }

  //····················································································································

  func convertToNSObject () -> NSObject {
    return NSNumber (value: self.rawValue)
  }

  //····················································································································

  static func convertFromNSObject (object : NSObject) -> HorizontalAlignment {
    var result = HorizontalAlignment.onTheRight
    if let number = object as? NSNumber, let v = HorizontalAlignment (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  static func unarchiveFromDataRange (_ inData : Data, _ inRange : NSRange) -> HorizontalAlignment? {
    if let rawValue = inData.base62EncodedInt (range: inRange), let enumValue = HorizontalAlignment (rawValue: rawValue) {
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

//----------------------------------------------------------------------------------------------------------------------

typealias EBReadOnlyProperty_HorizontalAlignment = EBReadOnlyEnumProperty <HorizontalAlignment>
typealias EBTransientProperty_HorizontalAlignment = EBTransientEnumProperty <HorizontalAlignment>
typealias EBReadWriteProperty_HorizontalAlignment = EBReadWriteEnumProperty <HorizontalAlignment>
typealias EBStoredProperty_HorizontalAlignment = EBStoredEnumProperty <HorizontalAlignment>
typealias EBPropertyProxy_HorizontalAlignment = EBPropertyEnumProxy <HorizontalAlignment>
typealias EBPreferencesProperty_HorizontalAlignment = EBStoredEnumProperty <HorizontalAlignment>

//----------------------------------------------------------------------------------------------------------------------

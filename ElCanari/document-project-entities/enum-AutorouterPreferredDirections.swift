//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

enum AutorouterPreferredDirections : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case vFrontHback = 0
  case hFrontVback = 1


  //····················································································································

  init? (string : String) {
    switch string {
      case "vFrontHback" : self = .vFrontHback // 0
      case "hFrontVback" : self = .hFrontVback // 1
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .vFrontHback : return "vFrontHback" // 0
      case .hFrontVback : return "hFrontVback" // 1
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> AutorouterPreferredDirections? {
    if let v = AutorouterPreferredDirections (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> AutorouterPreferredDirections {
    var result = self
    let v : AutorouterPreferredDirections? = AutorouterPreferredDirections (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> AutorouterPreferredDirections {
    var result = AutorouterPreferredDirections.vFrontHback
    if let number = object as? NSNumber, let v = AutorouterPreferredDirections (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  static func unarchiveFromDataRange (_ inData : Data, _ inRange : NSRange) -> AutorouterPreferredDirections? {
    if let rawValue = inData.base62EncodedInt (range: inRange), let enumValue = AutorouterPreferredDirections (rawValue: rawValue) {
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

typealias EBReadOnlyProperty_AutorouterPreferredDirections = EBReadOnlyEnumProperty <AutorouterPreferredDirections>
typealias EBTransientProperty_AutorouterPreferredDirections = EBTransientEnumProperty <AutorouterPreferredDirections>
typealias EBReadWriteProperty_AutorouterPreferredDirections = EBReadWriteEnumProperty <AutorouterPreferredDirections>
typealias EBStoredProperty_AutorouterPreferredDirections = EBStoredEnumProperty <AutorouterPreferredDirections>
typealias EBPropertyProxy_AutorouterPreferredDirections = EBPropertyEnumProxy <AutorouterPreferredDirections>
typealias EBPreferencesProperty_AutorouterPreferredDirections = EBStoredEnumProperty <AutorouterPreferredDirections>

//----------------------------------------------------------------------------------------------------------------------

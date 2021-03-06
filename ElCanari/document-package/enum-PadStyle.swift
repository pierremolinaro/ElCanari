//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum PadStyle : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case traversing = 0
  case surface = 1


  //····················································································································

  init? (string : String) {
    switch string {
      case "traversing" : self = .traversing // 0
      case "surface" : self = .surface // 1
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .traversing : return "traversing" // 0
      case .surface : return "surface" // 1
    }
  }

  //····················································································································
  // Function popupTitles
  //····················································································································

  static func popupTitles () -> [String] {
    return ["Traversing", "Surface"]
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> PadStyle? {
    if let v = PadStyle (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> PadStyle {
    var result = self
    let v : PadStyle? = PadStyle (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> PadStyle {
    var result = PadStyle.traversing
    if let number = object as? NSNumber, let v = PadStyle (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  static func unarchiveFromDataRange (_ inData : Data, _ inRange : NSRange) -> PadStyle? {
    if let rawValue = inData.base62EncodedInt (range: inRange), let enumValue = PadStyle (rawValue: rawValue) {
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

typealias EBReadOnlyProperty_PadStyle = EBReadOnlyEnumProperty <PadStyle>
typealias EBTransientProperty_PadStyle = EBTransientEnumProperty <PadStyle>
typealias EBReadWriteProperty_PadStyle = EBReadWriteEnumProperty <PadStyle>
typealias EBStoredProperty_PadStyle = EBStoredEnumProperty <PadStyle>
typealias EBPropertyProxy_PadStyle = EBPropertyEnumProxy <PadStyle>
typealias EBPreferencesProperty_PadStyle = EBStoredEnumProperty <PadStyle>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

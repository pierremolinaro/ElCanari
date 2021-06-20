//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

enum RastnetDisplay : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case hidden = 0
  case allNets = 1
  case oneNet = 2
  case componentNets = 3
  case selectedComponents = 4


  //····················································································································

  init? (string : String) {
    switch string {
      case "hidden" : self = .hidden // 0
      case "allNets" : self = .allNets // 1
      case "oneNet" : self = .oneNet // 2
      case "componentNets" : self = .componentNets // 3
      case "selectedComponents" : self = .selectedComponents // 4
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .hidden : return "hidden" // 0
      case .allNets : return "allNets" // 1
      case .oneNet : return "oneNet" // 2
      case .componentNets : return "componentNets" // 3
      case .selectedComponents : return "selectedComponents" // 4
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> RastnetDisplay? {
    if let v = RastnetDisplay (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> RastnetDisplay {
    var result = self
    let v : RastnetDisplay? = RastnetDisplay (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> RastnetDisplay {
    var result = RastnetDisplay.hidden
    if let number = object as? NSNumber, let v = RastnetDisplay (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  static func unarchiveFromDataRange (_ inData : Data, _ inRange : NSRange) -> RastnetDisplay? {
    if let rawValue = inData.base62EncodedInt (range: inRange), let enumValue = RastnetDisplay (rawValue: rawValue) {
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

typealias EBReadOnlyProperty_RastnetDisplay = EBReadOnlyEnumProperty <RastnetDisplay>
typealias EBTransientProperty_RastnetDisplay = EBTransientEnumProperty <RastnetDisplay>
typealias EBReadWriteProperty_RastnetDisplay = EBReadWriteEnumProperty <RastnetDisplay>
typealias EBStoredProperty_RastnetDisplay = EBStoredEnumProperty <RastnetDisplay>
typealias EBPropertyProxy_RastnetDisplay = EBPropertyEnumProxy <RastnetDisplay>
typealias EBPreferencesProperty_RastnetDisplay = EBStoredEnumProperty <RastnetDisplay>

//----------------------------------------------------------------------------------------------------------------------

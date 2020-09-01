//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

enum QuadrantRotation : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case rotation0 = 0
  case rotation90 = 1
  case rotation180 = 2
  case rotation270 = 3


  //····················································································································

  init? (string : String) {
    switch string {
      case "rotation0" : self = .rotation0 // 0
      case "rotation90" : self = .rotation90 // 1
      case "rotation180" : self = .rotation180 // 2
      case "rotation270" : self = .rotation270 // 3
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .rotation0 : return "rotation0" // 0
      case .rotation90 : return "rotation90" // 1
      case .rotation180 : return "rotation180" // 2
      case .rotation270 : return "rotation270" // 3
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> QuadrantRotation? {
    if let v = QuadrantRotation (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> QuadrantRotation {
    var result = self
    let v : QuadrantRotation? = QuadrantRotation (rawValue:rawValue) ;
    if let unwrappedV = v {
      result = unwrappedV
    }
    return result
  }

  //····················································································································
  //  ValuePropertyProtocol
  //····················································································································

  func ebHashValue () -> UInt32 {
    return UInt32 (self.rawValue)
  }

  //····················································································································

  func convertToNSObject () -> NSObject {
    return NSNumber (value: self.rawValue)
  }

  //····················································································································

  static func convertFromNSObject (object : NSObject) -> QuadrantRotation {
    var result = QuadrantRotation.rotation0
    if let number = object as? NSNumber, let v = QuadrantRotation (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  static func unarchiveFromStringData (_ inData : Data) -> QuadrantRotation? {
    if let rawValue = inData.base62EncodedInt (), let enumValue = QuadrantRotation (rawValue: rawValue) {
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

typealias EBReadOnlyProperty_QuadrantRotation = EBReadOnlyEnumProperty <QuadrantRotation>
typealias EBTransientProperty_QuadrantRotation = EBTransientEnumProperty <QuadrantRotation>
typealias EBReadWriteProperty_QuadrantRotation = EBReadWriteEnumProperty <QuadrantRotation>
typealias EBStoredProperty_QuadrantRotation = EBStoredEnumProperty <QuadrantRotation>
typealias EBPropertyProxy_QuadrantRotation = EBPropertyEnumProxy <QuadrantRotation>

//----------------------------------------------------------------------------------------------------------------------

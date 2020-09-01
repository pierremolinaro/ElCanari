//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

enum TrackSide : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case front = 0
  case back = 1


  //····················································································································

  init? (string : String) {
    switch string {
      case "front" : self = .front // 0
      case "back" : self = .back // 1
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .front : return "front" // 0
      case .back : return "back" // 1
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> TrackSide? {
    if let v = TrackSide (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> TrackSide {
    var result = self
    let v : TrackSide? = TrackSide (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> TrackSide {
    var result = TrackSide.front
    if let number = object as? NSNumber, let v = TrackSide (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  static func unarchiveFromStringData (_ inData : Data) -> TrackSide? {
    if let rawValue = inData.base62EncodedInt (), let enumValue = TrackSide (rawValue: rawValue) {
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

typealias EBReadOnlyProperty_TrackSide = EBReadOnlyEnumProperty <TrackSide>
typealias EBTransientProperty_TrackSide = EBTransientEnumProperty <TrackSide>
typealias EBReadWriteProperty_TrackSide = EBReadWriteEnumProperty <TrackSide>
typealias EBStoredProperty_TrackSide = EBStoredEnumProperty <TrackSide>
typealias EBPropertyProxy_TrackSide = EBPropertyEnumProxy <TrackSide>

//----------------------------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

enum TrackLockDirection : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case unlocked = 0
  case locked = 1
  case octolinear = 2
  case rectilinear = 3


  //····················································································································

  init? (string : String) {
    switch string {
      case "unlocked" : self = .unlocked // 0
      case "locked" : self = .locked // 1
      case "octolinear" : self = .octolinear // 2
      case "rectilinear" : self = .rectilinear // 3
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .unlocked : return "unlocked" // 0
      case .locked : return "locked" // 1
      case .octolinear : return "octolinear" // 2
      case .rectilinear : return "rectilinear" // 3
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> TrackLockDirection? {
    if let v = TrackLockDirection (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> TrackLockDirection {
    var result = self
    let v : TrackLockDirection? = TrackLockDirection (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> TrackLockDirection {
    var result = TrackLockDirection.unlocked
    if let number = object as? NSNumber, let v = TrackLockDirection (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  static func unarchiveFromDataRange (_ inData : Data, _ inRange : NSRange) -> TrackLockDirection? {
    if let rawValue = inData.base62EncodedInt (range: inRange), let enumValue = TrackLockDirection (rawValue: rawValue) {
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

typealias EBReadOnlyProperty_TrackLockDirection = EBReadOnlyEnumProperty <TrackLockDirection>
typealias EBTransientProperty_TrackLockDirection = EBTransientEnumProperty <TrackLockDirection>
typealias EBReadWriteProperty_TrackLockDirection = EBReadWriteEnumProperty <TrackLockDirection>
typealias EBStoredProperty_TrackLockDirection = EBStoredEnumProperty <TrackLockDirection>
typealias EBPropertyProxy_TrackLockDirection = EBPropertyEnumProxy <TrackLockDirection>

//----------------------------------------------------------------------------------------------------------------------

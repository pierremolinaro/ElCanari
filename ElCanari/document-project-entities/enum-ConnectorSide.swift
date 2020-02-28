//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum ConnectorSide : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case front = 0
  case back = 1
  case both = 2


  //····················································································································

  init? (string : String) {
    switch string {
      case "front" : self = .front // 0
      case "back" : self = .back // 1
      case "both" : self = .both // 2
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .front : return "front" // 0
      case .back : return "back" // 1
      case .both : return "both" // 2
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> ConnectorSide? {
    if let v = ConnectorSide (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> ConnectorSide {
    var result = self
    let v : ConnectorSide? = ConnectorSide (rawValue:rawValue) ;
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

  func convertToNSObject () -> NSObject {
    return NSNumber (value: self.rawValue)
  }

  static func convertFromNSObject (object : NSObject) -> ConnectorSide {
    var result = ConnectorSide.front
    if let number = object as? NSNumber, let v = ConnectorSide (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  func appendPropertyValueTo (_ ioData : inout Data) {
    ioData.append (base62Encoded: self.rawValue)
  }
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias EBReadOnlyProperty_ConnectorSide = EBReadOnlyEnumProperty <ConnectorSide>
typealias EBTransientProperty_ConnectorSide = EBTransientEnumProperty <ConnectorSide>
typealias EBReadWriteProperty_ConnectorSide = EBReadWriteEnumProperty <ConnectorSide>
typealias EBStoredProperty_ConnectorSide = EBStoredEnumProperty <ConnectorSide>
typealias EBPropertyProxy_ConnectorSide = EBPropertyEnumProxy <ConnectorSide>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

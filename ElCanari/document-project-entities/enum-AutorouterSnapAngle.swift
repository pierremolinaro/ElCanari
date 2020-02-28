//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum AutorouterSnapAngle : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case rectilinear = 0
  case octolinear = 1
  case anyAngle = 2


  //····················································································································

  init? (string : String) {
    switch string {
      case "rectilinear" : self = .rectilinear // 0
      case "octolinear" : self = .octolinear // 1
      case "anyAngle" : self = .anyAngle // 2
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .rectilinear : return "rectilinear" // 0
      case .octolinear : return "octolinear" // 1
      case .anyAngle : return "anyAngle" // 2
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> AutorouterSnapAngle? {
    if let v = AutorouterSnapAngle (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> AutorouterSnapAngle {
    var result = self
    let v : AutorouterSnapAngle? = AutorouterSnapAngle (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> AutorouterSnapAngle {
    var result = AutorouterSnapAngle.rectilinear
    if let number = object as? NSNumber, let v = AutorouterSnapAngle (rawValue: number.intValue) {
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

typealias EBReadOnlyProperty_AutorouterSnapAngle = EBReadOnlyEnumProperty <AutorouterSnapAngle>
typealias EBTransientProperty_AutorouterSnapAngle = EBTransientEnumProperty <AutorouterSnapAngle>
typealias EBReadWriteProperty_AutorouterSnapAngle = EBReadWriteEnumProperty <AutorouterSnapAngle>
typealias EBStoredProperty_AutorouterSnapAngle = EBStoredEnumProperty <AutorouterSnapAngle>
typealias EBPropertyProxy_AutorouterSnapAngle = EBPropertyEnumProxy <AutorouterSnapAngle>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

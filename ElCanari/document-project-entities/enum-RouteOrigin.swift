//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum RouteOrigin : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case center = 0
  case bottomLeft = 1
  case middleBottom = 2
  case bottomRight = 3
  case middleRight = 4
  case topRight = 5
  case middleTop = 6
  case topLeft = 7
  case middleLeft = 8


  //····················································································································

  init? (string : String) {
    switch string {
      case "center" : self = .center // 0
      case "bottomLeft" : self = .bottomLeft // 1
      case "middleBottom" : self = .middleBottom // 2
      case "bottomRight" : self = .bottomRight // 3
      case "middleRight" : self = .middleRight // 4
      case "topRight" : self = .topRight // 5
      case "middleTop" : self = .middleTop // 6
      case "topLeft" : self = .topLeft // 7
      case "middleLeft" : self = .middleLeft // 8
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .center : return "center" // 0
      case .bottomLeft : return "bottomLeft" // 1
      case .middleBottom : return "middleBottom" // 2
      case .bottomRight : return "bottomRight" // 3
      case .middleRight : return "middleRight" // 4
      case .topRight : return "topRight" // 5
      case .middleTop : return "middleTop" // 6
      case .topLeft : return "topLeft" // 7
      case .middleLeft : return "middleLeft" // 8
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> RouteOrigin? {
    if let v = RouteOrigin (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> RouteOrigin {
    var result = self
    let v : RouteOrigin? = RouteOrigin (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> RouteOrigin {
    var result = RouteOrigin.center
    if let number = object as? NSNumber, let v = RouteOrigin (rawValue: number.intValue) {
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

typealias EBReadOnlyProperty_RouteOrigin = EBReadOnlyEnumProperty <RouteOrigin>
typealias EBTransientProperty_RouteOrigin = EBTransientEnumProperty <RouteOrigin>
typealias EBReadWriteProperty_RouteOrigin = EBReadWriteEnumProperty <RouteOrigin>
typealias EBStoredProperty_RouteOrigin = EBStoredEnumProperty <RouteOrigin>
typealias EBPropertyProxy_RouteOrigin = EBPropertyEnumProxy <RouteOrigin>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

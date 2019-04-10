//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum GridStyle : Int, EnumPropertyProtocol {
  case noGrid = 0
  case cross = 1
  case line = 2


  //····················································································································

  init? (string : String) {
    switch string {
      case "noGrid" : self = .noGrid // 0
      case "cross" : self = .cross // 1
      case "line" : self = .line // 2
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .noGrid : return "noGrid" // 0
      case .cross : return "cross" // 1
      case .line : return "line" // 2
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> GridStyle? {
    if let v = GridStyle (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> GridStyle {
    var result = self
    let v : GridStyle? = GridStyle (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> GridStyle {
    var result = GridStyle.noGrid
    if let number = object as? NSNumber, let v = GridStyle (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias EBReadOnlyProperty_GridStyle = EBReadOnlyEnumProperty <GridStyle>
typealias EBTransientProperty_GridStyle = EBTransientEnumProperty <GridStyle>
typealias EBReadWriteProperty_GridStyle = EBReadWriteEnumProperty <GridStyle>
typealias EBStoredProperty_GridStyle = EBStoredEnumProperty <GridStyle>
typealias EBPropertyProxy_GridStyle = EBPropertyEnumProxy <GridStyle>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum BoardLineLayer : Int, EnumPropertyProtocol {
  case legendFront = 0
  case legendBack = 1


  //····················································································································

  init? (string : String) {
    switch string {
      case "legendFront" : self = .legendFront // 0
      case "legendBack" : self = .legendBack // 1
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .legendFront : return "legendFront" // 0
      case .legendBack : return "legendBack" // 1
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> BoardLineLayer? {
    if let v = BoardLineLayer (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> BoardLineLayer {
    var result = self
    let v : BoardLineLayer? = BoardLineLayer (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> BoardLineLayer {
    var result = BoardLineLayer.legendFront
    if let number = object as? NSNumber, let v = BoardLineLayer (rawValue: number.intValue) {
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

typealias EBReadOnlyProperty_BoardLineLayer = EBReadOnlyEnumProperty <BoardLineLayer>
typealias EBTransientProperty_BoardLineLayer = EBTransientEnumProperty <BoardLineLayer>
typealias EBReadWriteProperty_BoardLineLayer = EBReadWriteEnumProperty <BoardLineLayer>
typealias EBStoredProperty_BoardLineLayer = EBStoredEnumProperty <BoardLineLayer>
typealias EBPropertyProxy_BoardLineLayer = EBPropertyEnumProxy <BoardLineLayer>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

enum BoardTextLayer : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case legendFront = 0
  case layoutFront = 1
  case layoutBack = 2
  case legendBack = 3


  //····················································································································

  init? (string : String) {
    switch string {
      case "legendFront" : self = .legendFront // 0
      case "layoutFront" : self = .layoutFront // 1
      case "layoutBack" : self = .layoutBack // 2
      case "legendBack" : self = .legendBack // 3
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .legendFront : return "legendFront" // 0
      case .layoutFront : return "layoutFront" // 1
      case .layoutBack : return "layoutBack" // 2
      case .legendBack : return "legendBack" // 3
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> BoardTextLayer? {
    if let v = BoardTextLayer (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> BoardTextLayer {
    var result = self
    let v : BoardTextLayer? = BoardTextLayer (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> BoardTextLayer {
    var result = BoardTextLayer.legendFront
    if let number = object as? NSNumber, let v = BoardTextLayer (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  static func unarchiveFromDataRange (_ inData : Data, _ inRange : NSRange) -> BoardTextLayer? {
    if let rawValue = inData.base62EncodedInt (range: inRange), let enumValue = BoardTextLayer (rawValue: rawValue) {
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

typealias EBReadOnlyProperty_BoardTextLayer = EBReadOnlyEnumProperty <BoardTextLayer>
typealias EBTransientProperty_BoardTextLayer = EBTransientEnumProperty <BoardTextLayer>
typealias EBReadWriteProperty_BoardTextLayer = EBReadWriteEnumProperty <BoardTextLayer>
typealias EBStoredProperty_BoardTextLayer = EBStoredEnumProperty <BoardTextLayer>
typealias EBPropertyProxy_BoardTextLayer = EBPropertyEnumProxy <BoardTextLayer>

//----------------------------------------------------------------------------------------------------------------------

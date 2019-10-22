//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum BoardArchiveFormat : Int, EnumPropertyProtocol {
  case noGeneration = 0
  case binary = 1
  case xml = 2


  //····················································································································

  init? (string : String) {
    switch string {
      case "noGeneration" : self = .noGeneration // 0
      case "binary" : self = .binary // 1
      case "xml" : self = .xml // 2
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .noGeneration : return "noGeneration" // 0
      case .binary : return "binary" // 1
      case .xml : return "xml" // 2
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> BoardArchiveFormat? {
    if let v = BoardArchiveFormat (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> BoardArchiveFormat {
    var result = self
    let v : BoardArchiveFormat? = BoardArchiveFormat (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> BoardArchiveFormat {
    var result = BoardArchiveFormat.noGeneration
    if let number = object as? NSNumber, let v = BoardArchiveFormat (rawValue: number.intValue) {
      result = v
    }
    return result
  }

  //····················································································································

  func stringPropertyValue () -> String {
    return "\(self.rawValue)\n"
  }
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias EBReadOnlyProperty_BoardArchiveFormat = EBReadOnlyEnumProperty <BoardArchiveFormat>
typealias EBTransientProperty_BoardArchiveFormat = EBTransientEnumProperty <BoardArchiveFormat>
typealias EBReadWriteProperty_BoardArchiveFormat = EBReadWriteEnumProperty <BoardArchiveFormat>
typealias EBStoredProperty_BoardArchiveFormat = EBStoredEnumProperty <BoardArchiveFormat>
typealias EBPropertyProxy_BoardArchiveFormat = EBPropertyEnumProxy <BoardArchiveFormat>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

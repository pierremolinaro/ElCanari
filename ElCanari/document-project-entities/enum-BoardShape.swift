//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum BoardShape : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case rectangular = 0
  case bezierPathes = 1


  //····················································································································

  init? (string : String) {
    switch string {
      case "rectangular" : self = .rectangular // 0
      case "bezierPathes" : self = .bezierPathes // 1
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .rectangular : return "rectangular" // 0
      case .bezierPathes : return "bezierPathes" // 1
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> BoardShape? {
    if let v = BoardShape (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> BoardShape {
    var result = self
    let v : BoardShape? = BoardShape (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> BoardShape {
    var result = BoardShape.rectangular
    if let number = object as? NSNumber, let v = BoardShape (rawValue: number.intValue) {
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

typealias EBReadOnlyProperty_BoardShape = EBReadOnlyEnumProperty <BoardShape>
typealias EBTransientProperty_BoardShape = EBTransientEnumProperty <BoardShape>
typealias EBReadWriteProperty_BoardShape = EBReadWriteEnumProperty <BoardShape>
typealias EBStoredProperty_BoardShape = EBStoredEnumProperty <BoardShape>
typealias EBPropertyProxy_BoardShape = EBPropertyEnumProxy <BoardShape>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

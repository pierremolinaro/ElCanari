//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum SchematicSheetOrientation : Int, EnumPropertyProtocol, Hashable, CaseIterable {
  case a4Vertical = 0
  case a4Horizontal = 1
  case custom = 2


  //····················································································································

  init? (string : String) {
    switch string {
      case "a4Vertical" : self = .a4Vertical // 0
      case "a4Horizontal" : self = .a4Horizontal // 1
      case "custom" : self = .custom // 2
      case _ : return nil
    }
  }

  //····················································································································

  func descriptionForExplorer () -> String {
    switch self {
      case .a4Vertical : return "a4Vertical" // 0
      case .a4Horizontal : return "a4Horizontal" // 1
      case .custom : return "custom" // 2
    }
  }

  //····················································································································
  //  Enum generic bindings utility functions
  //····················································································································

  static func buildfromRawValue (rawValue : Int) -> SchematicSheetOrientation? {
    if let v = SchematicSheetOrientation (rawValue:rawValue) {
      return v
    }else{
      return nil
    }
  }

  //····················································································································

  func enumfromRawValue (rawValue : Int) -> SchematicSheetOrientation {
    var result = self
    let v : SchematicSheetOrientation? = SchematicSheetOrientation (rawValue:rawValue) ;
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

  static func convertFromNSObject (object : NSObject) -> SchematicSheetOrientation {
    var result = SchematicSheetOrientation.a4Vertical
    if let number = object as? NSNumber, let v = SchematicSheetOrientation (rawValue: number.intValue) {
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

typealias EBReadOnlyProperty_SchematicSheetOrientation = EBReadOnlyEnumProperty <SchematicSheetOrientation>
typealias EBTransientProperty_SchematicSheetOrientation = EBTransientEnumProperty <SchematicSheetOrientation>
typealias EBReadWriteProperty_SchematicSheetOrientation = EBReadWriteEnumProperty <SchematicSheetOrientation>
typealias EBStoredProperty_SchematicSheetOrientation = EBStoredEnumProperty <SchematicSheetOrientation>
typealias EBPropertyProxy_SchematicSheetOrientation = EBPropertyEnumProxy <SchematicSheetOrientation>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

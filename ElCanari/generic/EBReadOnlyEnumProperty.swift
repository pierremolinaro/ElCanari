//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBReadOnlyEnumProperty <T>
//----------------------------------------------------------------------------------------------------------------------

class EBReadOnlyEnumProperty <T : EBEnumProtocol> : EBAbstractEnumProperty where T : Equatable {

  var prop : EBSelection <T> { return .empty } // Abstract method

  //····················································································································

  override func rawValue () -> Int? {
    switch self.prop {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v.rawValue
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

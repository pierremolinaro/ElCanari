//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBReadWriteClassProperty <T> (abstract class)
//----------------------------------------------------------------------------------------------------------------------

class EBReadWriteClassProperty <T> : EBReadOnlyClassProperty <T> where T : Equatable {
  func setProp (_ value : T) { } // Abstract method
  func validateAndSetProp (_ candidateValue : T, windowForSheet inWindow:NSWindow?) -> Bool {
    return false
  } // Abstract method
}

//----------------------------------------------------------------------------------------------------------------------

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBReadOnlyValueProperty <T>
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBReadOnlyValueProperty <T> : EBAbstractProperty where T : Equatable {

  //····················································································································

  var prop : EBSelection <T> { return .empty } // Abstract method

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
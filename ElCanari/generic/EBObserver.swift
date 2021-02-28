//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    EBObserver
//----------------------------------------------------------------------------------------------------------------------

final class EBObserver : EBAbstractProperty {
  private var mPostEventFunction : Optional < () -> Void > = nil

  //····················································································································

  func setPostEventFunction (_ function : Optional < () -> Void >) {
    self.mPostEventFunction = function
  }

  //····················································································································

  override func postEvent() {
    self.mPostEventFunction? ()
    super.postEvent ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

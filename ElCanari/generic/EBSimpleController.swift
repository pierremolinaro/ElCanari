//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBSimpleController
//----------------------------------------------------------------------------------------------------------------------

class EBSimpleController : EBOutletEvent {

  //····················································································································

  private let mPrivateObservedObjects : [EBObservableObjectProtocol]

  //····················································································································

  init (observedObjects : [EBObservableObjectProtocol], callBack: @escaping () -> Void) {
    self.mPrivateObservedObjects = observedObjects
    super.init ()
    self.mEventCallBack = callBack
    for object in observedObjects {
      object.addEBObserver (self)
    }
  }

  //····················································································································

  override func unregister () {
    super.unregister ()
    for object in self.mPrivateObservedObjects {
      object.removeEBObserver (self)
    }
  }

  //····················································································································

  override func computeAsynchronously (_ inOperationQueue : OperationQueue) {
    for object in self.mPrivateObservedObjects {
      object.computePropertyAsynchronously (inOperationQueue)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

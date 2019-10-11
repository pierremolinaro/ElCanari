//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBModelNotifierEvent
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBModelNotifierEvent : EBEvent {

  //····················································································································
  //   Properties
  //····················································································································

  private let mClient : ReadOnlyAbstractGenericRelationshipProperty
  private let mRemoveSortObserversCallback : (EBModelNotifierEvent) -> Void

  //····················································································································
  //   Properties
  //····················································································································

  init (_ inClient : ReadOnlyAbstractGenericRelationshipProperty,
        addSortObserversCallback inAddSortObserversCallback : (EBModelNotifierEvent) -> Void,
        removeSortObserversCallback inRemoveSortObserversCallback : @escaping (EBModelNotifierEvent) -> Void) {
    mClient = inClient
    mRemoveSortObserversCallback = inRemoveSortObserversCallback
    super.init ()
    inAddSortObserversCallback (self)
  }

  //····················································································································

  func removeSortObservers () {
    self.mRemoveSortObserversCallback (self)
  }

  //····················································································································

  override func postEvent () {
    super.postEvent ()
    self.mClient.notifyModelDidChange ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

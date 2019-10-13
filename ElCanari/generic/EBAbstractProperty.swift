//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBAbstractProperty (abstract class)
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBAbstractProperty : EBEvent {

  private final var mObservers = EBWeakEventSet ()

  //····················································································································

  final func addEBObserver (_ inObserver : EBEvent, postEvent inPostEvent : Bool = true) {
    self.mObservers.insert (inObserver)
    self.updateObserverExplorer ()
    if inPostEvent {
      inObserver.postEvent ()
    }
  }

  //····················································································································

  final func addEBObserversFrom (_ inObserverSet : inout EBWeakEventSet) {
    inObserverSet.apply { (_ observer : EBEvent) in
      self.mObservers.insert (observer)
      observer.postEvent ()
    }
    self.updateObserverExplorer ()
  }

  //····················································································································

  final func removeEBObserver (_ inObserver : EBEvent) {
    self.mObservers.remove (inObserver)
    self.updateObserverExplorer ()
  }

  //····················································································································

  final func removeEBObserversFrom (_ inObserverSet : inout EBWeakEventSet) {
    inObserverSet.apply {(_ observer : EBEvent) in
      self.mObservers.remove (observer)
    }
    self.updateObserverExplorer ()
  }

  //····················································································································

  override func postEvent () {
    self.mObservers.apply ( {(_ observer : EBEvent) in observer.postEvent () })
  }

  //····················································································································

  final var mObserverExplorer : NSPopUpButton? {
    didSet {
      self.updateObserverExplorer ()
    }
  }

  //····················································································································

  final func updateObserverExplorer () {
    if let observerExplorer = self.mObserverExplorer {
      observerExplorer.removeAllItems ()
      let observerCount = self.mObservers.count
      observerExplorer.addItem (withTitle: String (observerCount))
      observerExplorer.isEnabled = observerCount > 0
      self.mObservers.apply ( {(_ observer : EBEvent) in
        let stringValue = explorerIndexString (observer.ebObjectIndex) + " — " + observer.className
        observerExplorer.addItem (withTitle: stringValue)
      })
    }
  }

  //····················································································································

  func computePropertyAsynchronously (_ inOperationQueue : OperationQueue) {
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

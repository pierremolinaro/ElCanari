//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBGenericTransientProperty <T>
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBGenericTransientProperty <T : Equatable> : EBGenericReadOnlyProperty <T> {

  //····················································································································

  private var mValueCache : EBSelection <T>? = nil
  var mReadModelFunction : Optional<() -> EBSelection <T> > = nil

  //····················································································································

  var mValueExplorer : NSTextField? {
    didSet {
      if let valueCache = self.mValueCache {
        self.mValueExplorer?.stringValue = "\(valueCache)"
      }else{
        self.mValueExplorer?.stringValue = "nil"
      }
    }
  }

  //····················································································································

  override var selection : EBSelection <T> {
    if self.mValueCache == nil {
      self.mValueCache = self.mReadModelFunction? ()
      if self.mValueCache == nil {
        self.mValueCache = .empty
      }
      self.mValueExplorer?.stringValue = "\(self.mValueCache!)"
    }
    return self.mValueCache!
  }

  //····················································································································

  override func postEvent () {
    if self.mValueCache != nil {
      self.mValueCache = nil
      self.mValueExplorer?.stringValue = "nil"
      if logEvents () {
        appendMessageString ("Transient \(explorerIndexString (self.ebObjectIndex)) propagation\n")
      }
      super.postEvent ()
    }else if logEvents () {
      appendMessageString ("Transient \(explorerIndexString (self.ebObjectIndex)) nil\n")
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

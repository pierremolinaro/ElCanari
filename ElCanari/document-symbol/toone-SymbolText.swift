//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_SymbolText 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_SymbolText : ReadOnlyAbstractObjectProperty <SymbolText> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolText?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
 //     oldValue.y_property.removeEBObserversFrom (&self.mObserversOf_y) // Stored property
      oldValue.y_property.removeEBObserver (self.y_property) // Stored property
 //     oldValue.text_property.removeEBObserversFrom (&self.mObserversOf_text) // Stored property
      oldValue.text_property.removeEBObserver (self.text_property) // Stored property
 //     oldValue.horizontalAlignment_property.removeEBObserversFrom (&self.mObserversOf_horizontalAlignment) // Stored property
      oldValue.horizontalAlignment_property.removeEBObserver (self.horizontalAlignment_property) // Stored property
 //     oldValue.x_property.removeEBObserversFrom (&self.mObserversOf_x) // Stored property
      oldValue.x_property.removeEBObserver (self.x_property) // Stored property
 //     oldValue.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      oldValue.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
 //     oldValue.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
      oldValue.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
 //     oldValue.issues_property.removeEBObserversFrom (&self.mObserversOf_issues) // Transient property
      oldValue.issues_property.removeEBObserver (self.issues_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
 //     newValue.y_property.addEBObserversFrom (&self.mObserversOf_y) // Stored property
      newValue.y_property.addEBObserver (self.y_property) // Stored property
 //     newValue.text_property.addEBObserversFrom (&self.mObserversOf_text) // Stored property
      newValue.text_property.addEBObserver (self.text_property) // Stored property
 //     newValue.horizontalAlignment_property.addEBObserversFrom (&self.mObserversOf_horizontalAlignment) // Stored property
      newValue.horizontalAlignment_property.addEBObserver (self.horizontalAlignment_property) // Stored property
 //     newValue.x_property.addEBObserversFrom (&self.mObserversOf_x) // Stored property
      newValue.x_property.addEBObserver (self.x_property) // Stored property
  //    newValue.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      newValue.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
  //    newValue.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
      newValue.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
  //    newValue.issues_property.addEBObserversFrom (&self.mObserversOf_issues) // Transient property
      newValue.issues_property.addEBObserver (self.issues_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'y' stored property
  //····················································································································

  final let y_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_y (_ inObserver : EBEvent) {
    self.y_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_y (_ inObserver : EBEvent) {
    self.y_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'text' stored property
  //····················································································································

  final let text_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func addEBObserverOf_text (_ inObserver : EBEvent) {
    self.text_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_text (_ inObserver : EBEvent) {
    self.text_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'horizontalAlignment' stored property
  //····················································································································

  final let horizontalAlignment_property = EBGenericTransientProperty <HorizontalAlignment?> ()

  //····················································································································

  final func addEBObserverOf_horizontalAlignment (_ inObserver : EBEvent) {
    self.horizontalAlignment_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_horizontalAlignment (_ inObserver : EBEvent) {
    self.horizontalAlignment_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'x' stored property
  //····················································································································

  final let x_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_x (_ inObserver : EBEvent) {
    self.x_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_x (_ inObserver : EBEvent) {
    self.x_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  final let objectDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································

  final func addEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.objectDisplay_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.objectDisplay_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  final let selectionDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································

  final func addEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.selectionDisplay_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.selectionDisplay_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  final let issues_property = EBGenericTransientProperty <CanariIssueArray?> ()

  //····················································································································

  final func addEBObserverOf_issues (_ inObserver : EBEvent) {
    self.issues_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_issues (_ inObserver : EBEvent) {
    self.issues_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure y simple stored property
    self.y_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.y_property.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          return .single (v)
        }
      }else{
        return .single (nil)
      }
    }
  //--- Configure text simple stored property
    self.text_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.text_property.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          return .single (v)
        }
      }else{
        return .single (nil)
      }
    }
  //--- Configure horizontalAlignment simple stored property
    self.horizontalAlignment_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.horizontalAlignment_property.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          return .single (v)
        }
      }else{
        return .single (nil)
      }
    }
  //--- Configure x simple stored property
    self.x_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.x_property.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          return .single (v)
        }
      }else{
        return .single (nil)
      }
    }
  //--- Configure objectDisplay transient property
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.objectDisplay_property.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          return .single (v)
        }
      }else{
        return .single (nil)
      }
    }
  //--- Configure selectionDisplay transient property
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.selectionDisplay_property.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          return .single (v)
        }
      }else{
        return .single (nil)
      }
    }
  //--- Configure issues transient property
    self.issues_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.issues_property.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          return .single (v)
        }
      }else{
        return .single (nil)
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject SymbolText
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_SymbolText : ReadOnlyObject_SymbolText {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_SymbolText? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_SymbolText?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : SymbolText? 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.selection {
      case .empty :
        newObject = nil
        self.mTransientKind = .empty
      case .single (let v) :
        newObject = v
        self.mTransientKind = .single
       case .multiple :
        newObject = nil
        self.mTransientKind = .empty
      }
    }else{
      newObject = nil
      self.mTransientKind = .empty
    }
    self.mInternalValue = newObject
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var selection : EBSelection < SymbolText? > {
    switch self.mTransientKind {
    case .empty :
      return .empty
    case .single :
      if let internalValue = self.mInternalValue {
        return .single (internalValue)
      }else{
        return .empty
      }
    case .multiple :
      return .multiple
    }
  }

  //····················································································································

  override var propval : SymbolText? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_SymbolText
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_SymbolText : ReadOnlyObject_SymbolText {

  //····················································································································
 
  func setProp (_ inValue : SymbolText?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_SymbolText
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_SymbolText : ReadWriteObject_SymbolText {

  //····················································································································

  private var mModel : ReadWriteObject_SymbolText? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_SymbolText?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : SymbolText?
    if let model = self.mModel {
      switch model.selection {
      case .empty :
        newModel = nil
      case .single (let v) :
        newModel = v
       case .multiple :
        newModel = nil
      }
    }else{
      newModel = nil
    }
    self.mInternalValue = newModel
    super.notifyModelDidChange ()
  }

  //····················································································································

  override func setProp (_ inValue : SymbolText?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < SymbolText? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SymbolText? {
    if let model = self.mModel {
      switch model.selection {
      case .empty, .multiple :
        return nil
      case .single (let v) :
        return v
      }
    }else{
      return nil
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    StoredObject_SymbolText 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_SymbolText : ReadWriteObject_SymbolText, EBSignatureObserverProtocol, EBObservableObjectProtocol {

 //····················································································································

  init (usedForSignature inUsedForSignature : Bool) {
    mUsedForSignature = inUsedForSignature
    super.init ()
  }

  //····················································································································
  //   Signature ?
  //····················································································································

  private let mUsedForSignature : Bool
  
  //····················································································································
  //   Undo manager
  //····················································································································

  weak final var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

 //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SymbolText) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SymbolText) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SymbolText) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SymbolText) -> Void) {
    self.mSetOppositeRelationship = inSetter
    self.mResetOppositeRelationship = inResetter
  }
  
  //····················································································································

  var mValueExplorer : NSButton? {
    didSet {
      if let unwrappedExplorer = self.mValueExplorer {
        switch self.selection {
        case .empty, .multiple :
          break ;
        case .single (let v) :
          updateManagedObjectToOneRelationshipDisplay (object: v, button: unwrappedExplorer)
        }
      }
    }
  }

 //····················································································································
  // Model will change 
  //····················································································································

  override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolText?) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self) { $0.mInternalValue = inOldValue }
  //---
    if let object = inOldValue {
      if self.mUsedForSignature {
        object.setSignatureObserver (observer: nil)
      }
      self.mResetOppositeRelationship? (object)
    }
  //---
    if let object = self.mInternalValue {
      if self.mUsedForSignature {
        object.setSignatureObserver (observer: self)
      }
      self.mSetOppositeRelationship? (object)
    }
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································
  // Model did change 
  //····················································································································

  override func notifyModelDidChange () {
  //--- Update explorer
    if let valueExplorer = self.mValueExplorer {
      updateManagedObjectToOneRelationshipDisplay (object: self.mInternalValue, button: valueExplorer)
    }
  //--- Notify observers
    self.postEvent ()
    self.clearSignatureCache ()
  //---
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var selection : EBSelection < SymbolText? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : SymbolText?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : SymbolText? { return self.mInternalValue }

  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK

  //····················································································································

  private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer inObserver : EBSignatureObserverProtocol?) {
    self.mSignatureObserver?.clearSignatureCache ()
    self.mSignatureObserver = inObserver
    inObserver?.clearSignatureCache ()
    self.clearSignatureCache ()
  }

  //····················································································································

  final func signature () -> UInt32 {
    let computedSignature : UInt32
    if let s = self.mSignatureCache {
      computedSignature = s
    }else{
      computedSignature = self.computeSignature ()
      self.mSignatureCache = computedSignature
    }
    return computedSignature
  }
  
  //····················································································································

  final private func computeSignature () -> UInt32 {
    var crc : UInt32 = 0
    if let object = self.mInternalValue {
      crc.accumulateUInt32 (object.signature ())
    }
    return crc
  }

  //····················································································································

  final func clearSignatureCache () {
    if self.mSignatureCache != nil {
      self.mSignatureCache = nil
      self.mSignatureObserver?.clearSignatureCache ()
    }
  }

  //····················································································································
 
}

//----------------------------------------------------------------------------------------------------------------------


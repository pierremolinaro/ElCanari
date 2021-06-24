//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_BoardModelVia 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_BoardModelVia : ReadOnlyAbstractObjectProperty <BoardModelVia> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : BoardModelVia?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.y_property.removeEBObserversFrom (&self.mObserversOf_y) // Stored property
      oldValue.padDiameter_property.removeEBObserversFrom (&self.mObserversOf_padDiameter) // Stored property
      oldValue.x_property.removeEBObserversFrom (&self.mObserversOf_x) // Stored property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.y_property.addEBObserversFrom (&self.mObserversOf_y) // Stored property
      newValue.padDiameter_property.addEBObserversFrom (&self.mObserversOf_padDiameter) // Stored property
      newValue.x_property.addEBObserversFrom (&self.mObserversOf_x) // Stored property
    }
  }

  //····················································································································
  //   Observers of 'y' stored property
  //····················································································································

//  private final var y_property = EBGenericPropertyProxy <Int> ()

  private final var mObserversOf_y = EBWeakEventSet ()

  //····················································································································

  final var y_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.y_property_selection) {
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

  //····················································································································

  final func addEBObserverOf_y (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_y.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.y_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_y (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_y.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.y_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'padDiameter' stored property
  //····················································································································

//  private final var padDiameter_property = EBGenericPropertyProxy <Int> ()

  private final var mObserversOf_padDiameter = EBWeakEventSet ()

  //····················································································································

  final var padDiameter_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.padDiameter_property_selection) {
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

  //····················································································································

  final func addEBObserverOf_padDiameter (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_padDiameter.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.padDiameter_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_padDiameter (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_padDiameter.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.padDiameter_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'x' stored property
  //····················································································································

//  private final var x_property = EBGenericPropertyProxy <Int> ()

  private final var mObserversOf_x = EBWeakEventSet ()

  //····················································································································

  final var x_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.x_property_selection) {
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

  //····················································································································

  final func addEBObserverOf_x (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_x.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.x_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_x (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_x.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.x_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   INIT 
  //····················································································································

 // override init () {
//    super.init ()
  //--- Configure y simple stored property
 /*   self.y_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.y_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.y_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.y_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.y_property) */
  //--- Configure padDiameter simple stored property
 /*   self.padDiameter_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.padDiameter_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.padDiameter_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.padDiameter_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.padDiameter_property) */
  //--- Configure x simple stored property
 /*   self.x_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.x_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.x_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.x_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.x_property) */
 // }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject BoardModelVia
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_BoardModelVia : ReadOnlyObject_BoardModelVia {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_BoardModelVia? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_BoardModelVia?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : BoardModelVia? 
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

  override var selection : EBSelection < BoardModelVia? > {
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

  override var propval : BoardModelVia? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_BoardModelVia
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_BoardModelVia : ReadOnlyObject_BoardModelVia {

  //····················································································································
 
  func setProp (_ inValue : BoardModelVia?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_BoardModelVia
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_BoardModelVia : ReadWriteObject_BoardModelVia {

  //····················································································································

  private var mModel : ReadWriteObject_BoardModelVia? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_BoardModelVia?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : BoardModelVia?
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

  override func setProp (_ inValue : BoardModelVia?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < BoardModelVia? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : BoardModelVia? {
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
//    StoredObject_BoardModelVia 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_BoardModelVia : ReadWriteObject_BoardModelVia, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : BoardModelVia) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : BoardModelVia) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : BoardModelVia) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : BoardModelVia) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : BoardModelVia?) {
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

  override var selection : EBSelection < BoardModelVia? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : BoardModelVia?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : BoardModelVia? { return self.mInternalValue }

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


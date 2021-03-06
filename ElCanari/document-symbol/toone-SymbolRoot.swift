//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_SymbolRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_SymbolRoot : ReadOnlyAbstractObjectProperty <SymbolRoot> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolRoot?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.selectedInspector_property.removeEBObserver (self.selectedInspector_property) // Stored property
      oldValue.comments_property.removeEBObserver (self.comments_property) // Stored property
      oldValue.horizontalFlip_property.removeEBObserver (self.horizontalFlip_property) // Stored property
      oldValue.verticalFlip_property.removeEBObserver (self.verticalFlip_property) // Stored property
      oldValue.gridStyle_property.removeEBObserver (self.gridStyle_property) // Stored property
      oldValue.gridDisplay_property.removeEBObserver (self.gridDisplay_property) // Stored property
      oldValue.zoom_property.removeEBObserver (self.zoom_property) // Stored property
      oldValue.xPlacardUnit_property.removeEBObserver (self.xPlacardUnit_property) // Stored property
      oldValue.yPlacardUnit_property.removeEBObserver (self.yPlacardUnit_property) // Stored property
      oldValue.selectedPageIndex_property.removeEBObserver (self.selectedPageIndex_property) // Stored property
      oldValue.issues_property.removeEBObserver (self.issues_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.selectedInspector_property.addEBObserver (self.selectedInspector_property) // Stored property
      newValue.comments_property.addEBObserver (self.comments_property) // Stored property
      newValue.horizontalFlip_property.addEBObserver (self.horizontalFlip_property) // Stored property
      newValue.verticalFlip_property.addEBObserver (self.verticalFlip_property) // Stored property
      newValue.gridStyle_property.addEBObserver (self.gridStyle_property) // Stored property
      newValue.gridDisplay_property.addEBObserver (self.gridDisplay_property) // Stored property
      newValue.zoom_property.addEBObserver (self.zoom_property) // Stored property
      newValue.xPlacardUnit_property.addEBObserver (self.xPlacardUnit_property) // Stored property
      newValue.yPlacardUnit_property.addEBObserver (self.yPlacardUnit_property) // Stored property
      newValue.selectedPageIndex_property.addEBObserver (self.selectedPageIndex_property) // Stored property
      newValue.issues_property.addEBObserver (self.issues_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'selectedInspector' stored property
  //····················································································································

  final let selectedInspector_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'comments' stored property
  //····················································································································

  final let comments_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'horizontalFlip' stored property
  //····················································································································

  final let horizontalFlip_property = EBGenericTransientProperty <Bool?> ()

  //····················································································································
  //   Observers of 'verticalFlip' stored property
  //····················································································································

  final let verticalFlip_property = EBGenericTransientProperty <Bool?> ()

  //····················································································································
  //   Observers of 'gridStyle' stored property
  //····················································································································

  final let gridStyle_property = EBGenericTransientProperty <GridStyle?> ()

  //····················································································································
  //   Observers of 'gridDisplay' stored property
  //····················································································································

  final let gridDisplay_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'zoom' stored property
  //····················································································································

  final let zoom_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'xPlacardUnit' stored property
  //····················································································································

  final let xPlacardUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'yPlacardUnit' stored property
  //····················································································································

  final let yPlacardUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'selectedPageIndex' stored property
  //····················································································································

  final let selectedPageIndex_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  final let issues_property = EBGenericTransientProperty <CanariIssueArray?> ()

  //····················································································································
  //   Observable toMany property: symbolObjects
  //····················································································································

  private final var mObserversOf_symbolObjects = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_symbolObjects (_ inObserver : EBEvent) {
    self.mObserversOf_symbolObjects.insert (inObserver)
    if let object = self.propval {
      object.symbolObjects_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_symbolObjects (_ inObserver : EBEvent) {
    self.mObserversOf_symbolObjects.remove (inObserver)
    if let object = self.propval {
      object.symbolObjects_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observable toMany property: symbolPins
  //····················································································································

  private final var mObserversOf_symbolPins = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_symbolPins (_ inObserver : EBEvent) {
    self.mObserversOf_symbolPins.insert (inObserver)
    if let object = self.propval {
      object.symbolPins_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_symbolPins (_ inObserver : EBEvent) {
    self.mObserversOf_symbolPins.remove (inObserver)
    if let object = self.propval {
      object.symbolPins_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   INIT
  //····················································································································

  override init () {
    super.init ()
  //--- Configure selectedInspector simple stored property
    self.selectedInspector_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.selectedInspector_property.selection {
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
  //--- Configure comments simple stored property
    self.comments_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.comments_property.selection {
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
  //--- Configure horizontalFlip simple stored property
    self.horizontalFlip_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.horizontalFlip_property.selection {
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
  //--- Configure verticalFlip simple stored property
    self.verticalFlip_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.verticalFlip_property.selection {
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
  //--- Configure gridStyle simple stored property
    self.gridStyle_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.gridStyle_property.selection {
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
  //--- Configure gridDisplay simple stored property
    self.gridDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.gridDisplay_property.selection {
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
  //--- Configure zoom simple stored property
    self.zoom_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.zoom_property.selection {
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
  //--- Configure xPlacardUnit simple stored property
    self.xPlacardUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.xPlacardUnit_property.selection {
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
  //--- Configure yPlacardUnit simple stored property
    self.yPlacardUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.yPlacardUnit_property.selection {
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
  //--- Configure selectedPageIndex simple stored property
    self.selectedPageIndex_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.selectedPageIndex_property.selection {
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   TransientObject SymbolRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientObject_SymbolRoot : ReadOnlyObject_SymbolRoot {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_SymbolRoot? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_SymbolRoot?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : SymbolRoot?
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

  override var selection : EBSelection < SymbolRoot? > {
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

  override var propval : SymbolRoot? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_SymbolRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_SymbolRoot : ReadOnlyObject_SymbolRoot {

  //····················································································································

  func setProp (_ inValue : SymbolRoot?) { } // Abstract method

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_SymbolRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_SymbolRoot : ReadWriteObject_SymbolRoot {

  //····················································································································

  private var mModel : ReadWriteObject_SymbolRoot? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_SymbolRoot?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : SymbolRoot?
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

  override func setProp (_ inValue : SymbolRoot?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < SymbolRoot? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SymbolRoot? {
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    StoredObject_SymbolRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_SymbolRoot : ReadWriteObject_SymbolRoot, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SymbolRoot) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SymbolRoot) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SymbolRoot) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SymbolRoot) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolRoot?) {
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

  override var selection : EBSelection < SymbolRoot? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : SymbolRoot?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : SymbolRoot? { return self.mInternalValue }

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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


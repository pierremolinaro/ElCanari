//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_SegmentForFontCharacter 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_SegmentForFontCharacter : ReadOnlyAbstractObjectProperty <SegmentForFontCharacter> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SegmentForFontCharacter?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.x1_property.removeEBObserver (self.x1_property) // Stored property
      oldValue.y1_property.removeEBObserver (self.y1_property) // Stored property
      oldValue.x2_property.removeEBObserver (self.x2_property) // Stored property
      oldValue.y2_property.removeEBObserver (self.y2_property) // Stored property
      oldValue.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
      oldValue.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.x1_property.addEBObserver (self.x1_property) // Stored property
      newValue.y1_property.addEBObserver (self.y1_property) // Stored property
      newValue.x2_property.addEBObserver (self.x2_property) // Stored property
      newValue.y2_property.addEBObserver (self.y2_property) // Stored property
      newValue.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
      newValue.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'x1' stored property
  //····················································································································

  final let x1_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'y1' stored property
  //····················································································································

  final let y1_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'x2' stored property
  //····················································································································

  final let x2_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'y2' stored property
  //····················································································································

  final let y2_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  final let selectionDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  final let objectDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure x1 simple stored property
    self.x1_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.x1_property.selection {
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
  //--- Configure y1 simple stored property
    self.y1_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.y1_property.selection {
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
  //--- Configure x2 simple stored property
    self.x2_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.x2_property.selection {
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
  //--- Configure y2 simple stored property
    self.y2_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.y2_property.selection {
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
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject SegmentForFontCharacter
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_SegmentForFontCharacter : ReadOnlyObject_SegmentForFontCharacter {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_SegmentForFontCharacter? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_SegmentForFontCharacter?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : SegmentForFontCharacter? 
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

  override var selection : EBSelection < SegmentForFontCharacter? > {
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

  override var propval : SegmentForFontCharacter? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_SegmentForFontCharacter
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_SegmentForFontCharacter : ReadOnlyObject_SegmentForFontCharacter {

  //····················································································································
 
  func setProp (_ inValue : SegmentForFontCharacter?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_SegmentForFontCharacter
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_SegmentForFontCharacter : ReadWriteObject_SegmentForFontCharacter {

  //····················································································································

  private var mModel : ReadWriteObject_SegmentForFontCharacter? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_SegmentForFontCharacter?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : SegmentForFontCharacter?
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

  override func setProp (_ inValue : SegmentForFontCharacter?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < SegmentForFontCharacter? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SegmentForFontCharacter? {
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
//    StoredObject_SegmentForFontCharacter 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_SegmentForFontCharacter : ReadWriteObject_SegmentForFontCharacter, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SegmentForFontCharacter) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SegmentForFontCharacter) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SegmentForFontCharacter) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SegmentForFontCharacter) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : SegmentForFontCharacter?) {
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

  override var selection : EBSelection < SegmentForFontCharacter? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : SegmentForFontCharacter?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : SegmentForFontCharacter? { return self.mInternalValue }

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


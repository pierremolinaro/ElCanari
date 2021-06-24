//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_ArtworkRoot 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_ArtworkRoot : ReadOnlyAbstractObjectProperty <ArtworkRoot> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : ArtworkRoot?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.selectedTab_property.removeEBObserver (self.selectedTab_property) // Stored property
      oldValue.comments_property.removeEBObserver (self.comments_property) // Stored property
      oldValue.minPPTPTTTWdisplayUnit_property.removeEBObserver (self.minPPTPTTTWdisplayUnit_property) // Stored property
      oldValue.minPPTPTTTW_property.removeEBObserver (self.minPPTPTTTW_property) // Stored property
      oldValue.minValueForOARdisplayUnit_property.removeEBObserver (self.minValueForOARdisplayUnit_property) // Stored property
      oldValue.minValueForOARinEBUnit_property.removeEBObserver (self.minValueForOARinEBUnit_property) // Stored property
      oldValue.minValueForPHDdisplayUnit_property.removeEBObserver (self.minValueForPHDdisplayUnit_property) // Stored property
      oldValue.minValueForPHDinEBUnit_property.removeEBObserver (self.minValueForPHDinEBUnit_property) // Stored property
      oldValue.minValueForBoardLimitWidthDisplayUnit_property.removeEBObserver (self.minValueForBoardLimitWidthDisplayUnit_property) // Stored property
      oldValue.minValueForBoardLimitWidth_property.removeEBObserver (self.minValueForBoardLimitWidth_property) // Stored property
      oldValue.drillDataFileExtension_property.removeEBObserver (self.drillDataFileExtension_property) // Stored property
      oldValue.signatureForERCChecking_property.removeEBObserver (self.signatureForERCChecking_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.selectedTab_property.addEBObserver (self.selectedTab_property) // Stored property
      newValue.comments_property.addEBObserver (self.comments_property) // Stored property
      newValue.minPPTPTTTWdisplayUnit_property.addEBObserver (self.minPPTPTTTWdisplayUnit_property) // Stored property
      newValue.minPPTPTTTW_property.addEBObserver (self.minPPTPTTTW_property) // Stored property
      newValue.minValueForOARdisplayUnit_property.addEBObserver (self.minValueForOARdisplayUnit_property) // Stored property
      newValue.minValueForOARinEBUnit_property.addEBObserver (self.minValueForOARinEBUnit_property) // Stored property
      newValue.minValueForPHDdisplayUnit_property.addEBObserver (self.minValueForPHDdisplayUnit_property) // Stored property
      newValue.minValueForPHDinEBUnit_property.addEBObserver (self.minValueForPHDinEBUnit_property) // Stored property
      newValue.minValueForBoardLimitWidthDisplayUnit_property.addEBObserver (self.minValueForBoardLimitWidthDisplayUnit_property) // Stored property
      newValue.minValueForBoardLimitWidth_property.addEBObserver (self.minValueForBoardLimitWidth_property) // Stored property
      newValue.drillDataFileExtension_property.addEBObserver (self.drillDataFileExtension_property) // Stored property
      newValue.signatureForERCChecking_property.addEBObserver (self.signatureForERCChecking_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'selectedTab' stored property
  //····················································································································

  final let selectedTab_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'comments' stored property
  //····················································································································

  final let comments_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'minPPTPTTTWdisplayUnit' stored property
  //····················································································································

  final let minPPTPTTTWdisplayUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'minPPTPTTTW' stored property
  //····················································································································

  final let minPPTPTTTW_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'minValueForOARdisplayUnit' stored property
  //····················································································································

  final let minValueForOARdisplayUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'minValueForOARinEBUnit' stored property
  //····················································································································

  final let minValueForOARinEBUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'minValueForPHDdisplayUnit' stored property
  //····················································································································

  final let minValueForPHDdisplayUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'minValueForPHDinEBUnit' stored property
  //····················································································································

  final let minValueForPHDinEBUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'minValueForBoardLimitWidthDisplayUnit' stored property
  //····················································································································

  final let minValueForBoardLimitWidthDisplayUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'minValueForBoardLimitWidth' stored property
  //····················································································································

  final let minValueForBoardLimitWidth_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'drillDataFileExtension' stored property
  //····················································································································

  final let drillDataFileExtension_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'signatureForERCChecking' transient property
  //····················································································································

  final let signatureForERCChecking_property = EBGenericTransientProperty <UInt32?> ()

  //····················································································································
  //   Observable toMany property: fileGenerationParameterArray
  //····················································································································

  private final var mObserversOf_fileGenerationParameterArray = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_fileGenerationParameterArray (_ inObserver : EBEvent) {
    self.mObserversOf_fileGenerationParameterArray.insert (inObserver)
    if let object = self.propval {
      object.fileGenerationParameterArray_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_fileGenerationParameterArray (_ inObserver : EBEvent) {
    self.mObserversOf_fileGenerationParameterArray.remove (inObserver)
    if let object = self.propval {
      object.fileGenerationParameterArray_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure selectedTab simple stored property
    self.selectedTab_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.selectedTab_property.selection {
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
  //--- Configure minPPTPTTTWdisplayUnit simple stored property
    self.minPPTPTTTWdisplayUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.minPPTPTTTWdisplayUnit_property.selection {
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
  //--- Configure minPPTPTTTW simple stored property
    self.minPPTPTTTW_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.minPPTPTTTW_property.selection {
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
  //--- Configure minValueForOARdisplayUnit simple stored property
    self.minValueForOARdisplayUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.minValueForOARdisplayUnit_property.selection {
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
  //--- Configure minValueForOARinEBUnit simple stored property
    self.minValueForOARinEBUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.minValueForOARinEBUnit_property.selection {
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
  //--- Configure minValueForPHDdisplayUnit simple stored property
    self.minValueForPHDdisplayUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.minValueForPHDdisplayUnit_property.selection {
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
  //--- Configure minValueForPHDinEBUnit simple stored property
    self.minValueForPHDinEBUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.minValueForPHDinEBUnit_property.selection {
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
  //--- Configure minValueForBoardLimitWidthDisplayUnit simple stored property
    self.minValueForBoardLimitWidthDisplayUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.minValueForBoardLimitWidthDisplayUnit_property.selection {
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
  //--- Configure minValueForBoardLimitWidth simple stored property
    self.minValueForBoardLimitWidth_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.minValueForBoardLimitWidth_property.selection {
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
  //--- Configure drillDataFileExtension simple stored property
    self.drillDataFileExtension_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.drillDataFileExtension_property.selection {
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
  //--- Configure signatureForERCChecking transient property
    self.signatureForERCChecking_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.signatureForERCChecking_property.selection {
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
//   TransientObject ArtworkRoot
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_ArtworkRoot : ReadOnlyObject_ArtworkRoot {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_ArtworkRoot? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_ArtworkRoot?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : ArtworkRoot? 
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

  override var selection : EBSelection < ArtworkRoot? > {
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

  override var propval : ArtworkRoot? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_ArtworkRoot
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_ArtworkRoot : ReadOnlyObject_ArtworkRoot {

  //····················································································································
 
  func setProp (_ inValue : ArtworkRoot?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_ArtworkRoot
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_ArtworkRoot : ReadWriteObject_ArtworkRoot {

  //····················································································································

  private var mModel : ReadWriteObject_ArtworkRoot? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_ArtworkRoot?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : ArtworkRoot?
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

  override func setProp (_ inValue : ArtworkRoot?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < ArtworkRoot? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : ArtworkRoot? {
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
//    StoredObject_ArtworkRoot 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_ArtworkRoot : ReadWriteObject_ArtworkRoot, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : ArtworkRoot) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : ArtworkRoot) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : ArtworkRoot) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : ArtworkRoot) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : ArtworkRoot?) {
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

  override var selection : EBSelection < ArtworkRoot? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : ArtworkRoot?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : ArtworkRoot? { return self.mInternalValue }

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


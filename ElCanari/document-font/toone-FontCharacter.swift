//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_FontCharacter 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_FontCharacter : ReadOnlyAbstractObjectProperty <FontCharacter> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : FontCharacter?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.codePoint_property.removeEBObserver (self.codePoint_property) // Stored property
    inOldValue?.advance_property.removeEBObserver (self.advance_property) // Stored property
    inOldValue?.mWarnsWhenNoSegment_property.removeEBObserver (self.mWarnsWhenNoSegment_property) // Stored property
    inOldValue?.mWarnsWhenAdvanceIsZero_property.removeEBObserver (self.mWarnsWhenAdvanceIsZero_property) // Stored property
    inOldValue?.segmentArrayForDrawing_property.removeEBObserver (self.segmentArrayForDrawing_property) // Transient property
    inOldValue?.gerberCode_property.removeEBObserver (self.gerberCode_property) // Transient property
    inOldValue?.gerberCodeInstructionCountMessage_property.removeEBObserver (self.gerberCodeInstructionCountMessage_property) // Transient property
    inOldValue?.issues_property.removeEBObserver (self.issues_property) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.codePoint_property.addEBObserver (self.codePoint_property) // Stored property
    self.mInternalValue?.advance_property.addEBObserver (self.advance_property) // Stored property
    self.mInternalValue?.mWarnsWhenNoSegment_property.addEBObserver (self.mWarnsWhenNoSegment_property) // Stored property
    self.mInternalValue?.mWarnsWhenAdvanceIsZero_property.addEBObserver (self.mWarnsWhenAdvanceIsZero_property) // Stored property
    self.mInternalValue?.segmentArrayForDrawing_property.addEBObserver (self.segmentArrayForDrawing_property) // Transient property
    self.mInternalValue?.gerberCode_property.addEBObserver (self.gerberCode_property) // Transient property
    self.mInternalValue?.gerberCodeInstructionCountMessage_property.addEBObserver (self.gerberCodeInstructionCountMessage_property) // Transient property
    self.mInternalValue?.issues_property.addEBObserver (self.issues_property) // Transient property
  }

  //····················································································································
  //   init
  //····················································································································

  override init () {
    super.init ()
    self.codePoint_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.codePoint_property.prop ?? .empty }
    self.codePoint_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.codePoint_property.setProp (inValue) }
    self.advance_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.advance_property.prop ?? .empty }
    self.advance_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.advance_property.setProp (inValue) }
    self.mWarnsWhenNoSegment_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mWarnsWhenNoSegment_property.prop ?? .empty }
    self.mWarnsWhenNoSegment_property.mWriteModelFunction = { [weak self] (inValue : Bool) in self?.mInternalValue?.mWarnsWhenNoSegment_property.setProp (inValue) }
    self.mWarnsWhenAdvanceIsZero_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mWarnsWhenAdvanceIsZero_property.prop ?? .empty }
    self.mWarnsWhenAdvanceIsZero_property.mWriteModelFunction = { [weak self] (inValue : Bool) in self?.mInternalValue?.mWarnsWhenAdvanceIsZero_property.setProp (inValue) }
    self.segmentArrayForDrawing_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.segmentArrayForDrawing_property.prop ?? .empty }
    self.gerberCode_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.gerberCode_property.prop ?? .empty }
    self.gerberCodeInstructionCountMessage_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.gerberCodeInstructionCountMessage_property.prop ?? .empty }
    self.issues_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.issues_property.prop ?? .empty }
  }

  //····················································································································
  //   Proxy of 'codePoint' stored property
  //····················································································································

  let codePoint_property = EBPropertyProxy_Int ()

  var codePoint_property_selection : EBSelection <Int> {
    switch (self.codePoint_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'advance' stored property
  //····················································································································

  let advance_property = EBPropertyProxy_Int ()

  var advance_property_selection : EBSelection <Int> {
    switch (self.advance_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mWarnsWhenNoSegment' stored property
  //····················································································································

  let mWarnsWhenNoSegment_property = EBPropertyProxy_Bool ()

  var mWarnsWhenNoSegment_property_selection : EBSelection <Bool> {
    switch (self.mWarnsWhenNoSegment_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mWarnsWhenAdvanceIsZero' stored property
  //····················································································································

  let mWarnsWhenAdvanceIsZero_property = EBPropertyProxy_Bool ()

  var mWarnsWhenAdvanceIsZero_property_selection : EBSelection <Bool> {
    switch (self.mWarnsWhenAdvanceIsZero_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'segmentArrayForDrawing' transient property
  //····················································································································

  let segmentArrayForDrawing_property = EBTransientProperty_CharacterSegmentListClass ()

  var segmentArrayForDrawing_property_selection : EBSelection <CharacterSegmentListClass> {
    switch (self.segmentArrayForDrawing_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'gerberCode' transient property
  //····················································································································

  let gerberCode_property = EBTransientProperty_CharacterGerberCodeClass ()

  var gerberCode_property_selection : EBSelection <CharacterGerberCodeClass> {
    switch (self.gerberCode_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'gerberCodeInstructionCountMessage' transient property
  //····················································································································

  let gerberCodeInstructionCountMessage_property = EBTransientProperty_String ()

  var gerberCodeInstructionCountMessage_property_selection : EBSelection <String> {
    switch (self.gerberCodeInstructionCountMessage_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'issues' transient property
  //····················································································································

  let issues_property = EBTransientProperty_CanariIssueArray ()

  var issues_property_selection : EBSelection <CanariIssueArray> {
    switch (self.issues_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observable toMany property: segments
  //····················································································································

  private var mObserversOf_segments = EBWeakEventSet ()

  //····················································································································

  var segments_property_selection : EBSelection <[SegmentForFontCharacter]> {
    if let model = self.propval {
      switch (model.segments_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .empty
    }
  }

  //····················································································································

  final func addEBObserverOf_segments (_ inObserver : EBEvent) {
    self.mObserversOf_segments.insert (inObserver)
    if let object = self.propval {
      object.segments_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_segments (_ inObserver : EBEvent) {
    self.mObserversOf_segments.remove (inObserver)
    if let object = self.propval {
      object.segments_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientObject FontCharacter
//----------------------------------------------------------------------------------------------------------------------

class TransientObject_FontCharacter : ReadOnlyObject_FontCharacter {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_FontCharacter? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_FontCharacter?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : FontCharacter? 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.prop {
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

  override var prop : EBSelection < FontCharacter? > {
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

  override var propval : FontCharacter? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_FontCharacter
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_FontCharacter : ReadOnlyObject_FontCharacter {

  //····················································································································
 
  func setProp (_ inValue : FontCharacter?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_FontCharacter
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_FontCharacter : ReadWriteObject_FontCharacter {

  //····················································································································

  private var mModel : ReadWriteObject_FontCharacter? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_FontCharacter?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : FontCharacter?
    if let model = self.mModel {
      switch model.prop {
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

  override func setProp (_ inValue : FontCharacter?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < FontCharacter? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : FontCharacter? {
    if let model = self.mModel {
      switch model.prop {
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
//    StoredObject_FontCharacter 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_FontCharacter : ReadWriteObject_FontCharacter, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

 //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : FontCharacter) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : FontCharacter) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : FontCharacter) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : FontCharacter) -> Void) {
    self.mSetOppositeRelationship = inSetter
    self.mResetOppositeRelationship = inResetter
  }
  
  //····················································································································

  var mValueExplorer : NSButton? {
    didSet {
      if let unwrappedExplorer = self.mValueExplorer {
        switch self.prop {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : FontCharacter?) {
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

  override var prop : EBSelection < FontCharacter? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : FontCharacter?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : FontCharacter? { return self.mInternalValue }

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


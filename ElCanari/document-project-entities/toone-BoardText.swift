//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_BoardText 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_BoardText : ReadOnlyAbstractObjectProperty <BoardText> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : BoardText?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
 //     oldValue.mX_property.removeEBObserversFrom (&self.mObserversOf_mX) // Stored property
      oldValue.mX_property.removeEBObserver (self.mX_property) // Stored property
 //     oldValue.mY_property.removeEBObserversFrom (&self.mObserversOf_mY) // Stored property
      oldValue.mY_property.removeEBObserver (self.mY_property) // Stored property
 //     oldValue.mFontSize_property.removeEBObserversFrom (&self.mObserversOf_mFontSize) // Stored property
      oldValue.mFontSize_property.removeEBObserver (self.mFontSize_property) // Stored property
 //     oldValue.mLayer_property.removeEBObserversFrom (&self.mObserversOf_mLayer) // Stored property
      oldValue.mLayer_property.removeEBObserver (self.mLayer_property) // Stored property
 //     oldValue.mText_property.removeEBObserversFrom (&self.mObserversOf_mText) // Stored property
      oldValue.mText_property.removeEBObserver (self.mText_property) // Stored property
 //     oldValue.mHorizontalAlignment_property.removeEBObserversFrom (&self.mObserversOf_mHorizontalAlignment) // Stored property
      oldValue.mHorizontalAlignment_property.removeEBObserver (self.mHorizontalAlignment_property) // Stored property
 //     oldValue.mVerticalAlignment_property.removeEBObserversFrom (&self.mObserversOf_mVerticalAlignment) // Stored property
      oldValue.mVerticalAlignment_property.removeEBObserver (self.mVerticalAlignment_property) // Stored property
 //     oldValue.mRotation_property.removeEBObserversFrom (&self.mObserversOf_mRotation) // Stored property
      oldValue.mRotation_property.removeEBObserver (self.mRotation_property) // Stored property
 //     oldValue.mWeight_property.removeEBObserversFrom (&self.mObserversOf_mWeight) // Stored property
      oldValue.mWeight_property.removeEBObserver (self.mWeight_property) // Stored property
 //     oldValue.mOblique_property.removeEBObserversFrom (&self.mObserversOf_mOblique) // Stored property
      oldValue.mOblique_property.removeEBObserver (self.mOblique_property) // Stored property
 //     oldValue.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      oldValue.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
 //     oldValue.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
      oldValue.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
 //     oldValue.fontName_property.removeEBObserversFrom (&self.mObserversOf_fontName) // Transient property
      oldValue.fontName_property.removeEBObserver (self.fontName_property) // Transient property
 //     oldValue.signatureForERCChecking_property.removeEBObserversFrom (&self.mObserversOf_signatureForERCChecking) // Transient property
      oldValue.signatureForERCChecking_property.removeEBObserver (self.signatureForERCChecking_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
 //     newValue.mX_property.addEBObserversFrom (&self.mObserversOf_mX) // Stored property
      newValue.mX_property.addEBObserver (self.mX_property) // Stored property
 //     newValue.mY_property.addEBObserversFrom (&self.mObserversOf_mY) // Stored property
      newValue.mY_property.addEBObserver (self.mY_property) // Stored property
 //     newValue.mFontSize_property.addEBObserversFrom (&self.mObserversOf_mFontSize) // Stored property
      newValue.mFontSize_property.addEBObserver (self.mFontSize_property) // Stored property
 //     newValue.mLayer_property.addEBObserversFrom (&self.mObserversOf_mLayer) // Stored property
      newValue.mLayer_property.addEBObserver (self.mLayer_property) // Stored property
 //     newValue.mText_property.addEBObserversFrom (&self.mObserversOf_mText) // Stored property
      newValue.mText_property.addEBObserver (self.mText_property) // Stored property
 //     newValue.mHorizontalAlignment_property.addEBObserversFrom (&self.mObserversOf_mHorizontalAlignment) // Stored property
      newValue.mHorizontalAlignment_property.addEBObserver (self.mHorizontalAlignment_property) // Stored property
 //     newValue.mVerticalAlignment_property.addEBObserversFrom (&self.mObserversOf_mVerticalAlignment) // Stored property
      newValue.mVerticalAlignment_property.addEBObserver (self.mVerticalAlignment_property) // Stored property
 //     newValue.mRotation_property.addEBObserversFrom (&self.mObserversOf_mRotation) // Stored property
      newValue.mRotation_property.addEBObserver (self.mRotation_property) // Stored property
 //     newValue.mWeight_property.addEBObserversFrom (&self.mObserversOf_mWeight) // Stored property
      newValue.mWeight_property.addEBObserver (self.mWeight_property) // Stored property
 //     newValue.mOblique_property.addEBObserversFrom (&self.mObserversOf_mOblique) // Stored property
      newValue.mOblique_property.addEBObserver (self.mOblique_property) // Stored property
  //    newValue.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      newValue.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
  //    newValue.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
      newValue.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
  //    newValue.fontName_property.addEBObserversFrom (&self.mObserversOf_fontName) // Transient property
      newValue.fontName_property.addEBObserver (self.fontName_property) // Transient property
  //    newValue.signatureForERCChecking_property.addEBObserversFrom (&self.mObserversOf_signatureForERCChecking) // Transient property
      newValue.signatureForERCChecking_property.addEBObserver (self.signatureForERCChecking_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mX' stored property
  //····················································································································

  final let mX_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_mX (_ inObserver : EBEvent) {
    self.mX_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mX (_ inObserver : EBEvent) {
    self.mX_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mY' stored property
  //····················································································································

  final let mY_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_mY (_ inObserver : EBEvent) {
    self.mY_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mY (_ inObserver : EBEvent) {
    self.mY_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mFontSize' stored property
  //····················································································································

  final let mFontSize_property = EBGenericTransientProperty <Double?> ()

  //····················································································································

  final func addEBObserverOf_mFontSize (_ inObserver : EBEvent) {
    self.mFontSize_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mFontSize (_ inObserver : EBEvent) {
    self.mFontSize_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mLayer' stored property
  //····················································································································

  final let mLayer_property = EBGenericTransientProperty <BoardTextLayer?> ()

  //····················································································································

  final func addEBObserverOf_mLayer (_ inObserver : EBEvent) {
    self.mLayer_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mLayer (_ inObserver : EBEvent) {
    self.mLayer_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mText' stored property
  //····················································································································

  final let mText_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func addEBObserverOf_mText (_ inObserver : EBEvent) {
    self.mText_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mText (_ inObserver : EBEvent) {
    self.mText_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mHorizontalAlignment' stored property
  //····················································································································

  final let mHorizontalAlignment_property = EBGenericTransientProperty <HorizontalAlignment?> ()

  //····················································································································

  final func addEBObserverOf_mHorizontalAlignment (_ inObserver : EBEvent) {
    self.mHorizontalAlignment_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mHorizontalAlignment (_ inObserver : EBEvent) {
    self.mHorizontalAlignment_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mVerticalAlignment' stored property
  //····················································································································

  final let mVerticalAlignment_property = EBGenericTransientProperty <BoardTextVerticalAlignment?> ()

  //····················································································································

  final func addEBObserverOf_mVerticalAlignment (_ inObserver : EBEvent) {
    self.mVerticalAlignment_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mVerticalAlignment (_ inObserver : EBEvent) {
    self.mVerticalAlignment_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mRotation' stored property
  //····················································································································

  final let mRotation_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_mRotation (_ inObserver : EBEvent) {
    self.mRotation_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mRotation (_ inObserver : EBEvent) {
    self.mRotation_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mWeight' stored property
  //····················································································································

  final let mWeight_property = EBGenericTransientProperty <Double?> ()

  //····················································································································

  final func addEBObserverOf_mWeight (_ inObserver : EBEvent) {
    self.mWeight_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mWeight (_ inObserver : EBEvent) {
    self.mWeight_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mOblique' stored property
  //····················································································································

  final let mOblique_property = EBGenericTransientProperty <Bool?> ()

  //····················································································································

  final func addEBObserverOf_mOblique (_ inObserver : EBEvent) {
    self.mOblique_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mOblique (_ inObserver : EBEvent) {
    self.mOblique_property.removeEBObserver (inObserver)
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
  //   Observers of 'fontName' transient property
  //····················································································································

  final let fontName_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func addEBObserverOf_fontName (_ inObserver : EBEvent) {
    self.fontName_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_fontName (_ inObserver : EBEvent) {
    self.fontName_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'signatureForERCChecking' transient property
  //····················································································································

  final let signatureForERCChecking_property = EBGenericTransientProperty <UInt32?> ()

  //····················································································································

  final func addEBObserverOf_signatureForERCChecking (_ inObserver : EBEvent) {
    self.signatureForERCChecking_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_signatureForERCChecking (_ inObserver : EBEvent) {
    self.signatureForERCChecking_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure mX simple stored property
    self.mX_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mX_property.selection {
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
  //--- Configure mY simple stored property
    self.mY_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mY_property.selection {
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
  //--- Configure mFontSize simple stored property
    self.mFontSize_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mFontSize_property.selection {
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
  //--- Configure mLayer simple stored property
    self.mLayer_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mLayer_property.selection {
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
  //--- Configure mText simple stored property
    self.mText_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mText_property.selection {
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
  //--- Configure mHorizontalAlignment simple stored property
    self.mHorizontalAlignment_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mHorizontalAlignment_property.selection {
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
  //--- Configure mVerticalAlignment simple stored property
    self.mVerticalAlignment_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mVerticalAlignment_property.selection {
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
  //--- Configure mRotation simple stored property
    self.mRotation_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mRotation_property.selection {
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
  //--- Configure mWeight simple stored property
    self.mWeight_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mWeight_property.selection {
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
  //--- Configure mOblique simple stored property
    self.mOblique_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mOblique_property.selection {
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
  //--- Configure fontName transient property
    self.fontName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.fontName_property.selection {
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
//   TransientObject BoardText
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_BoardText : ReadOnlyObject_BoardText {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_BoardText? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_BoardText?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : BoardText? 
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

  override var selection : EBSelection < BoardText? > {
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

  override var propval : BoardText? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_BoardText
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_BoardText : ReadOnlyObject_BoardText {

  //····················································································································
 
  func setProp (_ inValue : BoardText?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_BoardText
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_BoardText : ReadWriteObject_BoardText {

  //····················································································································

  private var mModel : ReadWriteObject_BoardText? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_BoardText?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : BoardText?
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

  override func setProp (_ inValue : BoardText?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < BoardText? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : BoardText? {
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
//    StoredObject_BoardText 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_BoardText : ReadWriteObject_BoardText, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : BoardText) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : BoardText) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : BoardText) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : BoardText) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : BoardText?) {
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

  override var selection : EBSelection < BoardText? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : BoardText?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : BoardText? { return self.mInternalValue }

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


//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_BoardRestrictRectangle 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_BoardRestrictRectangle : ReadOnlyAbstractObjectProperty <BoardRestrictRectangle> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : BoardRestrictRectangle?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
  //--- Add observers to added objects
  }

  //····················································································································
  //   Observers of 'mY' stored property
  //····················································································································

  private final var mY_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_mY = EBWeakEventSet ()

  //····················································································································

  final var mY_property_selection : EBSelection <Int?> { // §
    return self.mY_property.selection
/*    if let model = self.propval {
      switch (model.mY_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    } */
  }

  //····················································································································

  final func addEBObserverOf_mY (_ inObserver : EBEvent) {
    self.mY_property.addEBObserver (inObserver)
/*    self.mObserversOf_mY.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mY_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mY (_ inObserver : EBEvent) {
    self.mY_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mY.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mY_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'mWidth' stored property
  //····················································································································

  private final var mWidth_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_mWidth = EBWeakEventSet ()

  //····················································································································

  final var mWidth_property_selection : EBSelection <Int?> { // §
    return self.mWidth_property.selection
/*    if let model = self.propval {
      switch (model.mWidth_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    } */
  }

  //····················································································································

  final func addEBObserverOf_mWidth (_ inObserver : EBEvent) {
    self.mWidth_property.addEBObserver (inObserver)
/*    self.mObserversOf_mWidth.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mWidth_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mWidth (_ inObserver : EBEvent) {
    self.mWidth_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mWidth.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mWidth_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'mHeight' stored property
  //····················································································································

  private final var mHeight_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_mHeight = EBWeakEventSet ()

  //····················································································································

  final var mHeight_property_selection : EBSelection <Int?> { // §
    return self.mHeight_property.selection
/*    if let model = self.propval {
      switch (model.mHeight_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    } */
  }

  //····················································································································

  final func addEBObserverOf_mHeight (_ inObserver : EBEvent) {
    self.mHeight_property.addEBObserver (inObserver)
/*    self.mObserversOf_mHeight.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mHeight_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mHeight (_ inObserver : EBEvent) {
    self.mHeight_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mHeight.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mHeight_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'mIsInFrontLayer' stored property
  //····················································································································

  private final var mIsInFrontLayer_property = EBGenericTransientProperty <Bool?> ()
//  private final var mObserversOf_mIsInFrontLayer = EBWeakEventSet ()

  //····················································································································

  final var mIsInFrontLayer_property_selection : EBSelection <Bool?> { // §
    return self.mIsInFrontLayer_property.selection
/*    if let model = self.propval {
      switch (model.mIsInFrontLayer_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    } */
  }

  //····················································································································

  final func addEBObserverOf_mIsInFrontLayer (_ inObserver : EBEvent) {
    self.mIsInFrontLayer_property.addEBObserver (inObserver)
/*    self.mObserversOf_mIsInFrontLayer.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mIsInFrontLayer_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mIsInFrontLayer (_ inObserver : EBEvent) {
    self.mIsInFrontLayer_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mIsInFrontLayer.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mIsInFrontLayer_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'mIsInBackLayer' stored property
  //····················································································································

  private final var mIsInBackLayer_property = EBGenericTransientProperty <Bool?> ()
//  private final var mObserversOf_mIsInBackLayer = EBWeakEventSet ()

  //····················································································································

  final var mIsInBackLayer_property_selection : EBSelection <Bool?> { // §
    return self.mIsInBackLayer_property.selection
/*    if let model = self.propval {
      switch (model.mIsInBackLayer_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    } */
  }

  //····················································································································

  final func addEBObserverOf_mIsInBackLayer (_ inObserver : EBEvent) {
    self.mIsInBackLayer_property.addEBObserver (inObserver)
/*    self.mObserversOf_mIsInBackLayer.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mIsInBackLayer_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mIsInBackLayer (_ inObserver : EBEvent) {
    self.mIsInBackLayer_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mIsInBackLayer.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mIsInBackLayer_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'mX' stored property
  //····················································································································

  private final var mX_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_mX = EBWeakEventSet ()

  //····················································································································

  final var mX_property_selection : EBSelection <Int?> { // §
    return self.mX_property.selection
/*    if let model = self.propval {
      switch (model.mX_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    } */
  }

  //····················································································································

  final func addEBObserverOf_mX (_ inObserver : EBEvent) {
    self.mX_property.addEBObserver (inObserver)
/*    self.mObserversOf_mX.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mX_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mX (_ inObserver : EBEvent) {
    self.mX_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mX.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mX_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  private final var objectDisplay_property = EBGenericTransientProperty <EBShape?> ()
//  private final var mObserversOf_objectDisplay = EBWeakEventSet ()

  //····················································································································

  final var objectDisplay_property_selection : EBSelection <EBShape?> {
    return self.objectDisplay_property.selection
/*    if let model = self.propval {
      switch (model.objectDisplay_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }*/
  }

  //····················································································································

  final func addEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.objectDisplay_property.addEBObserver (inObserver)
/*    self.mObserversOf_objectDisplay.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.objectDisplay_property.removeEBObserver (inObserver)
/*    self.mObserversOf_objectDisplay.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  private final var selectionDisplay_property = EBGenericTransientProperty <EBShape?> ()
//  private final var mObserversOf_selectionDisplay = EBWeakEventSet ()

  //····················································································································

  final var selectionDisplay_property_selection : EBSelection <EBShape?> {
    return self.selectionDisplay_property.selection
/*    if let model = self.propval {
      switch (model.selectionDisplay_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }*/
  }

  //····················································································································

  final func addEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.selectionDisplay_property.addEBObserver (inObserver)
/*    self.mObserversOf_selectionDisplay.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.selectionDisplay_property.removeEBObserver (inObserver)
/*    self.mObserversOf_selectionDisplay.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'signatureForERCChecking' transient property
  //····················································································································

  private final var signatureForERCChecking_property = EBGenericTransientProperty <UInt32?> ()
//  private final var mObserversOf_signatureForERCChecking = EBWeakEventSet ()

  //····················································································································

  final var signatureForERCChecking_property_selection : EBSelection <UInt32?> {
    return self.signatureForERCChecking_property.selection
/*    if let model = self.propval {
      switch (model.signatureForERCChecking_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }*/
  }

  //····················································································································

  final func addEBObserverOf_signatureForERCChecking (_ inObserver : EBEvent) {
    self.signatureForERCChecking_property.addEBObserver (inObserver)
/*    self.mObserversOf_signatureForERCChecking.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.signatureForERCChecking_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_signatureForERCChecking (_ inObserver : EBEvent) {
    self.signatureForERCChecking_property.removeEBObserver (inObserver)
/*    self.mObserversOf_signatureForERCChecking.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.signatureForERCChecking_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
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
    self.none_property.addEBObserver (self.mY_property)
  //--- Configure mWidth simple stored property
    self.mWidth_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mWidth_property.selection {
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
    self.none_property.addEBObserver (self.mWidth_property)
  //--- Configure mHeight simple stored property
    self.mHeight_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mHeight_property.selection {
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
    self.none_property.addEBObserver (self.mHeight_property)
  //--- Configure mIsInFrontLayer simple stored property
    self.mIsInFrontLayer_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mIsInFrontLayer_property.selection {
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
    self.none_property.addEBObserver (self.mIsInFrontLayer_property)
  //--- Configure mIsInBackLayer simple stored property
    self.mIsInBackLayer_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mIsInBackLayer_property.selection {
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
    self.none_property.addEBObserver (self.mIsInBackLayer_property)
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
    self.none_property.addEBObserver (self.mX_property)
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
    self.none_property.addEBObserver (self.objectDisplay_property)
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
    self.none_property.addEBObserver (self.selectionDisplay_property)
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
    self.none_property.addEBObserver (self.signatureForERCChecking_property)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject BoardRestrictRectangle
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_BoardRestrictRectangle : ReadOnlyObject_BoardRestrictRectangle {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_BoardRestrictRectangle? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_BoardRestrictRectangle?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : BoardRestrictRectangle? 
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

  override var selection : EBSelection < BoardRestrictRectangle? > {
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

  override var propval : BoardRestrictRectangle? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_BoardRestrictRectangle
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_BoardRestrictRectangle : ReadOnlyObject_BoardRestrictRectangle {

  //····················································································································
 
  func setProp (_ inValue : BoardRestrictRectangle?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_BoardRestrictRectangle
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_BoardRestrictRectangle : ReadWriteObject_BoardRestrictRectangle {

  //····················································································································

  private var mModel : ReadWriteObject_BoardRestrictRectangle? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_BoardRestrictRectangle?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : BoardRestrictRectangle?
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

  override func setProp (_ inValue : BoardRestrictRectangle?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < BoardRestrictRectangle? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : BoardRestrictRectangle? {
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
//    StoredObject_BoardRestrictRectangle 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_BoardRestrictRectangle : ReadWriteObject_BoardRestrictRectangle, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : BoardRestrictRectangle) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : BoardRestrictRectangle) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : BoardRestrictRectangle) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : BoardRestrictRectangle) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : BoardRestrictRectangle?) {
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

  override var selection : EBSelection < BoardRestrictRectangle? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : BoardRestrictRectangle?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : BoardRestrictRectangle? { return self.mInternalValue }

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


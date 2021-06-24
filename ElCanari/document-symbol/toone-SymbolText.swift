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
 //     oldValue.text_property.removeEBObserversFrom (&self.mObserversOf_text) // Stored property
 //     oldValue.horizontalAlignment_property.removeEBObserversFrom (&self.mObserversOf_horizontalAlignment) // Stored property
 //     oldValue.x_property.removeEBObserversFrom (&self.mObserversOf_x) // Stored property
      oldValue.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      oldValue.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
      oldValue.issues_property.removeEBObserversFrom (&self.mObserversOf_issues) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
 //     newValue.y_property.addEBObserversFrom (&self.mObserversOf_y) // Stored property
 //     newValue.text_property.addEBObserversFrom (&self.mObserversOf_text) // Stored property
 //     newValue.horizontalAlignment_property.addEBObserversFrom (&self.mObserversOf_horizontalAlignment) // Stored property
 //     newValue.x_property.addEBObserversFrom (&self.mObserversOf_x) // Stored property
      newValue.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      newValue.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
      newValue.issues_property.addEBObserversFrom (&self.mObserversOf_issues) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'y' stored property
  //····················································································································

  private final var y_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_y = EBWeakEventSet ()

  //····················································································································

  final var y_property_selection : EBSelection <Int?> { // §
    return self.y_property.selection
/*    if let model = self.propval {
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
    } */
  }

  //····················································································································

  final func addEBObserverOf_y (_ inObserver : EBEvent) {
    self.y_property.addEBObserver (inObserver)
/*    self.mObserversOf_y.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.y_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_y (_ inObserver : EBEvent) {
    self.y_property.removeEBObserver (inObserver)
/*    self.mObserversOf_y.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.y_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'text' stored property
  //····················································································································

  private final var text_property = EBGenericTransientProperty <String?> ()
//  private final var mObserversOf_text = EBWeakEventSet ()

  //····················································································································

  final var text_property_selection : EBSelection <String?> { // §
    return self.text_property.selection
/*    if let model = self.propval {
      switch (model.text_property_selection) {
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

  final func addEBObserverOf_text (_ inObserver : EBEvent) {
    self.text_property.addEBObserver (inObserver)
/*    self.mObserversOf_text.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.text_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_text (_ inObserver : EBEvent) {
    self.text_property.removeEBObserver (inObserver)
/*    self.mObserversOf_text.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.text_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'horizontalAlignment' stored property
  //····················································································································

  private final var horizontalAlignment_property = EBGenericTransientProperty <HorizontalAlignment?> ()
//  private final var mObserversOf_horizontalAlignment = EBWeakEventSet ()

  //····················································································································

  final var horizontalAlignment_property_selection : EBSelection <HorizontalAlignment?> { // §
    return self.horizontalAlignment_property.selection
/*    if let model = self.propval {
      switch (model.horizontalAlignment_property_selection) {
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

  final func addEBObserverOf_horizontalAlignment (_ inObserver : EBEvent) {
    self.horizontalAlignment_property.addEBObserver (inObserver)
/*    self.mObserversOf_horizontalAlignment.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.horizontalAlignment_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_horizontalAlignment (_ inObserver : EBEvent) {
    self.horizontalAlignment_property.removeEBObserver (inObserver)
/*    self.mObserversOf_horizontalAlignment.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.horizontalAlignment_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'x' stored property
  //····················································································································

  private final var x_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_x = EBWeakEventSet ()

  //····················································································································

  final var x_property_selection : EBSelection <Int?> { // §
    return self.x_property.selection
/*    if let model = self.propval {
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
    } */
  }

  //····················································································································

  final func addEBObserverOf_x (_ inObserver : EBEvent) {
    self.x_property.addEBObserver (inObserver)
/*    self.mObserversOf_x.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.x_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_x (_ inObserver : EBEvent) {
    self.x_property.removeEBObserver (inObserver)
/*    self.mObserversOf_x.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.x_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  private final var mObserversOf_objectDisplay = EBWeakEventSet ()

  //····················································································································

  final var objectDisplay_property_selection : EBSelection <EBShape?> {
    if let model = self.propval {
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
    }
  }

  //····················································································································

  final func addEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_objectDisplay.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_objectDisplay.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  private final var mObserversOf_selectionDisplay = EBWeakEventSet ()

  //····················································································································

  final var selectionDisplay_property_selection : EBSelection <EBShape?> {
    if let model = self.propval {
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
    }
  }

  //····················································································································

  final func addEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_selectionDisplay.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_selectionDisplay.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  private final var mObserversOf_issues = EBWeakEventSet ()

  //····················································································································

  final var issues_property_selection : EBSelection <CanariIssueArray?> {
    if let model = self.propval {
      switch (model.issues_property_selection) {
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

  final func addEBObserverOf_issues (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_issues.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.issues_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_issues (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_issues.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.issues_property.removeEBObserver (inObserver)
    }
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
    self.none_property.addEBObserver (self.y_property)
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
    self.none_property.addEBObserver (self.text_property)
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
    self.none_property.addEBObserver (self.horizontalAlignment_property)
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
    self.none_property.addEBObserver (self.x_property)
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


//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_SchematicObject 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_SchematicObject : ReadOnlyAbstractObjectProperty <SchematicObject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SchematicObject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
  //--- Add observers to added objects
  }

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  private final var issues_property = EBGenericTransientProperty <CanariIssueArray?> ()
//  private final var mObserversOf_issues = EBWeakEventSet ()

  //····················································································································

  final var issues_property_selection : EBSelection <CanariIssueArray?> {
    return self.issues_property.selection
/*    if let model = self.propval {
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
    }*/
  }

  //····················································································································

  final func addEBObserverOf_issues (_ inObserver : EBEvent) {
    self.issues_property.addEBObserver (inObserver)
/*    self.mObserversOf_issues.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.issues_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_issues (_ inObserver : EBEvent) {
    self.issues_property.removeEBObserver (inObserver)
/*    self.mObserversOf_issues.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.issues_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'connectedPoints' transient property
  //····················································································································

  private final var connectedPoints_property = EBGenericTransientProperty <CanariPointArray?> ()
//  private final var mObserversOf_connectedPoints = EBWeakEventSet ()

  //····················································································································

  final var connectedPoints_property_selection : EBSelection <CanariPointArray?> {
    return self.connectedPoints_property.selection
/*    if let model = self.propval {
      switch (model.connectedPoints_property_selection) {
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

  final func addEBObserverOf_connectedPoints (_ inObserver : EBEvent) {
    self.connectedPoints_property.addEBObserver (inObserver)
/*    self.mObserversOf_connectedPoints.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.connectedPoints_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_connectedPoints (_ inObserver : EBEvent) {
    self.connectedPoints_property.removeEBObserver (inObserver)
/*    self.mObserversOf_connectedPoints.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.connectedPoints_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'sheetDescriptor' transient property
  //····················································································································

  private final var sheetDescriptor_property = EBGenericTransientProperty <SchematicSheetDescriptor?> ()
//  private final var mObserversOf_sheetDescriptor = EBWeakEventSet ()

  //····················································································································

  final var sheetDescriptor_property_selection : EBSelection <SchematicSheetDescriptor?> {
    return self.sheetDescriptor_property.selection
/*    if let model = self.propval {
      switch (model.sheetDescriptor_property_selection) {
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

  final func addEBObserverOf_sheetDescriptor (_ inObserver : EBEvent) {
    self.sheetDescriptor_property.addEBObserver (inObserver)
/*    self.mObserversOf_sheetDescriptor.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.sheetDescriptor_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_sheetDescriptor (_ inObserver : EBEvent) {
    self.sheetDescriptor_property.removeEBObserver (inObserver)
/*    self.mObserversOf_sheetDescriptor.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.sheetDescriptor_property.removeEBObserver (inObserver)
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
  //   Observers of 'isPlacedInSchematic' transient property
  //····················································································································

  private final var isPlacedInSchematic_property = EBGenericTransientProperty <Bool?> ()
//  private final var mObserversOf_isPlacedInSchematic = EBWeakEventSet ()

  //····················································································································

  final var isPlacedInSchematic_property_selection : EBSelection <Bool?> {
    return self.isPlacedInSchematic_property.selection
/*    if let model = self.propval {
      switch (model.isPlacedInSchematic_property_selection) {
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

  final func addEBObserverOf_isPlacedInSchematic (_ inObserver : EBEvent) {
    self.isPlacedInSchematic_property.addEBObserver (inObserver)
/*    self.mObserversOf_isPlacedInSchematic.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.isPlacedInSchematic_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_isPlacedInSchematic (_ inObserver : EBEvent) {
    self.isPlacedInSchematic_property.removeEBObserver (inObserver)
/*    self.mObserversOf_isPlacedInSchematic.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.isPlacedInSchematic_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
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
    self.none_property.addEBObserver (self.issues_property)
  //--- Configure connectedPoints transient property
    self.connectedPoints_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.connectedPoints_property.selection {
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
    self.none_property.addEBObserver (self.connectedPoints_property)
  //--- Configure sheetDescriptor transient property
    self.sheetDescriptor_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.sheetDescriptor_property.selection {
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
    self.none_property.addEBObserver (self.sheetDescriptor_property)
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
  //--- Configure isPlacedInSchematic transient property
    self.isPlacedInSchematic_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.isPlacedInSchematic_property.selection {
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
    self.none_property.addEBObserver (self.isPlacedInSchematic_property)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject SchematicObject
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_SchematicObject : ReadOnlyObject_SchematicObject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_SchematicObject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_SchematicObject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : SchematicObject? 
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

  override var selection : EBSelection < SchematicObject? > {
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

  override var propval : SchematicObject? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_SchematicObject
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_SchematicObject : ReadOnlyObject_SchematicObject {

  //····················································································································
 
  func setProp (_ inValue : SchematicObject?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_SchematicObject
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_SchematicObject : ReadWriteObject_SchematicObject {

  //····················································································································

  private var mModel : ReadWriteObject_SchematicObject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_SchematicObject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : SchematicObject?
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

  override func setProp (_ inValue : SchematicObject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < SchematicObject? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SchematicObject? {
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
//    StoredObject_SchematicObject 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_SchematicObject : ReadWriteObject_SchematicObject, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SchematicObject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SchematicObject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SchematicObject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SchematicObject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : SchematicObject?) {
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

  override var selection : EBSelection < SchematicObject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : SchematicObject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : SchematicObject? { return self.mInternalValue }

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


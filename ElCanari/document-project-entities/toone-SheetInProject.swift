//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_SheetInProject : ReadOnlyAbstractObjectProperty <SheetInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SheetInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.mSheetTitle_property.removeEBObserver (self.mSheetTitle_property) // Stored property
      oldValue.issues_property.removeEBObserver (self.issues_property) // Transient property
      oldValue.connectedPoints_property.removeEBObserver (self.connectedPoints_property) // Transient property
      oldValue.connexionWarnings_property.removeEBObserver (self.connexionWarnings_property) // Transient property
      oldValue.connexionErrors_property.removeEBObserver (self.connexionErrors_property) // Transient property
      oldValue.sheetDescriptor_property.removeEBObserver (self.sheetDescriptor_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.mSheetTitle_property.addEBObserver (self.mSheetTitle_property) // Stored property
      newValue.issues_property.addEBObserver (self.issues_property) // Transient property
      newValue.connectedPoints_property.addEBObserver (self.connectedPoints_property) // Transient property
      newValue.connexionWarnings_property.addEBObserver (self.connexionWarnings_property) // Transient property
      newValue.connexionErrors_property.addEBObserver (self.connexionErrors_property) // Transient property
      newValue.sheetDescriptor_property.addEBObserver (self.sheetDescriptor_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mSheetTitle' stored property
  //····················································································································

  final let mSheetTitle_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  final let issues_property = EBGenericTransientProperty <CanariIssueArray?> ()

  //····················································································································
  //   Observers of 'connectedPoints' transient property
  //····················································································································

  final let connectedPoints_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   Observers of 'connexionWarnings' transient property
  //····················································································································

  final let connexionWarnings_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'connexionErrors' transient property
  //····················································································································

  final let connexionErrors_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'sheetDescriptor' transient property
  //····················································································································

  final let sheetDescriptor_property = EBGenericTransientProperty <SchematicSheetDescriptor?> ()

  //····················································································································
  //   Observable toMany property: mObjects
  //····················································································································

  private final var mObserversOf_mObjects = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mObjects (_ inObserver : EBEvent) {
    self.mObserversOf_mObjects.insert (inObserver)
    if let object = self.propval {
      object.mObjects_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mObjects (_ inObserver : EBEvent) {
    self.mObserversOf_mObjects.remove (inObserver)
    if let object = self.propval {
      object.mObjects_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observable toMany property: mPoints
  //····················································································································

  private final var mObserversOf_mPoints = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mPoints (_ inObserver : EBEvent) {
    self.mObserversOf_mPoints.insert (inObserver)
    if let object = self.propval {
      object.mPoints_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mPoints (_ inObserver : EBEvent) {
    self.mObserversOf_mPoints.remove (inObserver)
    if let object = self.propval {
      object.mPoints_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   INIT
  //····················································································································

  override init () {
    super.init ()
  //--- Configure mSheetTitle simple stored property
    self.mSheetTitle_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mSheetTitle_property.selection {
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
  //--- Configure connexionWarnings transient property
    self.connexionWarnings_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.connexionWarnings_property.selection {
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
  //--- Configure connexionErrors transient property
    self.connexionErrors_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.connexionErrors_property.selection {
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
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   TransientObject SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientObject_SheetInProject : ReadOnlyObject_SheetInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_SheetInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_SheetInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : SheetInProject?
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

  override var selection : EBSelection < SheetInProject? > {
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

  override var propval : SheetInProject? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_SheetInProject : ReadOnlyObject_SheetInProject {

  //····················································································································

  func setProp (_ inValue : SheetInProject?) { } // Abstract method

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_SheetInProject : ReadWriteObject_SheetInProject {

  //····················································································································

  private var mModel : ReadWriteObject_SheetInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_SheetInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : SheetInProject?
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

  override func setProp (_ inValue : SheetInProject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < SheetInProject? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SheetInProject? {
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
//    StoredObject_SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_SheetInProject : ReadWriteObject_SheetInProject, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SheetInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SheetInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SheetInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SheetInProject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : SheetInProject?) {
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

  override var selection : EBSelection < SheetInProject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : SheetInProject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : SheetInProject? { return self.mInternalValue }

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


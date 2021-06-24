//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_DeviceDocumentation 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_DeviceDocumentation : ReadOnlyAbstractObjectProperty <DeviceDocumentation> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceDocumentation?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
 //     oldValue.mFileName_property.removeEBObserversFrom (&self.mObserversOf_mFileName) // Stored property
 //     oldValue.mFileData_property.removeEBObserversFrom (&self.mObserversOf_mFileData) // Stored property
      oldValue.fileSize_property.removeEBObserversFrom (&self.mObserversOf_fileSize) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
 //     newValue.mFileName_property.addEBObserversFrom (&self.mObserversOf_mFileName) // Stored property
 //     newValue.mFileData_property.addEBObserversFrom (&self.mObserversOf_mFileData) // Stored property
      newValue.fileSize_property.addEBObserversFrom (&self.mObserversOf_fileSize) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mFileName' stored property
  //····················································································································

  private final var mFileName_property = EBGenericTransientProperty <String?> ()
//  private final var mObserversOf_mFileName = EBWeakEventSet ()

  //····················································································································

  final var mFileName_property_selection : EBSelection <String?> { // §
    return self.mFileName_property.selection
/*    if let model = self.propval {
      switch (model.mFileName_property_selection) {
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

  final func addEBObserverOf_mFileName (_ inObserver : EBEvent) {
    self.mFileName_property.addEBObserver (inObserver)
/*    self.mObserversOf_mFileName.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mFileName_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mFileName (_ inObserver : EBEvent) {
    self.mFileName_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mFileName.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mFileName_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'mFileData' stored property
  //····················································································································

  private final var mFileData_property = EBGenericTransientProperty <Data?> ()
//  private final var mObserversOf_mFileData = EBWeakEventSet ()

  //····················································································································

  final var mFileData_property_selection : EBSelection <Data?> { // §
    return self.mFileData_property.selection
/*    if let model = self.propval {
      switch (model.mFileData_property_selection) {
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

  final func addEBObserverOf_mFileData (_ inObserver : EBEvent) {
    self.mFileData_property.addEBObserver (inObserver)
/*    self.mObserversOf_mFileData.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mFileData_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mFileData (_ inObserver : EBEvent) {
    self.mFileData_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mFileData.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mFileData_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'fileSize' transient property
  //····················································································································

  private final var mObserversOf_fileSize = EBWeakEventSet ()

  //····················································································································

  final var fileSize_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.fileSize_property_selection) {
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

  final func addEBObserverOf_fileSize (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_fileSize.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.fileSize_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_fileSize (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_fileSize.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.fileSize_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure mFileName simple stored property
    self.mFileName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mFileName_property.selection {
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
    self.none_property.addEBObserver (self.mFileName_property)
  //--- Configure mFileData simple stored property
    self.mFileData_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mFileData_property.selection {
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
    self.none_property.addEBObserver (self.mFileData_property)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject DeviceDocumentation
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_DeviceDocumentation : ReadOnlyObject_DeviceDocumentation {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_DeviceDocumentation? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_DeviceDocumentation?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : DeviceDocumentation? 
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

  override var selection : EBSelection < DeviceDocumentation? > {
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

  override var propval : DeviceDocumentation? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_DeviceDocumentation
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_DeviceDocumentation : ReadOnlyObject_DeviceDocumentation {

  //····················································································································
 
  func setProp (_ inValue : DeviceDocumentation?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_DeviceDocumentation
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_DeviceDocumentation : ReadWriteObject_DeviceDocumentation {

  //····················································································································

  private var mModel : ReadWriteObject_DeviceDocumentation? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_DeviceDocumentation?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : DeviceDocumentation?
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

  override func setProp (_ inValue : DeviceDocumentation?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < DeviceDocumentation? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : DeviceDocumentation? {
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
//    StoredObject_DeviceDocumentation 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_DeviceDocumentation : ReadWriteObject_DeviceDocumentation, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : DeviceDocumentation) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : DeviceDocumentation) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : DeviceDocumentation) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : DeviceDocumentation) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceDocumentation?) {
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

  override var selection : EBSelection < DeviceDocumentation? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : DeviceDocumentation?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : DeviceDocumentation? { return self.mInternalValue }

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


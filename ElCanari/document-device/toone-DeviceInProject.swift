//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_DeviceInProject 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_DeviceInProject : ReadOnlyAbstractObjectProperty <DeviceInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.mDeviceName_property.removeEBObserver (self.mDeviceName_property) // Stored property
      oldValue.mPrefix_property.removeEBObserver (self.mPrefix_property) // Stored property
      oldValue.mDeviceVersion_property.removeEBObserver (self.mDeviceVersion_property) // Stored property
      oldValue.mDeviceFileData_property.removeEBObserver (self.mDeviceFileData_property) // Stored property
      oldValue.versionString_property.removeEBObserver (self.versionString_property) // Transient property
      oldValue.sizeString_property.removeEBObserver (self.sizeString_property) // Transient property
      oldValue.canExport_property.removeEBObserver (self.canExport_property) // Transient property
      oldValue.packageNames_property.removeEBObserver (self.packageNames_property) // Transient property
      oldValue.deviceComponentCountString_property.removeEBObserver (self.deviceComponentCountString_property) // Transient property
      oldValue.canRemove_property.removeEBObserver (self.canRemove_property) // Transient property
      oldValue.symbolAndTypesNames_property.removeEBObserver (self.symbolAndTypesNames_property) // Transient property
      oldValue.pinPadAssignments_property.removeEBObserver (self.pinPadAssignments_property) // Transient property
      oldValue.deviceSymbolDictionary_property.removeEBObserver (self.deviceSymbolDictionary_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.mDeviceName_property.addEBObserver (self.mDeviceName_property) // Stored property
      newValue.mPrefix_property.addEBObserver (self.mPrefix_property) // Stored property
      newValue.mDeviceVersion_property.addEBObserver (self.mDeviceVersion_property) // Stored property
      newValue.mDeviceFileData_property.addEBObserver (self.mDeviceFileData_property) // Stored property
      newValue.versionString_property.addEBObserver (self.versionString_property) // Transient property
      newValue.sizeString_property.addEBObserver (self.sizeString_property) // Transient property
      newValue.canExport_property.addEBObserver (self.canExport_property) // Transient property
      newValue.packageNames_property.addEBObserver (self.packageNames_property) // Transient property
      newValue.deviceComponentCountString_property.addEBObserver (self.deviceComponentCountString_property) // Transient property
      newValue.canRemove_property.addEBObserver (self.canRemove_property) // Transient property
      newValue.symbolAndTypesNames_property.addEBObserver (self.symbolAndTypesNames_property) // Transient property
      newValue.pinPadAssignments_property.addEBObserver (self.pinPadAssignments_property) // Transient property
      newValue.deviceSymbolDictionary_property.addEBObserver (self.deviceSymbolDictionary_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mDeviceName' stored property
  //····················································································································

  final let mDeviceName_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func removeEBObserverOf_mDeviceName (_ inObserver : EBEvent) {
    self.mDeviceName_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mPrefix' stored property
  //····················································································································

  final let mPrefix_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func removeEBObserverOf_mPrefix (_ inObserver : EBEvent) {
    self.mPrefix_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mDeviceVersion' stored property
  //····················································································································

  final let mDeviceVersion_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func removeEBObserverOf_mDeviceVersion (_ inObserver : EBEvent) {
    self.mDeviceVersion_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mDeviceFileData' stored property
  //····················································································································

  final let mDeviceFileData_property = EBGenericTransientProperty <Data?> ()

  //····················································································································

  final func removeEBObserverOf_mDeviceFileData (_ inObserver : EBEvent) {
    self.mDeviceFileData_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'versionString' transient property
  //····················································································································

  final let versionString_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func removeEBObserverOf_versionString (_ inObserver : EBEvent) {
    self.versionString_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'sizeString' transient property
  //····················································································································

  final let sizeString_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func removeEBObserverOf_sizeString (_ inObserver : EBEvent) {
    self.sizeString_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'canExport' transient property
  //····················································································································

  final let canExport_property = EBGenericTransientProperty <Bool?> ()

  //····················································································································

  final func removeEBObserverOf_canExport (_ inObserver : EBEvent) {
    self.canExport_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'packageNames' transient property
  //····················································································································

  final let packageNames_property = EBGenericTransientProperty <StringArray?> ()

  //····················································································································

  final func removeEBObserverOf_packageNames (_ inObserver : EBEvent) {
    self.packageNames_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'deviceComponentCountString' transient property
  //····················································································································

  final let deviceComponentCountString_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func removeEBObserverOf_deviceComponentCountString (_ inObserver : EBEvent) {
    self.deviceComponentCountString_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'canRemove' transient property
  //····················································································································

  final let canRemove_property = EBGenericTransientProperty <Bool?> ()

  //····················································································································

  final func removeEBObserverOf_canRemove (_ inObserver : EBEvent) {
    self.canRemove_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'symbolAndTypesNames' transient property
  //····················································································································

  final let symbolAndTypesNames_property = EBGenericTransientProperty <SymbolInProjectIdentifierArray?> ()

  //····················································································································

  final func removeEBObserverOf_symbolAndTypesNames (_ inObserver : EBEvent) {
    self.symbolAndTypesNames_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'pinPadAssignments' transient property
  //····················································································································

  final let pinPadAssignments_property = EBGenericTransientProperty <ThreeStringArray?> ()

  //····················································································································

  final func removeEBObserverOf_pinPadAssignments (_ inObserver : EBEvent) {
    self.pinPadAssignments_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'deviceSymbolDictionary' transient property
  //····················································································································

  final let deviceSymbolDictionary_property = EBGenericTransientProperty <DeviceSymbolDictionary?> ()

  //····················································································································

  final func removeEBObserverOf_deviceSymbolDictionary (_ inObserver : EBEvent) {
    self.deviceSymbolDictionary_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observable toMany property: mPackages
  //····················································································································

  private final var mObserversOf_mPackages = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mPackages (_ inObserver : EBEvent) {
    self.mObserversOf_mPackages.insert (inObserver)
    if let object = self.propval {
      object.mPackages_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mPackages (_ inObserver : EBEvent) {
    self.mObserversOf_mPackages.remove (inObserver)
    if let object = self.propval {
      object.mPackages_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observable toMany property: mSymbols
  //····················································································································

  private final var mObserversOf_mSymbols = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mSymbols (_ inObserver : EBEvent) {
    self.mObserversOf_mSymbols.insert (inObserver)
    if let object = self.propval {
      object.mSymbols_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSymbols (_ inObserver : EBEvent) {
    self.mObserversOf_mSymbols.remove (inObserver)
    if let object = self.propval {
      object.mSymbols_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observable toMany property: mComponents
  //····················································································································

  private final var mObserversOf_mComponents = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mComponents (_ inObserver : EBEvent) {
    self.mObserversOf_mComponents.insert (inObserver)
    if let object = self.propval {
      object.mComponents_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mComponents (_ inObserver : EBEvent) {
    self.mObserversOf_mComponents.remove (inObserver)
    if let object = self.propval {
      object.mComponents_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observable toMany property: mPadAssignments
  //····················································································································

  private final var mObserversOf_mPadAssignments = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mPadAssignments (_ inObserver : EBEvent) {
    self.mObserversOf_mPadAssignments.insert (inObserver)
    if let object = self.propval {
      object.mPadAssignments_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mPadAssignments (_ inObserver : EBEvent) {
    self.mObserversOf_mPadAssignments.remove (inObserver)
    if let object = self.propval {
      object.mPadAssignments_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure mDeviceName simple stored property
    self.mDeviceName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mDeviceName_property.selection {
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
  //--- Configure mPrefix simple stored property
    self.mPrefix_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mPrefix_property.selection {
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
  //--- Configure mDeviceVersion simple stored property
    self.mDeviceVersion_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mDeviceVersion_property.selection {
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
  //--- Configure mDeviceFileData simple stored property
    self.mDeviceFileData_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mDeviceFileData_property.selection {
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
  //--- Configure versionString transient property
    self.versionString_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.versionString_property.selection {
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
  //--- Configure sizeString transient property
    self.sizeString_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.sizeString_property.selection {
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
  //--- Configure canExport transient property
    self.canExport_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.canExport_property.selection {
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
  //--- Configure packageNames transient property
    self.packageNames_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.packageNames_property.selection {
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
  //--- Configure deviceComponentCountString transient property
    self.deviceComponentCountString_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.deviceComponentCountString_property.selection {
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
  //--- Configure canRemove transient property
    self.canRemove_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.canRemove_property.selection {
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
  //--- Configure symbolAndTypesNames transient property
    self.symbolAndTypesNames_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.symbolAndTypesNames_property.selection {
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
  //--- Configure pinPadAssignments transient property
    self.pinPadAssignments_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.pinPadAssignments_property.selection {
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
  //--- Configure deviceSymbolDictionary transient property
    self.deviceSymbolDictionary_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.deviceSymbolDictionary_property.selection {
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
//   TransientObject DeviceInProject
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_DeviceInProject : ReadOnlyObject_DeviceInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_DeviceInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_DeviceInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : DeviceInProject? 
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

  override var selection : EBSelection < DeviceInProject? > {
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

  override var propval : DeviceInProject? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_DeviceInProject
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_DeviceInProject : ReadOnlyObject_DeviceInProject {

  //····················································································································
 
  func setProp (_ inValue : DeviceInProject?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_DeviceInProject
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_DeviceInProject : ReadWriteObject_DeviceInProject {

  //····················································································································

  private var mModel : ReadWriteObject_DeviceInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_DeviceInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : DeviceInProject?
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

  override func setProp (_ inValue : DeviceInProject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < DeviceInProject? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : DeviceInProject? {
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
//    StoredObject_DeviceInProject 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_DeviceInProject : ReadWriteObject_DeviceInProject, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : DeviceInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : DeviceInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : DeviceInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : DeviceInProject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceInProject?) {
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

  override var selection : EBSelection < DeviceInProject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : DeviceInProject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : DeviceInProject? { return self.mInternalValue }

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


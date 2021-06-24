//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_PackageZone 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_PackageZone : ReadOnlyAbstractObjectProperty <PackageZone> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : PackageZone?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.x_property.removeEBObserver (self.x_property) // Stored property
      oldValue.y_property.removeEBObserver (self.y_property) // Stored property
      oldValue.width_property.removeEBObserver (self.width_property) // Stored property
      oldValue.height_property.removeEBObserver (self.height_property) // Stored property
      oldValue.xUnit_property.removeEBObserver (self.xUnit_property) // Stored property
      oldValue.yUnit_property.removeEBObserver (self.yUnit_property) // Stored property
      oldValue.widthUnit_property.removeEBObserver (self.widthUnit_property) // Stored property
      oldValue.heightUnit_property.removeEBObserver (self.heightUnit_property) // Stored property
      oldValue.zoneName_property.removeEBObserver (self.zoneName_property) // Stored property
      oldValue.displayZoneName_property.removeEBObserver (self.displayZoneName_property) // Stored property
      oldValue.xName_property.removeEBObserver (self.xName_property) // Stored property
      oldValue.yName_property.removeEBObserver (self.yName_property) // Stored property
      oldValue.xNameUnit_property.removeEBObserver (self.xNameUnit_property) // Stored property
      oldValue.yNameUnit_property.removeEBObserver (self.yNameUnit_property) // Stored property
      oldValue.zoneNumbering_property.removeEBObserver (self.zoneNumbering_property) // Stored property
      oldValue.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
      oldValue.issues_property.removeEBObserver (self.issues_property) // Transient property
      oldValue.rect_property.removeEBObserver (self.rect_property) // Transient property
      oldValue.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
      oldValue.forbiddenPadArray_property.removeEBObserver (self.forbiddenPadArray_property) // Transient property
      oldValue.emptyForbiddenPadArray_property.removeEBObserver (self.emptyForbiddenPadArray_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.x_property.addEBObserver (self.x_property) // Stored property
      newValue.y_property.addEBObserver (self.y_property) // Stored property
      newValue.width_property.addEBObserver (self.width_property) // Stored property
      newValue.height_property.addEBObserver (self.height_property) // Stored property
      newValue.xUnit_property.addEBObserver (self.xUnit_property) // Stored property
      newValue.yUnit_property.addEBObserver (self.yUnit_property) // Stored property
      newValue.widthUnit_property.addEBObserver (self.widthUnit_property) // Stored property
      newValue.heightUnit_property.addEBObserver (self.heightUnit_property) // Stored property
      newValue.zoneName_property.addEBObserver (self.zoneName_property) // Stored property
      newValue.displayZoneName_property.addEBObserver (self.displayZoneName_property) // Stored property
      newValue.xName_property.addEBObserver (self.xName_property) // Stored property
      newValue.yName_property.addEBObserver (self.yName_property) // Stored property
      newValue.xNameUnit_property.addEBObserver (self.xNameUnit_property) // Stored property
      newValue.yNameUnit_property.addEBObserver (self.yNameUnit_property) // Stored property
      newValue.zoneNumbering_property.addEBObserver (self.zoneNumbering_property) // Stored property
      newValue.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
      newValue.issues_property.addEBObserver (self.issues_property) // Transient property
      newValue.rect_property.addEBObserver (self.rect_property) // Transient property
      newValue.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
      newValue.forbiddenPadArray_property.addEBObserver (self.forbiddenPadArray_property) // Transient property
      newValue.emptyForbiddenPadArray_property.addEBObserver (self.emptyForbiddenPadArray_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'x' stored property
  //····················································································································

  final let x_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'y' stored property
  //····················································································································

  final let y_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'width' stored property
  //····················································································································

  final let width_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'height' stored property
  //····················································································································

  final let height_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'xUnit' stored property
  //····················································································································

  final let xUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'yUnit' stored property
  //····················································································································

  final let yUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'widthUnit' stored property
  //····················································································································

  final let widthUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'heightUnit' stored property
  //····················································································································

  final let heightUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'zoneName' stored property
  //····················································································································

  final let zoneName_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'displayZoneName' stored property
  //····················································································································

  final let displayZoneName_property = EBGenericTransientProperty <Bool?> ()

  //····················································································································
  //   Observers of 'xName' stored property
  //····················································································································

  final let xName_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'yName' stored property
  //····················································································································

  final let yName_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'xNameUnit' stored property
  //····················································································································

  final let xNameUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'yNameUnit' stored property
  //····················································································································

  final let yNameUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'zoneNumbering' stored property
  //····················································································································

  final let zoneNumbering_property = EBGenericTransientProperty <PadNumbering?> ()

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  final let objectDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  final let issues_property = EBGenericTransientProperty <CanariIssueArray?> ()

  //····················································································································
  //   Observers of 'rect' transient property
  //····················································································································

  final let rect_property = EBGenericTransientProperty <CanariRect?> ()

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  final let selectionDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   Observers of 'forbiddenPadArray' transient property
  //····················································································································

  final let forbiddenPadArray_property = EBGenericTransientProperty <StringArray?> ()

  //····················································································································
  //   Observers of 'emptyForbiddenPadArray' transient property
  //····················································································································

  final let emptyForbiddenPadArray_property = EBGenericTransientProperty <Bool?> ()

  //····················································································································
  //   Observable toMany property: forbiddenPadNumbers
  //····················································································································

  private final var mObserversOf_forbiddenPadNumbers = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_forbiddenPadNumbers (_ inObserver : EBEvent) {
    self.mObserversOf_forbiddenPadNumbers.insert (inObserver)
    if let object = self.propval {
      object.forbiddenPadNumbers_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_forbiddenPadNumbers (_ inObserver : EBEvent) {
    self.mObserversOf_forbiddenPadNumbers.remove (inObserver)
    if let object = self.propval {
      object.forbiddenPadNumbers_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
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
  //--- Configure width simple stored property
    self.width_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.width_property.selection {
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
  //--- Configure height simple stored property
    self.height_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.height_property.selection {
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
  //--- Configure xUnit simple stored property
    self.xUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.xUnit_property.selection {
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
  //--- Configure yUnit simple stored property
    self.yUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.yUnit_property.selection {
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
  //--- Configure widthUnit simple stored property
    self.widthUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.widthUnit_property.selection {
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
  //--- Configure heightUnit simple stored property
    self.heightUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.heightUnit_property.selection {
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
  //--- Configure zoneName simple stored property
    self.zoneName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.zoneName_property.selection {
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
  //--- Configure displayZoneName simple stored property
    self.displayZoneName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.displayZoneName_property.selection {
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
  //--- Configure xName simple stored property
    self.xName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.xName_property.selection {
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
  //--- Configure yName simple stored property
    self.yName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.yName_property.selection {
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
  //--- Configure xNameUnit simple stored property
    self.xNameUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.xNameUnit_property.selection {
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
  //--- Configure yNameUnit simple stored property
    self.yNameUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.yNameUnit_property.selection {
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
  //--- Configure zoneNumbering simple stored property
    self.zoneNumbering_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.zoneNumbering_property.selection {
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
  //--- Configure rect transient property
    self.rect_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.rect_property.selection {
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
  //--- Configure forbiddenPadArray transient property
    self.forbiddenPadArray_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.forbiddenPadArray_property.selection {
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
  //--- Configure emptyForbiddenPadArray transient property
    self.emptyForbiddenPadArray_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.emptyForbiddenPadArray_property.selection {
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
//   TransientObject PackageZone
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_PackageZone : ReadOnlyObject_PackageZone {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_PackageZone? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_PackageZone?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : PackageZone? 
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

  override var selection : EBSelection < PackageZone? > {
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

  override var propval : PackageZone? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_PackageZone
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_PackageZone : ReadOnlyObject_PackageZone {

  //····················································································································
 
  func setProp (_ inValue : PackageZone?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_PackageZone
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_PackageZone : ReadWriteObject_PackageZone {

  //····················································································································

  private var mModel : ReadWriteObject_PackageZone? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_PackageZone?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : PackageZone?
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

  override func setProp (_ inValue : PackageZone?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < PackageZone? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : PackageZone? {
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
//    StoredObject_PackageZone 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_PackageZone : ReadWriteObject_PackageZone, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : PackageZone) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : PackageZone) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : PackageZone) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : PackageZone) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : PackageZone?) {
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

  override var selection : EBSelection < PackageZone? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : PackageZone?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : PackageZone? { return self.mInternalValue }

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


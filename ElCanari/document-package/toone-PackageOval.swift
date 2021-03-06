//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_PackageOval
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_PackageOval : ReadOnlyAbstractObjectProperty <PackageOval> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : PackageOval?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.y_property.removeEBObserver (self.y_property) // Stored property
      oldValue.width_property.removeEBObserver (self.width_property) // Stored property
      oldValue.height_property.removeEBObserver (self.height_property) // Stored property
      oldValue.xUnit_property.removeEBObserver (self.xUnit_property) // Stored property
      oldValue.yUnit_property.removeEBObserver (self.yUnit_property) // Stored property
      oldValue.widthUnit_property.removeEBObserver (self.widthUnit_property) // Stored property
      oldValue.heightUnit_property.removeEBObserver (self.heightUnit_property) // Stored property
      oldValue.x_property.removeEBObserver (self.x_property) // Stored property
      oldValue.strokeBezierPath_property.removeEBObserver (self.strokeBezierPath_property) // Transient property
      oldValue.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
      oldValue.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
      oldValue.issues_property.removeEBObserver (self.issues_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.y_property.addEBObserver (self.y_property) // Stored property
      newValue.width_property.addEBObserver (self.width_property) // Stored property
      newValue.height_property.addEBObserver (self.height_property) // Stored property
      newValue.xUnit_property.addEBObserver (self.xUnit_property) // Stored property
      newValue.yUnit_property.addEBObserver (self.yUnit_property) // Stored property
      newValue.widthUnit_property.addEBObserver (self.widthUnit_property) // Stored property
      newValue.heightUnit_property.addEBObserver (self.heightUnit_property) // Stored property
      newValue.x_property.addEBObserver (self.x_property) // Stored property
      newValue.strokeBezierPath_property.addEBObserver (self.strokeBezierPath_property) // Transient property
      newValue.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
      newValue.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
      newValue.issues_property.addEBObserver (self.issues_property) // Transient property
    }
  }

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
  //   Observers of 'x' stored property
  //····················································································································

  final let x_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'strokeBezierPath' transient property
  //····················································································································

  final let strokeBezierPath_property = EBGenericTransientProperty <NSBezierPath?> ()

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  final let objectDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  final let selectionDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  final let issues_property = EBGenericTransientProperty <CanariIssueArray?> ()

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
  //--- Configure strokeBezierPath transient property
    self.strokeBezierPath_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.strokeBezierPath_property.selection {
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
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   TransientObject PackageOval
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientObject_PackageOval : ReadOnlyObject_PackageOval {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_PackageOval? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_PackageOval?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : PackageOval?
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

  override var selection : EBSelection < PackageOval? > {
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

  override var propval : PackageOval? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_PackageOval
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_PackageOval : ReadOnlyObject_PackageOval {

  //····················································································································

  func setProp (_ inValue : PackageOval?) { } // Abstract method

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_PackageOval
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_PackageOval : ReadWriteObject_PackageOval {

  //····················································································································

  private var mModel : ReadWriteObject_PackageOval? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_PackageOval?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : PackageOval?
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

  override func setProp (_ inValue : PackageOval?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < PackageOval? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : PackageOval? {
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
//    StoredObject_PackageOval
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_PackageOval : ReadWriteObject_PackageOval, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : PackageOval) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : PackageOval) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : PackageOval) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : PackageOval) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : PackageOval?) {
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

  override var selection : EBSelection < PackageOval? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : PackageOval?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : PackageOval? { return self.mInternalValue }

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


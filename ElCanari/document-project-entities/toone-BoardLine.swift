//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_BoardLine
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_BoardLine : ReadOnlyAbstractObjectProperty <BoardLine> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : BoardLine?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.mWidthUnit_property.removeEBObserver (self.mWidthUnit_property) // Stored property
      oldValue.mX1_property.removeEBObserver (self.mX1_property) // Stored property
      oldValue.mX1Unit_property.removeEBObserver (self.mX1Unit_property) // Stored property
      oldValue.mY1_property.removeEBObserver (self.mY1_property) // Stored property
      oldValue.mY1Unit_property.removeEBObserver (self.mY1Unit_property) // Stored property
      oldValue.mX2_property.removeEBObserver (self.mX2_property) // Stored property
      oldValue.mX2Unit_property.removeEBObserver (self.mX2Unit_property) // Stored property
      oldValue.mY2_property.removeEBObserver (self.mY2_property) // Stored property
      oldValue.mY2Unit_property.removeEBObserver (self.mY2Unit_property) // Stored property
      oldValue.mLayer_property.removeEBObserver (self.mLayer_property) // Stored property
      oldValue.mWidth_property.removeEBObserver (self.mWidth_property) // Stored property
      oldValue.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
      oldValue.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.mWidthUnit_property.addEBObserver (self.mWidthUnit_property) // Stored property
      newValue.mX1_property.addEBObserver (self.mX1_property) // Stored property
      newValue.mX1Unit_property.addEBObserver (self.mX1Unit_property) // Stored property
      newValue.mY1_property.addEBObserver (self.mY1_property) // Stored property
      newValue.mY1Unit_property.addEBObserver (self.mY1Unit_property) // Stored property
      newValue.mX2_property.addEBObserver (self.mX2_property) // Stored property
      newValue.mX2Unit_property.addEBObserver (self.mX2Unit_property) // Stored property
      newValue.mY2_property.addEBObserver (self.mY2_property) // Stored property
      newValue.mY2Unit_property.addEBObserver (self.mY2Unit_property) // Stored property
      newValue.mLayer_property.addEBObserver (self.mLayer_property) // Stored property
      newValue.mWidth_property.addEBObserver (self.mWidth_property) // Stored property
      newValue.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
      newValue.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mWidthUnit' stored property
  //····················································································································

  final let mWidthUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'mX1' stored property
  //····················································································································

  final let mX1_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'mX1Unit' stored property
  //····················································································································

  final let mX1Unit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'mY1' stored property
  //····················································································································

  final let mY1_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'mY1Unit' stored property
  //····················································································································

  final let mY1Unit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'mX2' stored property
  //····················································································································

  final let mX2_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'mX2Unit' stored property
  //····················································································································

  final let mX2Unit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'mY2' stored property
  //····················································································································

  final let mY2_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'mY2Unit' stored property
  //····················································································································

  final let mY2Unit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'mLayer' stored property
  //····················································································································

  final let mLayer_property = EBGenericTransientProperty <BoardLineLayer?> ()

  //····················································································································
  //   Observers of 'mWidth' stored property
  //····················································································································

  final let mWidth_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  final let objectDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  final let selectionDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   INIT
  //····················································································································

  override init () {
    super.init ()
  //--- Configure mWidthUnit simple stored property
    self.mWidthUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mWidthUnit_property.selection {
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
  //--- Configure mX1 simple stored property
    self.mX1_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mX1_property.selection {
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
  //--- Configure mX1Unit simple stored property
    self.mX1Unit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mX1Unit_property.selection {
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
  //--- Configure mY1 simple stored property
    self.mY1_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mY1_property.selection {
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
  //--- Configure mY1Unit simple stored property
    self.mY1Unit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mY1Unit_property.selection {
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
  //--- Configure mX2 simple stored property
    self.mX2_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mX2_property.selection {
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
  //--- Configure mX2Unit simple stored property
    self.mX2Unit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mX2Unit_property.selection {
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
  //--- Configure mY2 simple stored property
    self.mY2_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mY2_property.selection {
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
  //--- Configure mY2Unit simple stored property
    self.mY2Unit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mY2Unit_property.selection {
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
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   TransientObject BoardLine
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientObject_BoardLine : ReadOnlyObject_BoardLine {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_BoardLine? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_BoardLine?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : BoardLine?
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

  override var selection : EBSelection < BoardLine? > {
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

  override var propval : BoardLine? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_BoardLine
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_BoardLine : ReadOnlyObject_BoardLine {

  //····················································································································

  func setProp (_ inValue : BoardLine?) { } // Abstract method

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_BoardLine
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_BoardLine : ReadWriteObject_BoardLine {

  //····················································································································

  private var mModel : ReadWriteObject_BoardLine? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_BoardLine?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : BoardLine?
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

  override func setProp (_ inValue : BoardLine?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < BoardLine? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : BoardLine? {
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
//    StoredObject_BoardLine
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_BoardLine : ReadWriteObject_BoardLine, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : BoardLine) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : BoardLine) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : BoardLine) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : BoardLine) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : BoardLine?) {
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

  override var selection : EBSelection < BoardLine? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : BoardLine?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : BoardLine? { return self.mInternalValue }

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


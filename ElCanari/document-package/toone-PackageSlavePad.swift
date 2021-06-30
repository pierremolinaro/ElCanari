//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_PackageSlavePad
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_PackageSlavePad : ReadOnlyAbstractObjectProperty <PackageSlavePad> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : PackageSlavePad?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.xCenter_property.removeEBObserver (self.xCenter_property) // Stored property
      oldValue.yCenter_property.removeEBObserver (self.yCenter_property) // Stored property
      oldValue.width_property.removeEBObserver (self.width_property) // Stored property
      oldValue.height_property.removeEBObserver (self.height_property) // Stored property
      oldValue.holeWidth_property.removeEBObserver (self.holeWidth_property) // Stored property
      oldValue.holeHeight_property.removeEBObserver (self.holeHeight_property) // Stored property
      oldValue.padShape_property.removeEBObserver (self.padShape_property) // Stored property
      oldValue.padStyle_property.removeEBObserver (self.padStyle_property) // Stored property
      oldValue.xCenterUnit_property.removeEBObserver (self.xCenterUnit_property) // Stored property
      oldValue.yCenterUnit_property.removeEBObserver (self.yCenterUnit_property) // Stored property
      oldValue.widthUnit_property.removeEBObserver (self.widthUnit_property) // Stored property
      oldValue.heightUnit_property.removeEBObserver (self.heightUnit_property) // Stored property
      oldValue.holeWidthUnit_property.removeEBObserver (self.holeWidthUnit_property) // Stored property
      oldValue.holeHeightUnit_property.removeEBObserver (self.holeHeightUnit_property) // Stored property
      oldValue.annularRingUnit_property.removeEBObserver (self.annularRingUnit_property) // Stored property
      oldValue.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
      oldValue.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
      oldValue.issues_property.removeEBObserver (self.issues_property) // Transient property
      oldValue.padIsTraversing_property.removeEBObserver (self.padIsTraversing_property) // Transient property
      oldValue.annularRing_property.removeEBObserver (self.annularRing_property) // Transient property
      oldValue.padNameWithZoneName_property.removeEBObserver (self.padNameWithZoneName_property) // Transient property
      oldValue.masterPadNameWithZoneName_property.removeEBObserver (self.masterPadNameWithZoneName_property) // Transient property
      oldValue.padNameForDisplay_property.removeEBObserver (self.padNameForDisplay_property) // Transient property
      oldValue.padNumberDisplay_property.removeEBObserver (self.padNumberDisplay_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.xCenter_property.addEBObserver (self.xCenter_property) // Stored property
      newValue.yCenter_property.addEBObserver (self.yCenter_property) // Stored property
      newValue.width_property.addEBObserver (self.width_property) // Stored property
      newValue.height_property.addEBObserver (self.height_property) // Stored property
      newValue.holeWidth_property.addEBObserver (self.holeWidth_property) // Stored property
      newValue.holeHeight_property.addEBObserver (self.holeHeight_property) // Stored property
      newValue.padShape_property.addEBObserver (self.padShape_property) // Stored property
      newValue.padStyle_property.addEBObserver (self.padStyle_property) // Stored property
      newValue.xCenterUnit_property.addEBObserver (self.xCenterUnit_property) // Stored property
      newValue.yCenterUnit_property.addEBObserver (self.yCenterUnit_property) // Stored property
      newValue.widthUnit_property.addEBObserver (self.widthUnit_property) // Stored property
      newValue.heightUnit_property.addEBObserver (self.heightUnit_property) // Stored property
      newValue.holeWidthUnit_property.addEBObserver (self.holeWidthUnit_property) // Stored property
      newValue.holeHeightUnit_property.addEBObserver (self.holeHeightUnit_property) // Stored property
      newValue.annularRingUnit_property.addEBObserver (self.annularRingUnit_property) // Stored property
      newValue.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
      newValue.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
      newValue.issues_property.addEBObserver (self.issues_property) // Transient property
      newValue.padIsTraversing_property.addEBObserver (self.padIsTraversing_property) // Transient property
      newValue.annularRing_property.addEBObserver (self.annularRing_property) // Transient property
      newValue.padNameWithZoneName_property.addEBObserver (self.padNameWithZoneName_property) // Transient property
      newValue.masterPadNameWithZoneName_property.addEBObserver (self.masterPadNameWithZoneName_property) // Transient property
      newValue.padNameForDisplay_property.addEBObserver (self.padNameForDisplay_property) // Transient property
      newValue.padNumberDisplay_property.addEBObserver (self.padNumberDisplay_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'xCenter' stored property
  //····················································································································

  final let xCenter_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'yCenter' stored property
  //····················································································································

  final let yCenter_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'width' stored property
  //····················································································································

  final let width_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'height' stored property
  //····················································································································

  final let height_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'holeWidth' stored property
  //····················································································································

  final let holeWidth_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'holeHeight' stored property
  //····················································································································

  final let holeHeight_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'padShape' stored property
  //····················································································································

  final let padShape_property = EBGenericTransientProperty <PadShape?> ()

  //····················································································································
  //   Observers of 'padStyle' stored property
  //····················································································································

  final let padStyle_property = EBGenericTransientProperty <SlavePadStyle?> ()

  //····················································································································
  //   Observers of 'xCenterUnit' stored property
  //····················································································································

  final let xCenterUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'yCenterUnit' stored property
  //····················································································································

  final let yCenterUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'widthUnit' stored property
  //····················································································································

  final let widthUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'heightUnit' stored property
  //····················································································································

  final let heightUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'holeWidthUnit' stored property
  //····················································································································

  final let holeWidthUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'holeHeightUnit' stored property
  //····················································································································

  final let holeHeightUnit_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'annularRingUnit' stored property
  //····················································································································

  final let annularRingUnit_property = EBGenericTransientProperty <Int?> ()

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
  //   Observers of 'padIsTraversing' transient property
  //····················································································································

  final let padIsTraversing_property = EBGenericTransientProperty <Bool?> ()

  //····················································································································
  //   Observers of 'annularRing' transient property
  //····················································································································

  final let annularRing_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'padNameWithZoneName' transient property
  //····················································································································

  final let padNameWithZoneName_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'masterPadNameWithZoneName' transient property
  //····················································································································

  final let masterPadNameWithZoneName_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'padNameForDisplay' transient property
  //····················································································································

  final let padNameForDisplay_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'padNumberDisplay' transient property
  //····················································································································

  final let padNumberDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   INIT
  //····················································································································

  override init () {
    super.init ()
  //--- Configure xCenter simple stored property
    self.xCenter_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.xCenter_property.selection {
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
  //--- Configure yCenter simple stored property
    self.yCenter_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.yCenter_property.selection {
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
  //--- Configure holeWidth simple stored property
    self.holeWidth_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.holeWidth_property.selection {
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
  //--- Configure holeHeight simple stored property
    self.holeHeight_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.holeHeight_property.selection {
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
  //--- Configure padShape simple stored property
    self.padShape_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.padShape_property.selection {
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
  //--- Configure padStyle simple stored property
    self.padStyle_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.padStyle_property.selection {
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
  //--- Configure xCenterUnit simple stored property
    self.xCenterUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.xCenterUnit_property.selection {
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
  //--- Configure yCenterUnit simple stored property
    self.yCenterUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.yCenterUnit_property.selection {
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
  //--- Configure holeWidthUnit simple stored property
    self.holeWidthUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.holeWidthUnit_property.selection {
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
  //--- Configure holeHeightUnit simple stored property
    self.holeHeightUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.holeHeightUnit_property.selection {
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
  //--- Configure annularRingUnit simple stored property
    self.annularRingUnit_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.annularRingUnit_property.selection {
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
  //--- Configure padIsTraversing transient property
    self.padIsTraversing_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.padIsTraversing_property.selection {
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
  //--- Configure annularRing transient property
    self.annularRing_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.annularRing_property.selection {
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
  //--- Configure padNameWithZoneName transient property
    self.padNameWithZoneName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.padNameWithZoneName_property.selection {
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
  //--- Configure masterPadNameWithZoneName transient property
    self.masterPadNameWithZoneName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.masterPadNameWithZoneName_property.selection {
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
  //--- Configure padNameForDisplay transient property
    self.padNameForDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.padNameForDisplay_property.selection {
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
  //--- Configure padNumberDisplay transient property
    self.padNumberDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.padNumberDisplay_property.selection {
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
//   TransientObject PackageSlavePad
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientObject_PackageSlavePad : ReadOnlyObject_PackageSlavePad {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_PackageSlavePad? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_PackageSlavePad?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : PackageSlavePad?
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

  override var selection : EBSelection < PackageSlavePad? > {
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

  override var propval : PackageSlavePad? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_PackageSlavePad
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_PackageSlavePad : ReadOnlyObject_PackageSlavePad {

  //····················································································································

  func setProp (_ inValue : PackageSlavePad?) { } // Abstract method

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_PackageSlavePad
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_PackageSlavePad : ReadWriteObject_PackageSlavePad {

  //····················································································································

  private var mModel : ReadWriteObject_PackageSlavePad? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_PackageSlavePad?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : PackageSlavePad?
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

  override func setProp (_ inValue : PackageSlavePad?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < PackageSlavePad? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : PackageSlavePad? {
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
//    StoredObject_PackageSlavePad
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_PackageSlavePad : ReadWriteObject_PackageSlavePad, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : PackageSlavePad) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : PackageSlavePad) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : PackageSlavePad) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : PackageSlavePad) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : PackageSlavePad?) {
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

  override var selection : EBSelection < PackageSlavePad? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : PackageSlavePad?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : PackageSlavePad? { return self.mInternalValue }

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


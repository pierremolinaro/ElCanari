//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_DevicePinInProject 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_DevicePinInProject : ReadOnlyAbstractObjectProperty <DevicePinInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : DevicePinInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
 //     oldValue.mPinName_property.removeEBObserversFrom (&self.mObserversOf_mPinName) // Stored property
      oldValue.mPinName_property.removeEBObserver (self.mPinName_property) // Stored property
 //     oldValue.mSymbolInstanceName_property.removeEBObserversFrom (&self.mObserversOf_mSymbolInstanceName) // Stored property
      oldValue.mSymbolInstanceName_property.removeEBObserver (self.mSymbolInstanceName_property) // Stored property
 //     oldValue.mSymbolTypeName_property.removeEBObserversFrom (&self.mObserversOf_mSymbolTypeName) // Stored property
      oldValue.mSymbolTypeName_property.removeEBObserver (self.mSymbolTypeName_property) // Stored property
 //     oldValue.mPinX_property.removeEBObserversFrom (&self.mObserversOf_mPinX) // Stored property
      oldValue.mPinX_property.removeEBObserver (self.mPinX_property) // Stored property
 //     oldValue.mPinY_property.removeEBObserversFrom (&self.mObserversOf_mPinY) // Stored property
      oldValue.mPinY_property.removeEBObserver (self.mPinY_property) // Stored property
 //     oldValue.mXName_property.removeEBObserversFrom (&self.mObserversOf_mXName) // Stored property
      oldValue.mXName_property.removeEBObserver (self.mXName_property) // Stored property
 //     oldValue.mYName_property.removeEBObserversFrom (&self.mObserversOf_mYName) // Stored property
      oldValue.mYName_property.removeEBObserver (self.mYName_property) // Stored property
 //     oldValue.mNameHorizontalAlignment_property.removeEBObserversFrom (&self.mObserversOf_mNameHorizontalAlignment) // Stored property
      oldValue.mNameHorizontalAlignment_property.removeEBObserver (self.mNameHorizontalAlignment_property) // Stored property
 //     oldValue.mPinNameIsDisplayedInSchematic_property.removeEBObserversFrom (&self.mObserversOf_mPinNameIsDisplayedInSchematic) // Stored property
      oldValue.mPinNameIsDisplayedInSchematic_property.removeEBObserver (self.mPinNameIsDisplayedInSchematic_property) // Stored property
 //     oldValue.mXNumber_property.removeEBObserversFrom (&self.mObserversOf_mXNumber) // Stored property
      oldValue.mXNumber_property.removeEBObserver (self.mXNumber_property) // Stored property
 //     oldValue.mYNumber_property.removeEBObserversFrom (&self.mObserversOf_mYNumber) // Stored property
      oldValue.mYNumber_property.removeEBObserver (self.mYNumber_property) // Stored property
 //     oldValue.mNumberHorizontalAlignment_property.removeEBObserversFrom (&self.mObserversOf_mNumberHorizontalAlignment) // Stored property
      oldValue.mNumberHorizontalAlignment_property.removeEBObserver (self.mNumberHorizontalAlignment_property) // Stored property
 //     oldValue.pinQualifiedName_property.removeEBObserversFrom (&self.mObserversOf_pinQualifiedName) // Transient property
      oldValue.pinQualifiedName_property.removeEBObserver (self.pinQualifiedName_property) // Transient property
 //     oldValue.descriptor_property.removeEBObserversFrom (&self.mObserversOf_descriptor) // Transient property
      oldValue.descriptor_property.removeEBObserver (self.descriptor_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
 //     newValue.mPinName_property.addEBObserversFrom (&self.mObserversOf_mPinName) // Stored property
      newValue.mPinName_property.addEBObserver (self.mPinName_property) // Stored property
 //     newValue.mSymbolInstanceName_property.addEBObserversFrom (&self.mObserversOf_mSymbolInstanceName) // Stored property
      newValue.mSymbolInstanceName_property.addEBObserver (self.mSymbolInstanceName_property) // Stored property
 //     newValue.mSymbolTypeName_property.addEBObserversFrom (&self.mObserversOf_mSymbolTypeName) // Stored property
      newValue.mSymbolTypeName_property.addEBObserver (self.mSymbolTypeName_property) // Stored property
 //     newValue.mPinX_property.addEBObserversFrom (&self.mObserversOf_mPinX) // Stored property
      newValue.mPinX_property.addEBObserver (self.mPinX_property) // Stored property
 //     newValue.mPinY_property.addEBObserversFrom (&self.mObserversOf_mPinY) // Stored property
      newValue.mPinY_property.addEBObserver (self.mPinY_property) // Stored property
 //     newValue.mXName_property.addEBObserversFrom (&self.mObserversOf_mXName) // Stored property
      newValue.mXName_property.addEBObserver (self.mXName_property) // Stored property
 //     newValue.mYName_property.addEBObserversFrom (&self.mObserversOf_mYName) // Stored property
      newValue.mYName_property.addEBObserver (self.mYName_property) // Stored property
 //     newValue.mNameHorizontalAlignment_property.addEBObserversFrom (&self.mObserversOf_mNameHorizontalAlignment) // Stored property
      newValue.mNameHorizontalAlignment_property.addEBObserver (self.mNameHorizontalAlignment_property) // Stored property
 //     newValue.mPinNameIsDisplayedInSchematic_property.addEBObserversFrom (&self.mObserversOf_mPinNameIsDisplayedInSchematic) // Stored property
      newValue.mPinNameIsDisplayedInSchematic_property.addEBObserver (self.mPinNameIsDisplayedInSchematic_property) // Stored property
 //     newValue.mXNumber_property.addEBObserversFrom (&self.mObserversOf_mXNumber) // Stored property
      newValue.mXNumber_property.addEBObserver (self.mXNumber_property) // Stored property
 //     newValue.mYNumber_property.addEBObserversFrom (&self.mObserversOf_mYNumber) // Stored property
      newValue.mYNumber_property.addEBObserver (self.mYNumber_property) // Stored property
 //     newValue.mNumberHorizontalAlignment_property.addEBObserversFrom (&self.mObserversOf_mNumberHorizontalAlignment) // Stored property
      newValue.mNumberHorizontalAlignment_property.addEBObserver (self.mNumberHorizontalAlignment_property) // Stored property
  //    newValue.pinQualifiedName_property.addEBObserversFrom (&self.mObserversOf_pinQualifiedName) // Transient property
      newValue.pinQualifiedName_property.addEBObserver (self.pinQualifiedName_property) // Transient property
  //    newValue.descriptor_property.addEBObserversFrom (&self.mObserversOf_descriptor) // Transient property
      newValue.descriptor_property.addEBObserver (self.descriptor_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mPinName' stored property
  //····················································································································

  final let mPinName_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func addEBObserverOf_mPinName (_ inObserver : EBEvent) {
    self.mPinName_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mPinName (_ inObserver : EBEvent) {
    self.mPinName_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mSymbolInstanceName' stored property
  //····················································································································

  final let mSymbolInstanceName_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func addEBObserverOf_mSymbolInstanceName (_ inObserver : EBEvent) {
    self.mSymbolInstanceName_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mSymbolInstanceName (_ inObserver : EBEvent) {
    self.mSymbolInstanceName_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mSymbolTypeName' stored property
  //····················································································································

  final let mSymbolTypeName_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func addEBObserverOf_mSymbolTypeName (_ inObserver : EBEvent) {
    self.mSymbolTypeName_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mSymbolTypeName (_ inObserver : EBEvent) {
    self.mSymbolTypeName_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mPinX' stored property
  //····················································································································

  final let mPinX_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_mPinX (_ inObserver : EBEvent) {
    self.mPinX_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mPinX (_ inObserver : EBEvent) {
    self.mPinX_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mPinY' stored property
  //····················································································································

  final let mPinY_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_mPinY (_ inObserver : EBEvent) {
    self.mPinY_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mPinY (_ inObserver : EBEvent) {
    self.mPinY_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mXName' stored property
  //····················································································································

  final let mXName_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_mXName (_ inObserver : EBEvent) {
    self.mXName_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mXName (_ inObserver : EBEvent) {
    self.mXName_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mYName' stored property
  //····················································································································

  final let mYName_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_mYName (_ inObserver : EBEvent) {
    self.mYName_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mYName (_ inObserver : EBEvent) {
    self.mYName_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mNameHorizontalAlignment' stored property
  //····················································································································

  final let mNameHorizontalAlignment_property = EBGenericTransientProperty <HorizontalAlignment?> ()

  //····················································································································

  final func addEBObserverOf_mNameHorizontalAlignment (_ inObserver : EBEvent) {
    self.mNameHorizontalAlignment_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mNameHorizontalAlignment (_ inObserver : EBEvent) {
    self.mNameHorizontalAlignment_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mPinNameIsDisplayedInSchematic' stored property
  //····················································································································

  final let mPinNameIsDisplayedInSchematic_property = EBGenericTransientProperty <Bool?> ()

  //····················································································································

  final func addEBObserverOf_mPinNameIsDisplayedInSchematic (_ inObserver : EBEvent) {
    self.mPinNameIsDisplayedInSchematic_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mPinNameIsDisplayedInSchematic (_ inObserver : EBEvent) {
    self.mPinNameIsDisplayedInSchematic_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mXNumber' stored property
  //····················································································································

  final let mXNumber_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_mXNumber (_ inObserver : EBEvent) {
    self.mXNumber_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mXNumber (_ inObserver : EBEvent) {
    self.mXNumber_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mYNumber' stored property
  //····················································································································

  final let mYNumber_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_mYNumber (_ inObserver : EBEvent) {
    self.mYNumber_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mYNumber (_ inObserver : EBEvent) {
    self.mYNumber_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mNumberHorizontalAlignment' stored property
  //····················································································································

  final let mNumberHorizontalAlignment_property = EBGenericTransientProperty <HorizontalAlignment?> ()

  //····················································································································

  final func addEBObserverOf_mNumberHorizontalAlignment (_ inObserver : EBEvent) {
    self.mNumberHorizontalAlignment_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_mNumberHorizontalAlignment (_ inObserver : EBEvent) {
    self.mNumberHorizontalAlignment_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'pinQualifiedName' transient property
  //····················································································································

  final let pinQualifiedName_property = EBGenericTransientProperty <PinQualifiedNameStruct?> ()

  //····················································································································

  final func addEBObserverOf_pinQualifiedName (_ inObserver : EBEvent) {
    self.pinQualifiedName_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_pinQualifiedName (_ inObserver : EBEvent) {
    self.pinQualifiedName_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'descriptor' transient property
  //····················································································································

  final let descriptor_property = EBGenericTransientProperty <PinInProjectDescriptor?> ()

  //····················································································································

  final func addEBObserverOf_descriptor (_ inObserver : EBEvent) {
    self.descriptor_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_descriptor (_ inObserver : EBEvent) {
    self.descriptor_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure mPinName simple stored property
    self.mPinName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mPinName_property.selection {
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
  //--- Configure mSymbolInstanceName simple stored property
    self.mSymbolInstanceName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mSymbolInstanceName_property.selection {
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
  //--- Configure mSymbolTypeName simple stored property
    self.mSymbolTypeName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mSymbolTypeName_property.selection {
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
  //--- Configure mPinX simple stored property
    self.mPinX_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mPinX_property.selection {
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
  //--- Configure mPinY simple stored property
    self.mPinY_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mPinY_property.selection {
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
  //--- Configure mXName simple stored property
    self.mXName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mXName_property.selection {
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
  //--- Configure mYName simple stored property
    self.mYName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mYName_property.selection {
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
  //--- Configure mNameHorizontalAlignment simple stored property
    self.mNameHorizontalAlignment_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mNameHorizontalAlignment_property.selection {
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
  //--- Configure mPinNameIsDisplayedInSchematic simple stored property
    self.mPinNameIsDisplayedInSchematic_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mPinNameIsDisplayedInSchematic_property.selection {
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
  //--- Configure mXNumber simple stored property
    self.mXNumber_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mXNumber_property.selection {
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
  //--- Configure mYNumber simple stored property
    self.mYNumber_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mYNumber_property.selection {
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
  //--- Configure mNumberHorizontalAlignment simple stored property
    self.mNumberHorizontalAlignment_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mNumberHorizontalAlignment_property.selection {
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
  //--- Configure pinQualifiedName transient property
    self.pinQualifiedName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.pinQualifiedName_property.selection {
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
  //--- Configure descriptor transient property
    self.descriptor_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.descriptor_property.selection {
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
//   TransientObject DevicePinInProject
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_DevicePinInProject : ReadOnlyObject_DevicePinInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_DevicePinInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_DevicePinInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : DevicePinInProject? 
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

  override var selection : EBSelection < DevicePinInProject? > {
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

  override var propval : DevicePinInProject? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_DevicePinInProject
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_DevicePinInProject : ReadOnlyObject_DevicePinInProject {

  //····················································································································
 
  func setProp (_ inValue : DevicePinInProject?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_DevicePinInProject
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_DevicePinInProject : ReadWriteObject_DevicePinInProject {

  //····················································································································

  private var mModel : ReadWriteObject_DevicePinInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_DevicePinInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : DevicePinInProject?
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

  override func setProp (_ inValue : DevicePinInProject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < DevicePinInProject? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : DevicePinInProject? {
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
//    StoredObject_DevicePinInProject 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_DevicePinInProject : ReadWriteObject_DevicePinInProject, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : DevicePinInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : DevicePinInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : DevicePinInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : DevicePinInProject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : DevicePinInProject?) {
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

  override var selection : EBSelection < DevicePinInProject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : DevicePinInProject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : DevicePinInProject? { return self.mInternalValue }

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


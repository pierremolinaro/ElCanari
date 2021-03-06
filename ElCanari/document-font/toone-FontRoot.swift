//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_FontRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_FontRoot : ReadOnlyAbstractObjectProperty <FontRoot> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : FontRoot?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.comments_property.removeEBObserver (self.comments_property) // Stored property
      oldValue.nominalSize_property.removeEBObserver (self.nominalSize_property) // Stored property
      oldValue.selectedTab_property.removeEBObserver (self.selectedTab_property) // Stored property
      oldValue.selectedInspector_property.removeEBObserver (self.selectedInspector_property) // Stored property
      oldValue.currentCharacterCodePoint_property.removeEBObserver (self.currentCharacterCodePoint_property) // Stored property
      oldValue.currentCharacterCodePointString_property.removeEBObserver (self.currentCharacterCodePointString_property) // Transient property
      oldValue.sampleStringBezierPath_property.removeEBObserver (self.sampleStringBezierPath_property) // Transient property
      oldValue.sampleStringBezierPathWidth_property.removeEBObserver (self.sampleStringBezierPathWidth_property) // Transient property
      oldValue.sampleStringBezierPathAscent_property.removeEBObserver (self.sampleStringBezierPathAscent_property) // Transient property
      oldValue.sampleStringBezierPathDescent_property.removeEBObserver (self.sampleStringBezierPathDescent_property) // Transient property
      oldValue.definedCharacters_property.removeEBObserver (self.definedCharacters_property) // Transient property
      oldValue.issues_property.removeEBObserver (self.issues_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.comments_property.addEBObserver (self.comments_property) // Stored property
      newValue.nominalSize_property.addEBObserver (self.nominalSize_property) // Stored property
      newValue.selectedTab_property.addEBObserver (self.selectedTab_property) // Stored property
      newValue.selectedInspector_property.addEBObserver (self.selectedInspector_property) // Stored property
      newValue.currentCharacterCodePoint_property.addEBObserver (self.currentCharacterCodePoint_property) // Stored property
      newValue.currentCharacterCodePointString_property.addEBObserver (self.currentCharacterCodePointString_property) // Transient property
      newValue.sampleStringBezierPath_property.addEBObserver (self.sampleStringBezierPath_property) // Transient property
      newValue.sampleStringBezierPathWidth_property.addEBObserver (self.sampleStringBezierPathWidth_property) // Transient property
      newValue.sampleStringBezierPathAscent_property.addEBObserver (self.sampleStringBezierPathAscent_property) // Transient property
      newValue.sampleStringBezierPathDescent_property.addEBObserver (self.sampleStringBezierPathDescent_property) // Transient property
      newValue.definedCharacters_property.addEBObserver (self.definedCharacters_property) // Transient property
      newValue.issues_property.addEBObserver (self.issues_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'comments' stored property
  //····················································································································

  final let comments_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'nominalSize' stored property
  //····················································································································

  final let nominalSize_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'selectedTab' stored property
  //····················································································································

  final let selectedTab_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'selectedInspector' stored property
  //····················································································································

  final let selectedInspector_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'currentCharacterCodePoint' stored property
  //····················································································································

  final let currentCharacterCodePoint_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   Observers of 'currentCharacterCodePointString' transient property
  //····················································································································

  final let currentCharacterCodePointString_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'sampleStringBezierPath' transient property
  //····················································································································

  final let sampleStringBezierPath_property = EBGenericTransientProperty <NSBezierPath?> ()

  //····················································································································
  //   Observers of 'sampleStringBezierPathWidth' transient property
  //····················································································································

  final let sampleStringBezierPathWidth_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'sampleStringBezierPathAscent' transient property
  //····················································································································

  final let sampleStringBezierPathAscent_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'sampleStringBezierPathDescent' transient property
  //····················································································································

  final let sampleStringBezierPathDescent_property = EBGenericTransientProperty <String?> ()

  //····················································································································
  //   Observers of 'definedCharacters' transient property
  //····················································································································

  final let definedCharacters_property = EBGenericTransientProperty <DefinedCharactersInDevice?> ()

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  final let issues_property = EBGenericTransientProperty <CanariIssueArray?> ()

  //····················································································································
  //   Observable toMany property: characters
  //····················································································································

  private final var mObserversOf_characters = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_characters (_ inObserver : EBEvent) {
    self.mObserversOf_characters.insert (inObserver)
    if let object = self.propval {
      object.characters_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_characters (_ inObserver : EBEvent) {
    self.mObserversOf_characters.remove (inObserver)
    if let object = self.propval {
      object.characters_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   INIT
  //····················································································································

  override init () {
    super.init ()
  //--- Configure comments simple stored property
    self.comments_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.comments_property.selection {
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
  //--- Configure nominalSize simple stored property
    self.nominalSize_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.nominalSize_property.selection {
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
  //--- Configure selectedTab simple stored property
    self.selectedTab_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.selectedTab_property.selection {
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
  //--- Configure selectedInspector simple stored property
    self.selectedInspector_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.selectedInspector_property.selection {
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
  //--- Configure currentCharacterCodePoint simple stored property
    self.currentCharacterCodePoint_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.currentCharacterCodePoint_property.selection {
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
  //--- Configure currentCharacterCodePointString transient property
    self.currentCharacterCodePointString_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.currentCharacterCodePointString_property.selection {
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
  //--- Configure sampleStringBezierPath transient property
    self.sampleStringBezierPath_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.sampleStringBezierPath_property.selection {
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
  //--- Configure sampleStringBezierPathWidth transient property
    self.sampleStringBezierPathWidth_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.sampleStringBezierPathWidth_property.selection {
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
  //--- Configure sampleStringBezierPathAscent transient property
    self.sampleStringBezierPathAscent_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.sampleStringBezierPathAscent_property.selection {
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
  //--- Configure sampleStringBezierPathDescent transient property
    self.sampleStringBezierPathDescent_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.sampleStringBezierPathDescent_property.selection {
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
  //--- Configure definedCharacters transient property
    self.definedCharacters_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.definedCharacters_property.selection {
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
//   TransientObject FontRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientObject_FontRoot : ReadOnlyObject_FontRoot {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_FontRoot? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_FontRoot?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : FontRoot?
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

  override var selection : EBSelection < FontRoot? > {
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

  override var propval : FontRoot? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_FontRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_FontRoot : ReadOnlyObject_FontRoot {

  //····················································································································

  func setProp (_ inValue : FontRoot?) { } // Abstract method

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_FontRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_FontRoot : ReadWriteObject_FontRoot {

  //····················································································································

  private var mModel : ReadWriteObject_FontRoot? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_FontRoot?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : FontRoot?
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

  override func setProp (_ inValue : FontRoot?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < FontRoot? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : FontRoot? {
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
//    StoredObject_FontRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_FontRoot : ReadWriteObject_FontRoot, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : FontRoot) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : FontRoot) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : FontRoot) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : FontRoot) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : FontRoot?) {
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

  override var selection : EBSelection < FontRoot? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : FontRoot?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : FontRoot? { return self.mInternalValue }

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


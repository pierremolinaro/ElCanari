//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_SheetInProject 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_SheetInProject : ReadOnlyAbstractObjectProperty <SheetInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SheetInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.mSheetTitle_property.removeEBObserversFrom (&self.mObserversOf_mSheetTitle) // Stored property
      oldValue.issues_property.removeEBObserversFrom (&self.mObserversOf_issues) // Transient property
      oldValue.connectedPoints_property.removeEBObserversFrom (&self.mObserversOf_connectedPoints) // Transient property
      oldValue.connexionWarnings_property.removeEBObserversFrom (&self.mObserversOf_connexionWarnings) // Transient property
      oldValue.connexionErrors_property.removeEBObserversFrom (&self.mObserversOf_connexionErrors) // Transient property
      oldValue.sheetDescriptor_property.removeEBObserversFrom (&self.mObserversOf_sheetDescriptor) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.mSheetTitle_property.addEBObserversFrom (&self.mObserversOf_mSheetTitle) // Stored property
      newValue.issues_property.addEBObserversFrom (&self.mObserversOf_issues) // Transient property
      newValue.connectedPoints_property.addEBObserversFrom (&self.mObserversOf_connectedPoints) // Transient property
      newValue.connexionWarnings_property.addEBObserversFrom (&self.mObserversOf_connexionWarnings) // Transient property
      newValue.connexionErrors_property.addEBObserversFrom (&self.mObserversOf_connexionErrors) // Transient property
      newValue.sheetDescriptor_property.addEBObserversFrom (&self.mObserversOf_sheetDescriptor) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mSheetTitle' stored property
  //····················································································································

  private final var mObserversOf_mSheetTitle = EBWeakEventSet ()

  //····················································································································

  final var mSheetTitle_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mSheetTitle_property_selection) {
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

  final func addEBObserverOf_mSheetTitle (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSheetTitle.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mSheetTitle_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSheetTitle (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mSheetTitle.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mSheetTitle_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  private final var mObserversOf_issues = EBWeakEventSet ()

  //····················································································································

  final var issues_property_selection : EBSelection <CanariIssueArray?> {
    if let model = self.propval {
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
    }
  }

  //····················································································································

  final func addEBObserverOf_issues (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_issues.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.issues_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_issues (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_issues.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.issues_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_issues_toElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_issues_fromElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'connectedPoints' transient property
  //····················································································································

  private final var mObserversOf_connectedPoints = EBWeakEventSet ()

  //····················································································································

  final var connectedPoints_property_selection : EBSelection <EBShape?> {
    if let model = self.propval {
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
    }
  }

  //····················································································································

  final func addEBObserverOf_connectedPoints (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_connectedPoints.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.connectedPoints_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_connectedPoints (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_connectedPoints.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.connectedPoints_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_connectedPoints_toElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connectedPoints.apply { (_ observer : EBEvent) in
        managedObject.connectedPoints_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_connectedPoints_fromElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connectedPoints.apply { (_ observer : EBEvent) in
        managedObject.connectedPoints_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'connexionWarnings' transient property
  //····················································································································

  private final var mObserversOf_connexionWarnings = EBWeakEventSet ()

  //····················································································································

  final var connexionWarnings_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.connexionWarnings_property_selection) {
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

  final func addEBObserverOf_connexionWarnings (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_connexionWarnings.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.connexionWarnings_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_connexionWarnings (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_connexionWarnings.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.connexionWarnings_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_connexionWarnings_toElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connexionWarnings.apply { (_ observer : EBEvent) in
        managedObject.connexionWarnings_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_connexionWarnings_fromElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connexionWarnings.apply { (_ observer : EBEvent) in
        managedObject.connexionWarnings_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'connexionErrors' transient property
  //····················································································································

  private final var mObserversOf_connexionErrors = EBWeakEventSet ()

  //····················································································································

  final var connexionErrors_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.connexionErrors_property_selection) {
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

  final func addEBObserverOf_connexionErrors (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_connexionErrors.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.connexionErrors_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_connexionErrors (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_connexionErrors.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.connexionErrors_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_connexionErrors_toElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connexionErrors.apply { (_ observer : EBEvent) in
        managedObject.connexionErrors_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_connexionErrors_fromElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connexionErrors.apply { (_ observer : EBEvent) in
        managedObject.connexionErrors_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'sheetDescriptor' transient property
  //····················································································································

  private final var mObserversOf_sheetDescriptor = EBWeakEventSet ()

  //····················································································································

  final var sheetDescriptor_property_selection : EBSelection <SchematicSheetDescriptor?> {
    if let model = self.propval {
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
    }
  }

  //····················································································································

  final func addEBObserverOf_sheetDescriptor (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_sheetDescriptor.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.sheetDescriptor_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_sheetDescriptor (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_sheetDescriptor.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.sheetDescriptor_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_sheetDescriptor_toElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_sheetDescriptor.apply { (_ observer : EBEvent) in
        managedObject.sheetDescriptor_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_sheetDescriptor_fromElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_sheetDescriptor.apply { (_ observer : EBEvent) in
        managedObject.sheetDescriptor_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observable toMany property: mObjects
  //····················································································································

  private final var mObserversOf_mObjects = EBWeakEventSet ()

  //····················································································································

  final var mObjects_property_selection : EBSelection <[SchematicObject]> {
    if let model = self.propval {
      switch (model.mObjects_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .empty
    }
  }

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

  final var mPoints_property_selection : EBSelection <[PointInSchematic]> {
    if let model = self.propval {
      switch (model.mPoints_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .empty
    }
  }

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

 // override init () {
//    super.init ()
  //--- Configure mSheetTitle simple stored property
 /*   self.mSheetTitle_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.mSheetTitle_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.mSheetTitle_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.mSheetTitle_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.mSheetTitle_property) */
 // }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject SheetInProject
//----------------------------------------------------------------------------------------------------------------------

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

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_SheetInProject
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_SheetInProject : ReadOnlyObject_SheetInProject {

  //····················································································································
 
  func setProp (_ inValue : SheetInProject?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_SheetInProject
//----------------------------------------------------------------------------------------------------------------------

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

//----------------------------------------------------------------------------------------------------------------------
//    StoredObject_SheetInProject 
//----------------------------------------------------------------------------------------------------------------------

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

//----------------------------------------------------------------------------------------------------------------------


//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_SymbolSolidOval 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_SymbolSolidOval : ReadOnlyAbstractObjectProperty <SymbolSolidOval> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolSolidOval?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.y_property.removeEBObserversFrom (&self.mObserversOf_y) // Stored property
      oldValue.width_property.removeEBObserversFrom (&self.mObserversOf_width) // Stored property
      oldValue.height_property.removeEBObserversFrom (&self.mObserversOf_height) // Stored property
      oldValue.x_property.removeEBObserversFrom (&self.mObserversOf_x) // Stored property
      oldValue.filledBezierPath_property.removeEBObserversFrom (&self.mObserversOf_filledBezierPath) // Transient property
      oldValue.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      oldValue.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
      oldValue.issues_property.removeEBObserversFrom (&self.mObserversOf_issues) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.y_property.addEBObserversFrom (&self.mObserversOf_y) // Stored property
      newValue.width_property.addEBObserversFrom (&self.mObserversOf_width) // Stored property
      newValue.height_property.addEBObserversFrom (&self.mObserversOf_height) // Stored property
      newValue.x_property.addEBObserversFrom (&self.mObserversOf_x) // Stored property
      newValue.filledBezierPath_property.addEBObserversFrom (&self.mObserversOf_filledBezierPath) // Transient property
      newValue.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      newValue.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
      newValue.issues_property.addEBObserversFrom (&self.mObserversOf_issues) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'y' stored property
  //····················································································································

  private final var mObserversOf_y = EBWeakEventSet ()

  //····················································································································

  final var y_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.y_property_selection) {
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

  final func addEBObserverOf_y (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_y.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.y_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_y (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_y.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.y_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'width' stored property
  //····················································································································

  private final var mObserversOf_width = EBWeakEventSet ()

  //····················································································································

  final var width_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.width_property_selection) {
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

  final func addEBObserverOf_width (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_width.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.width_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_width (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_width.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.width_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'height' stored property
  //····················································································································

  private final var mObserversOf_height = EBWeakEventSet ()

  //····················································································································

  final var height_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.height_property_selection) {
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

  final func addEBObserverOf_height (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_height.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.height_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_height (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_height.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.height_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'x' stored property
  //····················································································································

  private final var mObserversOf_x = EBWeakEventSet ()

  //····················································································································

  final var x_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.x_property_selection) {
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

  final func addEBObserverOf_x (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_x.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.x_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_x (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_x.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.x_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'filledBezierPath' transient property
  //····················································································································

  private final var mObserversOf_filledBezierPath = EBWeakEventSet ()

  //····················································································································

  final var filledBezierPath_property_selection : EBSelection <NSBezierPath?> {
    if let model = self.propval {
      switch (model.filledBezierPath_property_selection) {
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

  final func addEBObserverOf_filledBezierPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_filledBezierPath.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.filledBezierPath_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_filledBezierPath (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_filledBezierPath.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.filledBezierPath_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_filledBezierPath_toElementsOfSet (_ inSet : Set<SymbolSolidOval>) {
    for managedObject in inSet {
      self.mObserversOf_filledBezierPath.apply { (_ observer : EBEvent) in
        managedObject.filledBezierPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_filledBezierPath_fromElementsOfSet (_ inSet : Set<SymbolSolidOval>) {
    for managedObject in inSet {
      self.mObserversOf_filledBezierPath.apply { (_ observer : EBEvent) in
        managedObject.filledBezierPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  private final var mObserversOf_objectDisplay = EBWeakEventSet ()

  //····················································································································

  final var objectDisplay_property_selection : EBSelection <EBShape?> {
    if let model = self.propval {
      switch (model.objectDisplay_property_selection) {
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

  final func addEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_objectDisplay.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_objectDisplay.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<SymbolSolidOval>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<SymbolSolidOval>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  private final var mObserversOf_selectionDisplay = EBWeakEventSet ()

  //····················································································································

  final var selectionDisplay_property_selection : EBSelection <EBShape?> {
    if let model = self.propval {
      switch (model.selectionDisplay_property_selection) {
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

  final func addEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_selectionDisplay.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_selectionDisplay.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<SymbolSolidOval>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<SymbolSolidOval>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
      }
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

  final func addEBObserversOf_issues_toElementsOfSet (_ inSet : Set<SymbolSolidOval>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_issues_fromElementsOfSet (_ inSet : Set<SymbolSolidOval>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   INIT 
  //····················································································································

 // override init () {
//    super.init ()
  //--- Configure y simple stored property
 /*   self.y_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.y_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.y_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.y_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.y_property) */
  //--- Configure width simple stored property
 /*   self.width_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.width_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.width_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.width_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.width_property) */
  //--- Configure height simple stored property
 /*   self.height_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.height_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.height_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.height_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.height_property) */
  //--- Configure x simple stored property
 /*   self.x_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.x_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.x_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.x_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.x_property) */
 // }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject SymbolSolidOval
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_SymbolSolidOval : ReadOnlyObject_SymbolSolidOval {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_SymbolSolidOval? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_SymbolSolidOval?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : SymbolSolidOval? 
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

  override var selection : EBSelection < SymbolSolidOval? > {
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

  override var propval : SymbolSolidOval? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_SymbolSolidOval
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_SymbolSolidOval : ReadOnlyObject_SymbolSolidOval {

  //····················································································································
 
  func setProp (_ inValue : SymbolSolidOval?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_SymbolSolidOval
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_SymbolSolidOval : ReadWriteObject_SymbolSolidOval {

  //····················································································································

  private var mModel : ReadWriteObject_SymbolSolidOval? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_SymbolSolidOval?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : SymbolSolidOval?
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

  override func setProp (_ inValue : SymbolSolidOval?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < SymbolSolidOval? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SymbolSolidOval? {
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
//    StoredObject_SymbolSolidOval 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_SymbolSolidOval : ReadWriteObject_SymbolSolidOval, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SymbolSolidOval) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SymbolSolidOval) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SymbolSolidOval) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SymbolSolidOval) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolSolidOval?) {
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

  override var selection : EBSelection < SymbolSolidOval? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : SymbolSolidOval?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : SymbolSolidOval? { return self.mInternalValue }

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


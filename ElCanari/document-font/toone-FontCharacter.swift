//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_FontCharacter 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_FontCharacter : ReadOnlyAbstractObjectProperty <FontCharacter> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : FontCharacter?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.codePoint_property.removeEBObserversFrom (&self.mObserversOf_codePoint) // Stored property
    inOldValue?.advance_property.removeEBObserversFrom (&self.mObserversOf_advance) // Stored property
    inOldValue?.mWarnsWhenNoSegment_property.removeEBObserversFrom (&self.mObserversOf_mWarnsWhenNoSegment) // Stored property
    inOldValue?.mWarnsWhenAdvanceIsZero_property.removeEBObserversFrom (&self.mObserversOf_mWarnsWhenAdvanceIsZero) // Stored property
    inOldValue?.segmentArrayForDrawing_property.removeEBObserversFrom (&self.mObserversOf_segmentArrayForDrawing) // Transient property
    inOldValue?.gerberCode_property.removeEBObserversFrom (&self.mObserversOf_gerberCode) // Transient property
    inOldValue?.gerberCodeInstructionCountMessage_property.removeEBObserversFrom (&self.mObserversOf_gerberCodeInstructionCountMessage) // Transient property
    inOldValue?.issues_property.removeEBObserversFrom (&self.mObserversOf_issues) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.codePoint_property.addEBObserversFrom (&self.mObserversOf_codePoint) // Stored property
    self.mInternalValue?.advance_property.addEBObserversFrom (&self.mObserversOf_advance) // Stored property
    self.mInternalValue?.mWarnsWhenNoSegment_property.addEBObserversFrom (&self.mObserversOf_mWarnsWhenNoSegment) // Stored property
    self.mInternalValue?.mWarnsWhenAdvanceIsZero_property.addEBObserversFrom (&self.mObserversOf_mWarnsWhenAdvanceIsZero) // Stored property
    self.mInternalValue?.segmentArrayForDrawing_property.addEBObserversFrom (&self.mObserversOf_segmentArrayForDrawing) // Transient property
    self.mInternalValue?.gerberCode_property.addEBObserversFrom (&self.mObserversOf_gerberCode) // Transient property
    self.mInternalValue?.gerberCodeInstructionCountMessage_property.addEBObserversFrom (&self.mObserversOf_gerberCodeInstructionCountMessage) // Transient property
    self.mInternalValue?.issues_property.addEBObserversFrom (&self.mObserversOf_issues) // Transient property
  }

  //····················································································································
  //   Observers of 'codePoint' stored property
  //····················································································································

  private final var mObserversOf_codePoint = EBWeakEventSet ()

  //····················································································································

  final var codePoint_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.codePoint_property_selection) {
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

  final func addEBObserverOf_codePoint (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_codePoint.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.codePoint_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_codePoint (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_codePoint.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.codePoint_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_codePoint_toElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_codePoint.apply { (_ observer : EBEvent) in
        managedObject.codePoint_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_codePoint_fromElementsOfSet (_ inSet : Set<FontCharacter>) {
    self.mObserversOf_codePoint.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.codePoint_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'advance' stored property
  //····················································································································

  private final var mObserversOf_advance = EBWeakEventSet ()

  //····················································································································

  final var advance_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.advance_property_selection) {
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

  final func addEBObserverOf_advance (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_advance.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.advance_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_advance (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_advance.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.advance_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_advance_toElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_advance.apply { (_ observer : EBEvent) in
        managedObject.advance_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_advance_fromElementsOfSet (_ inSet : Set<FontCharacter>) {
    self.mObserversOf_advance.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.advance_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mWarnsWhenNoSegment' stored property
  //····················································································································

  private final var mObserversOf_mWarnsWhenNoSegment = EBWeakEventSet ()

  //····················································································································

  final var mWarnsWhenNoSegment_property_selection : EBSelection <Bool?> {
    if let model = self.propval {
      switch (model.mWarnsWhenNoSegment_property_selection) {
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

  final func addEBObserverOf_mWarnsWhenNoSegment (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mWarnsWhenNoSegment.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mWarnsWhenNoSegment_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mWarnsWhenNoSegment (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mWarnsWhenNoSegment.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mWarnsWhenNoSegment_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mWarnsWhenNoSegment_toElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_mWarnsWhenNoSegment.apply { (_ observer : EBEvent) in
        managedObject.mWarnsWhenNoSegment_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mWarnsWhenNoSegment_fromElementsOfSet (_ inSet : Set<FontCharacter>) {
    self.mObserversOf_mWarnsWhenNoSegment.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mWarnsWhenNoSegment_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mWarnsWhenAdvanceIsZero' stored property
  //····················································································································

  private final var mObserversOf_mWarnsWhenAdvanceIsZero = EBWeakEventSet ()

  //····················································································································

  final var mWarnsWhenAdvanceIsZero_property_selection : EBSelection <Bool?> {
    if let model = self.propval {
      switch (model.mWarnsWhenAdvanceIsZero_property_selection) {
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

  final func addEBObserverOf_mWarnsWhenAdvanceIsZero (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mWarnsWhenAdvanceIsZero.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mWarnsWhenAdvanceIsZero_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mWarnsWhenAdvanceIsZero (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mWarnsWhenAdvanceIsZero.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mWarnsWhenAdvanceIsZero_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mWarnsWhenAdvanceIsZero_toElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_mWarnsWhenAdvanceIsZero.apply { (_ observer : EBEvent) in
        managedObject.mWarnsWhenAdvanceIsZero_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mWarnsWhenAdvanceIsZero_fromElementsOfSet (_ inSet : Set<FontCharacter>) {
    self.mObserversOf_mWarnsWhenAdvanceIsZero.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mWarnsWhenAdvanceIsZero_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'segmentArrayForDrawing' transient property
  //····················································································································

  private final var mObserversOf_segmentArrayForDrawing = EBWeakEventSet ()

  //····················································································································

  final var segmentArrayForDrawing_property_selection : EBSelection <CharacterSegmentListClass?> {
    if let model = self.propval {
      switch (model.segmentArrayForDrawing_property_selection) {
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

  final func addEBObserverOf_segmentArrayForDrawing (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_segmentArrayForDrawing.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.segmentArrayForDrawing_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_segmentArrayForDrawing (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_segmentArrayForDrawing.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.segmentArrayForDrawing_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_segmentArrayForDrawing_toElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_segmentArrayForDrawing.apply { (_ observer : EBEvent) in
        managedObject.segmentArrayForDrawing_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_segmentArrayForDrawing_fromElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_segmentArrayForDrawing.apply { (_ observer : EBEvent) in
        managedObject.segmentArrayForDrawing_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'gerberCode' transient property
  //····················································································································

  private final var mObserversOf_gerberCode = EBWeakEventSet ()

  //····················································································································

  final var gerberCode_property_selection : EBSelection <CharacterGerberCodeClass?> {
    if let model = self.propval {
      switch (model.gerberCode_property_selection) {
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

  final func addEBObserverOf_gerberCode (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_gerberCode.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.gerberCode_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_gerberCode (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_gerberCode.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.gerberCode_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_gerberCode_toElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_gerberCode.apply { (_ observer : EBEvent) in
        managedObject.gerberCode_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_gerberCode_fromElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_gerberCode.apply { (_ observer : EBEvent) in
        managedObject.gerberCode_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'gerberCodeInstructionCountMessage' transient property
  //····················································································································

  private final var mObserversOf_gerberCodeInstructionCountMessage = EBWeakEventSet ()

  //····················································································································

  final var gerberCodeInstructionCountMessage_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.gerberCodeInstructionCountMessage_property_selection) {
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

  final func addEBObserverOf_gerberCodeInstructionCountMessage (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_gerberCodeInstructionCountMessage.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.gerberCodeInstructionCountMessage_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_gerberCodeInstructionCountMessage (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_gerberCodeInstructionCountMessage.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.gerberCodeInstructionCountMessage_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_gerberCodeInstructionCountMessage_toElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_gerberCodeInstructionCountMessage.apply { (_ observer : EBEvent) in
        managedObject.gerberCodeInstructionCountMessage_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_gerberCodeInstructionCountMessage_fromElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_gerberCodeInstructionCountMessage.apply { (_ observer : EBEvent) in
        managedObject.gerberCodeInstructionCountMessage_property.removeEBObserver (observer)
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

  final func addEBObserversOf_issues_toElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_issues_fromElementsOfSet (_ inSet : Set<FontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observable toMany property: segments
  //····················································································································

  private final var mObserversOf_segments = EBWeakEventSet ()

  //····················································································································

  final var segments_property_selection : EBSelection <[SegmentForFontCharacter]> {
    if let model = self.propval {
      switch (model.segments_property_selection) {
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

  final func addEBObserverOf_segments (_ inObserver : EBEvent) {
    self.mObserversOf_segments.insert (inObserver)
    if let object = self.propval {
      object.segments_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_segments (_ inObserver : EBEvent) {
    self.mObserversOf_segments.remove (inObserver)
    if let object = self.propval {
      object.segments_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject FontCharacter
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_FontCharacter : ReadOnlyObject_FontCharacter {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_FontCharacter? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_FontCharacter?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : FontCharacter? 
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

  override var selection : EBSelection < FontCharacter? > {
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

  override var propval : FontCharacter? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_FontCharacter
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_FontCharacter : ReadOnlyObject_FontCharacter {

  //····················································································································
 
  func setProp (_ inValue : FontCharacter?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_FontCharacter
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_FontCharacter : ReadWriteObject_FontCharacter {

  //····················································································································

  private var mModel : ReadWriteObject_FontCharacter? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_FontCharacter?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : FontCharacter?
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

  override func setProp (_ inValue : FontCharacter?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < FontCharacter? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : FontCharacter? {
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
//    StoredObject_FontCharacter 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_FontCharacter : ReadWriteObject_FontCharacter, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : FontCharacter) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : FontCharacter) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : FontCharacter) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : FontCharacter) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : FontCharacter?) {
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

  override var selection : EBSelection < FontCharacter? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : FontCharacter?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : FontCharacter? { return self.mInternalValue }

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


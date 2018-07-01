//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: FontCharacterEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class FontCharacterEntity : EBManagedObject,
  FontCharacterEntity_advance,
  FontCharacterEntity_characterIsDefined,
  FontCharacterEntity_segmentArrayForDrawing,
  FontCharacterEntity_gerberCode,
  FontCharacterEntity_gerberCodeInstructionCountMessage {

  //····················································································································
  //   Accessing advance stored property
  //····················································································································

  var advance : Int {
    get {
      return self.advance_property.propval
    }
    set {
      self.advance_property.setProp (newValue)
    }
  }

  var advance_property_selection : EBSelection <Int> {
    get {
      return self.advance_property.prop
    }
  }

  //····················································································································
  //   Accessing characterIsDefined transient property
  //····················································································································

  var characterIsDefined_property_selection : EBSelection <Bool> {
    get {
      return self.characterIsDefined_property.prop
    }
  }

  //····················································································································
  //   Accessing segmentArrayForDrawing transient property
  //····················································································································

  var segmentArrayForDrawing_property_selection : EBSelection <CharacterSegmentListClass> {
    get {
      return self.segmentArrayForDrawing_property.prop
    }
  }

  //····················································································································
  //   Accessing gerberCode transient property
  //····················································································································

  var gerberCode_property_selection : EBSelection <CharacterGerberCodeClass> {
    get {
      return self.gerberCode_property.prop
    }
  }

  //····················································································································
  //   Accessing gerberCodeInstructionCountMessage transient property
  //····················································································································

  var gerberCodeInstructionCountMessage_property_selection : EBSelection <String> {
    get {
      return self.gerberCodeInstructionCountMessage_property.prop
    }
  }

  //····················································································································
  //   Accessing segments toMany relationship
  //····················································································································

  var segments_property_selection : EBSelection < [SegmentForFontCharacterEntity] > {
    get {
      return self.segments_property.prop
    }
  }

  //····················································································································
  //    Stored Properties
  //····················································································································

  var advance_property = EBStoredProperty_Int (0)

  //····················································································································
  //    Transient properties
  //····················································································································

  var characterIsDefined_property = EBTransientProperty_Bool ()
  var segmentArrayForDrawing_property = EBTransientProperty_CharacterSegmentListClass ()
  var gerberCode_property = EBTransientProperty_CharacterGerberCodeClass ()
  var gerberCodeInstructionCountMessage_property = EBTransientProperty_String ()

  //····················································································································
  //    Relationships
  //····················································································································

  var segments_property = ToManyRelationship_FontCharacterEntity_segments ()

  //····················································································································
  //    init
  //····················································································································

  override init (managedObjectContext : EBManagedObjectContext) {
    super.init (managedObjectContext:managedObjectContext)
  //--- Install compute functions for transients
    characterIsDefined_property.readModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.advance_property_selection.kind ()
        kind &= unwSelf.segments_property.count_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.advance_property.prop, unwSelf.segments_property.count_property.prop) {
          case (.single (let v0), .single (let v1)) :
            return .single (compute_FontCharacterEntity_characterIsDefined (v0, v1))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    segmentArrayForDrawing_property.readModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.segments_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.segments_property.prop) {
          case (.single (let v0)) :
            return .single (compute_FontCharacterEntity_segmentArrayForDrawing (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    gerberCode_property.readModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.segmentArrayForDrawing_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.segmentArrayForDrawing_property.prop) {
          case (.single (let v0)) :
            return .single (compute_FontCharacterEntity_gerberCode (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    gerberCodeInstructionCountMessage_property.readModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.gerberCode_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.gerberCode_property.prop) {
          case (.single (let v0)) :
            return .single (compute_FontCharacterEntity_gerberCodeInstructionCountMessage (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
  //--- Install property observers for transients
    self.advance_property.addEBObserver (self.characterIsDefined_property)
    self.segments_property.addEBObserver (self.characterIsDefined_property)
    self.segments_property.addEBObserverOf_segmentForDrawing (self.segmentArrayForDrawing_property)
    self.segmentArrayForDrawing_property.addEBObserver (self.gerberCode_property)
    self.gerberCode_property.addEBObserver (self.gerberCodeInstructionCountMessage_property)
  //--- Install undoers for properties
    self.advance_property.undoManager = undoManager ()
  //--- Install owner for relationships
    self.segments_property.owner = self
  //--- register properties for handling signature
    self.advance_property.setSignatureObserver (observer:self)
    self.segments_property.setSignatureObserver (observer:self)
  }

  //····················································································································

  deinit {
  //--- Remove observers
    self.advance_property.removeEBObserver (self.characterIsDefined_property)
    self.segments_property.removeEBObserver (self.characterIsDefined_property)
    self.segments_property.removeEBObserverOf_segmentForDrawing (self.segmentArrayForDrawing_property)
    self.segmentArrayForDrawing_property.removeEBObserver (self.gerberCode_property)
    self.gerberCode_property.removeEBObserver (self.gerberCodeInstructionCountMessage_property)
  }

  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    super.populateExplorerWindow (&y, view:view)
    createEntryForPropertyNamed (
      "advance",
      idx:self.advance_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.advance_property.mObserverExplorer,
      valueExplorer:&self.advance_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y:&y, view:view)
    createEntryForPropertyNamed (
      "characterIsDefined",
      idx:self.characterIsDefined_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.characterIsDefined_property.mObserverExplorer,
      valueExplorer:&self.characterIsDefined_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "segmentArrayForDrawing",
      idx:self.segmentArrayForDrawing_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.segmentArrayForDrawing_property.mObserverExplorer,
      valueExplorer:&self.segmentArrayForDrawing_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "gerberCode",
      idx:self.gerberCode_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.gerberCode_property.mObserverExplorer,
      valueExplorer:&self.gerberCode_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "gerberCodeInstructionCountMessage",
      idx:self.gerberCodeInstructionCountMessage_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.gerberCodeInstructionCountMessage_property.mObserverExplorer,
      valueExplorer:&self.gerberCodeInstructionCountMessage_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y:&y, view:view)
    createEntryForToManyRelationshipNamed (
      "segments",
      idx:segments_property.mEasyBindingsObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&segments_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y:&y, view:view)
    createEntryForTitle ("ToOne Relationships", y:&y, view:view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
    self.advance_property.mObserverExplorer = nil
    self.advance_property.mValueExplorer = nil
    self.segments_property.mValueExplorer = nil
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
    self.advance_property.storeIn (dictionary: ioDictionary, forKey: "advance")
    store (managedObjectArray: segments_property.propval as NSArray, relationshipName:"segments", intoDictionary: ioDictionary) ;
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
    self.advance_property.readFrom (dictionary: inDictionary, forKey:"advance")
    self.segments_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "segments",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [SegmentForFontCharacterEntity])
  }

  //····················································································································
  //   cascadeObjectRemoving
  //····················································································································

  override func cascadeObjectRemoving (_ ioObjectsToRemove : inout Set <EBManagedObject>) {
    self.segments_property.setProp (Array ()) // Set relationships to nil
    super.cascadeObjectRemoving (&ioObjectsToRemove)
  }

  //····················································································································
  //   resetToManyRelationships
  //····················································································································

  override func resetToManyRelationships () {
    super.resetToManyRelationships ()
    self.segments_property.setProp ([])
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
    for managedObject : EBManagedObject in self.segments_property.propval {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.advance_property.signature ())
    crc.accumulateUInt32 (self.segments_property.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_FontCharacterEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_FontCharacterEntity : ReadOnlyAbstractArrayProperty <FontCharacterEntity> {

  //····················································································································
  //   Observers of 'advance' stored property
  //····················································································································

  private var mObserversOf_advance = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_advance (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_advance.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.advance_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_advance (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_advance.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.advance_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_advance_toElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_advance {
        managedObject.advance_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_advance_fromElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for observer in mObserversOf_advance {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.advance_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'characterIsDefined' transient property
  //····················································································································

  private var mObserversOf_characterIsDefined = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_characterIsDefined (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_characterIsDefined.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.characterIsDefined_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_characterIsDefined (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_characterIsDefined.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.characterIsDefined_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_characterIsDefined_toElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_characterIsDefined {
        managedObject.characterIsDefined_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_characterIsDefined_fromElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_characterIsDefined {
        managedObject.characterIsDefined_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'segmentArrayForDrawing' transient property
  //····················································································································

  private var mObserversOf_segmentArrayForDrawing = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_segmentArrayForDrawing (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_segmentArrayForDrawing.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.segmentArrayForDrawing_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_segmentArrayForDrawing (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_segmentArrayForDrawing.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.segmentArrayForDrawing_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_segmentArrayForDrawing_toElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_segmentArrayForDrawing {
        managedObject.segmentArrayForDrawing_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_segmentArrayForDrawing_fromElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_segmentArrayForDrawing {
        managedObject.segmentArrayForDrawing_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'gerberCode' transient property
  //····················································································································

  private var mObserversOf_gerberCode = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_gerberCode (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_gerberCode.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.gerberCode_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_gerberCode (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_gerberCode.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.gerberCode_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_gerberCode_toElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_gerberCode {
        managedObject.gerberCode_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_gerberCode_fromElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_gerberCode {
        managedObject.gerberCode_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'gerberCodeInstructionCountMessage' transient property
  //····················································································································

  private var mObserversOf_gerberCodeInstructionCountMessage = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_gerberCodeInstructionCountMessage (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_gerberCodeInstructionCountMessage.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.gerberCodeInstructionCountMessage_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_gerberCodeInstructionCountMessage (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_gerberCodeInstructionCountMessage.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.gerberCodeInstructionCountMessage_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_gerberCodeInstructionCountMessage_toElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_gerberCodeInstructionCountMessage {
        managedObject.gerberCodeInstructionCountMessage_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_gerberCodeInstructionCountMessage_fromElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_gerberCodeInstructionCountMessage {
        managedObject.gerberCodeInstructionCountMessage_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_FontCharacterEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_FontCharacterEntity : ReadOnlyArrayOf_FontCharacterEntity {

  var readModelFunction : Optional<() -> EBSelection < [FontCharacterEntity] > >

  private var prop_cache : EBSelection < [FontCharacterEntity] >? 

  //····················································································································

  override init () {
    super.init ()
  }

  //····················································································································

  private var mSet = Set <FontCharacterEntity> ()

  override var prop : EBSelection < [FontCharacterEntity] > {
    get {
      if let unwrappedComputeFunction = readModelFunction, prop_cache == nil {
        prop_cache = unwrappedComputeFunction ()
        let newSet : Set <FontCharacterEntity>
        switch prop_cache! {
        case .multiple, .empty :
          newSet = Set <FontCharacterEntity> ()
        case .single (let array) :
          newSet = Set (array)
        }
     //--- Removed object set
        let removedSet = mSet.subtracting (newSet)
      //--- Remove observers of stored properties
        removeEBObserversOf_advance_fromElementsOfSet (removedSet)
      //--- Remove observers of transient properties
        removeEBObserversOf_characterIsDefined_fromElementsOfSet (removedSet)
        removeEBObserversOf_segmentArrayForDrawing_fromElementsOfSet (removedSet)
        removeEBObserversOf_gerberCode_fromElementsOfSet (removedSet)
        removeEBObserversOf_gerberCodeInstructionCountMessage_fromElementsOfSet (removedSet)
      //--- Added object set
        let addedSet = newSet.subtracting (mSet)
       //--- Add observers of stored properties
        addEBObserversOf_advance_toElementsOfSet (addedSet)
       //--- Add observers of transient properties
        addEBObserversOf_characterIsDefined_toElementsOfSet (addedSet)
        addEBObserversOf_segmentArrayForDrawing_toElementsOfSet (addedSet)
        addEBObserversOf_gerberCode_toElementsOfSet (addedSet)
        addEBObserversOf_gerberCodeInstructionCountMessage_toElementsOfSet (addedSet)
      //--- Update object set
        mSet = newSet
      }
      if prop_cache == nil {
        prop_cache = .empty
      }
      return prop_cache!
    }
  }

  //····················································································································

  override func postEvent () {
    if prop_cache != nil {
      prop_cache = nil
      if logEvents () {
        appendMessageString ("  \(explorerIndexString (self.mEasyBindingsObjectIndex)) propagation\n")
      }
      super.postEvent ()
    }else if logEvents () {
      appendMessageString ("  \(explorerIndexString (self.mEasyBindingsObjectIndex)) nil\n")
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontCharacterEntity_advance : class {
  var advance : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontCharacterEntity_characterIsDefined : class {
  var characterIsDefined_property_selection : EBSelection < Bool > { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontCharacterEntity_segmentArrayForDrawing : class {
  var segmentArrayForDrawing_property_selection : EBSelection < CharacterSegmentListClass > { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontCharacterEntity_gerberCode : class {
  var gerberCode_property_selection : EBSelection < CharacterGerberCodeClass > { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontCharacterEntity_gerberCodeInstructionCountMessage : class {
  var gerberCodeInstructionCountMessage_property_selection : EBSelection < String > { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: segments
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ToManyRelationshipReadWrite_FontCharacterEntity_segments : ReadOnlyArrayOf_SegmentForFontCharacterEntity {

  //····················································································································
 
  func setProp (_ value :  [SegmentForFontCharacterEntity]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: segments
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ToManyRelationship_FontCharacterEntity_segments :
ToManyRelationshipReadWrite_FontCharacterEntity_segments, EBSignatureObserverProtocol {
  weak var owner : FontCharacterEntity?

  var mValueExplorer : NSPopUpButton? {
    didSet {
      if let unwrappedExplorer = mValueExplorer {
        switch prop {
        case .empty, .multiple :
          break ;
        case .single (let v) :
          updateManagedObjectToManyRelationshipDisplay (objectArray: v, popUpButton:unwrappedExplorer)
        }
      }
    }
  }

  //····················································································································

  override init () {
    super.init ()
    self.count_property.readModelFunction = { [weak self] in
      if let unwSelf = self {
        switch unwSelf.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          return .single (v.count)
        }
      }else{
        return .empty
      }
    }
  }

  //····················································································································

  private var mSet = Set<SegmentForFontCharacterEntity> ()
  private var mValue = [SegmentForFontCharacterEntity] () {
    didSet {
      postEvent ()
      if oldValue != mValue {
        let oldSet = mSet
        mSet = Set (mValue)
      //--- Register old value in undo manager
        owner?.undoManager()?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object:oldValue)
      //--- Update explorer
        if let valueExplorer = mValueExplorer {
          updateManagedObjectToManyRelationshipDisplay (objectArray: mValue, popUpButton: valueExplorer)
        }
      //--- Removed object set
        let removedObjectSet = oldSet.subtracting (mSet)
        for managedObject in removedObjectSet {
          managedObject.setSignatureObserver (observer: nil)
        }
        removeEBObserversOf_segmentForDrawing_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_x1_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_x2_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_y1_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_y2_fromElementsOfSet (removedObjectSet)
      //--- Added object set
        let addedObjectSet = mSet.subtracting (oldSet)
        for managedObject : SegmentForFontCharacterEntity in addedObjectSet {
          managedObject.setSignatureObserver (observer: self)
        }
        addEBObserversOf_segmentForDrawing_toElementsOfSet (addedObjectSet)
        addEBObserversOf_x1_toElementsOfSet (addedObjectSet)
        addEBObserversOf_x2_toElementsOfSet (addedObjectSet)
        addEBObserversOf_y1_toElementsOfSet (addedObjectSet)
        addEBObserversOf_y2_toElementsOfSet (addedObjectSet)
      //--- Notify observers
        clearSignatureCache ()
      }
    }
  }

  override var prop : EBSelection < [SegmentForFontCharacterEntity] > {
    get {
      return .single (mValue)
    }
  }

  override func setProp (_ value :  [SegmentForFontCharacterEntity]) { mValue = value }

  var propval : [SegmentForFontCharacterEntity] { get { return mValue } }

  //····················································································································

  func performUndo (_ oldValue : [SegmentForFontCharacterEntity]) {
    mValue = oldValue
  }

  //····················································································································

  func remove (_ object : SegmentForFontCharacterEntity) {
    if mSet.contains (object) {
      var array = mValue
      let idx = array.index (of: object)
      array.remove (at: idx!)
      mValue = array
    }
  }
  
  //····················································································································

  func add (_ object : SegmentForFontCharacterEntity) {
    if !mSet.contains (object) {
      var array = mValue
      array.append (object)
      mValue = array
    }
  }
  
  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol?
  private var mSignatureCache : UInt32?

  //····················································································································

  final func setSignatureObserver (observer : EBSignatureObserverProtocol?) {
    mSignatureObserver = observer
    for object in mValue {
      object.setSignatureObserver (observer: self)
    }
  }

  //····················································································································

  final func signature () -> UInt32 {
    let computedSignature : UInt32
    if let s = mSignatureCache {
      computedSignature = s
    }else{
      computedSignature = computeSignature ()
      mSignatureCache = computedSignature
    }
    return computedSignature
  }
  
  //····················································································································

  final func computeSignature () -> UInt32 {
    var crc : UInt32 = 0
    for object in mValue {
      crc.accumulateUInt32 (object.signature ())
    }
    return crc
  }

  //····················································································································

  final func clearSignatureCache () {
    if mSignatureCache != nil {
      mSignatureCache = nil
      mSignatureObserver?.clearSignatureCache ()
    }
  }

  //····················································································································
 
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


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

  var advance_value : Int {
    get {
      return self.advance.propval
    }
    set {
      self.advance.setProp (newValue)
    }
  }

  var advance_prop : EBSelection <Int> {
    get {
      return self.advance.prop
    }
  }

  //····················································································································
  //   Accessing characterIsDefined transient property
  //····················································································································

  var characterIsDefined_prop : EBSelection <Bool> {
    get {
      return self.characterIsDefined.prop
    }
  }

  //····················································································································
  //   Accessing segmentArrayForDrawing transient property
  //····················································································································

  var segmentArrayForDrawing_prop : EBSelection <CharacterSegmentListClass> {
    get {
      return self.segmentArrayForDrawing.prop
    }
  }

  //····················································································································
  //   Accessing gerberCode transient property
  //····················································································································

  var gerberCode_prop : EBSelection <CharacterGerberCodeClass> {
    get {
      return self.gerberCode.prop
    }
  }

  //····················································································································
  //   Accessing gerberCodeInstructionCountMessage transient property
  //····················································································································

  var gerberCodeInstructionCountMessage_prop : EBSelection <String> {
    get {
      return self.gerberCodeInstructionCountMessage.prop
    }
  }

  //····················································································································
  //    Stored Properties
  //····················································································································

  var advance = EBStoredProperty_Int (0)

  //····················································································································
  //    Transient properties
  //····················································································································

  var characterIsDefined = EBTransientProperty_Bool ()
  var segmentArrayForDrawing = EBTransientProperty_CharacterSegmentListClass ()
  var gerberCode = EBTransientProperty_CharacterGerberCodeClass ()
  var gerberCodeInstructionCountMessage = EBTransientProperty_String ()

  //····················································································································
  //    Relationships
  //····················································································································

  var segments = ToManyRelationship_FontCharacterEntity_segments ()

  //····················································································································
  //    init
  //····················································································································

  override init (managedObjectContext : EBManagedObjectContext) {
    super.init (managedObjectContext:managedObjectContext)
  //--- Install compute functions for transients
    characterIsDefined.readModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.advance.prop.kind ()
        kind &= unwSelf.segments.count.prop.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.advance.prop, unwSelf.segments.count.prop) {
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
    segmentArrayForDrawing.readModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.segments.prop.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.segments.prop) {
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
    gerberCode.readModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.segmentArrayForDrawing.prop.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.segmentArrayForDrawing.prop) {
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
    gerberCodeInstructionCountMessage.readModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.gerberCode.prop.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.gerberCode.prop) {
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
    advance.addEBObserver (characterIsDefined)
    segments.addEBObserver (characterIsDefined)
    segments.addEBObserverOf_segmentForDrawing (segmentArrayForDrawing)
    segmentArrayForDrawing.addEBObserver (gerberCode)
    gerberCode.addEBObserver (gerberCodeInstructionCountMessage)
  //--- Install undoers for properties
    self.advance.undoManager = undoManager ()
  //--- Install owner for relationships
    segments.owner = self
  //--- register properties for handling signature
    advance.setSignatureObserver (observer: self)
    segments.setSignatureObserver (observer: self)
  }

  //····················································································································

  deinit {
  //--- Remove observers
    advance.removeEBObserver (characterIsDefined)
    segments.removeEBObserver (characterIsDefined)
    segments.removeEBObserverOf_segmentForDrawing (segmentArrayForDrawing)
    segmentArrayForDrawing.removeEBObserver (gerberCode)
    gerberCode.removeEBObserver (gerberCodeInstructionCountMessage)
  }

  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    super.populateExplorerWindow (&y, view:view)
    createEntryForPropertyNamed (
      "advance",
      idx:self.advance.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.advance.mObserverExplorer,
      valueExplorer:&self.advance.mValueExplorer
    )
    createEntryForTitle ("Properties", y:&y, view:view)
    createEntryForPropertyNamed (
      "characterIsDefined",
      idx:self.characterIsDefined.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.characterIsDefined.mObserverExplorer,
      valueExplorer:&self.characterIsDefined.mValueExplorer
    )
    createEntryForPropertyNamed (
      "segmentArrayForDrawing",
      idx:self.segmentArrayForDrawing.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.segmentArrayForDrawing.mObserverExplorer,
      valueExplorer:&self.segmentArrayForDrawing.mValueExplorer
    )
    createEntryForPropertyNamed (
      "gerberCode",
      idx:self.gerberCode.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.gerberCode.mObserverExplorer,
      valueExplorer:&self.gerberCode.mValueExplorer
    )
    createEntryForPropertyNamed (
      "gerberCodeInstructionCountMessage",
      idx:self.gerberCodeInstructionCountMessage.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.gerberCodeInstructionCountMessage.mObserverExplorer,
      valueExplorer:&self.gerberCodeInstructionCountMessage.mValueExplorer
    )
    createEntryForTitle ("Transients", y:&y, view:view)
    createEntryForToManyRelationshipNamed (
      "segments",
      idx:segments.mEasyBindingsObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&segments.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y:&y, view:view)
    createEntryForTitle ("ToOne Relationships", y:&y, view:view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
    self.advance.mObserverExplorer = nil
    self.advance.mValueExplorer = nil
    // segments.mObserverExplorer = nil
    segments.mValueExplorer = nil
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
    self.advance.storeIn (dictionary: ioDictionary, forKey: "advance")
    store (managedObjectArray: segments.propval as NSArray, relationshipName:"segments", intoDictionary: ioDictionary) ;
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
    self.advance.readFrom (dictionary: inDictionary, forKey:"advance")
    segments.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "segments",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [SegmentForFontCharacterEntity])
  }

  //····················································································································
  //   cascadeObjectRemoving
  //····················································································································

  override func cascadeObjectRemoving (_ ioObjectsToRemove : inout Set <EBManagedObject>) {
    self.segments.setProp (Array ()) // Set relationships to nil
    super.cascadeObjectRemoving (&ioObjectsToRemove)
  }

  //····················································································································
  //   resetToManyRelationships
  //····················································································································

  override func resetToManyRelationships () {
    super.resetToManyRelationships ()
    segments.setProp (Array ())
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
    for managedObject : EBManagedObject in segments.propval {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (advance.signature ())
    crc.accumulateUInt32 (segments.signature ())
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
        managedObject.advance.addEBObserver (inObserver)
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
        managedObject.advance.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_advance_toElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_advance {
        managedObject.advance.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_advance_fromElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for observer in mObserversOf_advance {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.advance.removeEBObserver (observer)
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
        managedObject.characterIsDefined.addEBObserver (inObserver)
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
        managedObject.characterIsDefined.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_characterIsDefined_toElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_characterIsDefined {
        managedObject.characterIsDefined.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_characterIsDefined_fromElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_characterIsDefined {
        managedObject.characterIsDefined.removeEBObserver (observer)
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
        managedObject.segmentArrayForDrawing.addEBObserver (inObserver)
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
        managedObject.segmentArrayForDrawing.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_segmentArrayForDrawing_toElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_segmentArrayForDrawing {
        managedObject.segmentArrayForDrawing.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_segmentArrayForDrawing_fromElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_segmentArrayForDrawing {
        managedObject.segmentArrayForDrawing.removeEBObserver (observer)
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
        managedObject.gerberCode.addEBObserver (inObserver)
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
        managedObject.gerberCode.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_gerberCode_toElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_gerberCode {
        managedObject.gerberCode.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_gerberCode_fromElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_gerberCode {
        managedObject.gerberCode.removeEBObserver (observer)
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
        managedObject.gerberCodeInstructionCountMessage.addEBObserver (inObserver)
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
        managedObject.gerberCodeInstructionCountMessage.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_gerberCodeInstructionCountMessage_toElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_gerberCodeInstructionCountMessage {
        managedObject.gerberCodeInstructionCountMessage.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_gerberCodeInstructionCountMessage_fromElementsOfSet (_ inSet : Set<FontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_gerberCodeInstructionCountMessage {
        managedObject.gerberCodeInstructionCountMessage.removeEBObserver (observer)
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
  var advance : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontCharacterEntity_characterIsDefined : class {
  var characterIsDefined : EBTransientProperty_Bool { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontCharacterEntity_segmentArrayForDrawing : class {
  var segmentArrayForDrawing : EBTransientProperty_CharacterSegmentListClass { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontCharacterEntity_gerberCode : class {
  var gerberCode : EBTransientProperty_CharacterGerberCodeClass { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontCharacterEntity_gerberCodeInstructionCountMessage : class {
  var gerberCodeInstructionCountMessage : EBTransientProperty_String { get }
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
    count.readModelFunction = { [weak self] in
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


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_MergerRootEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_MergerRootEntity : ReadOnlyAbstractArrayProperty <MergerRootEntity> {

  //····················································································································
  //   Observers of 'selectedPageIndex' stored property
  //····················································································································

  private var mObserversOf_selectedPageIndex = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_selectedPageIndex (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_selectedPageIndex.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.selectedPageIndex.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_selectedPageIndex (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_selectedPageIndex.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.selectedPageIndex.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_selectedPageIndex_toElementsOfSet (_ inSet : Set<MergerRootEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_selectedPageIndex {
        managedObject.selectedPageIndex.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectedPageIndex_fromElementsOfSet (_ inSet : Set<MergerRootEntity>) {
    for observer in mObserversOf_selectedPageIndex {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.selectedPageIndex.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_MergerRootEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_MergerRootEntity : ReadOnlyArrayOf_MergerRootEntity {

  var readModelFunction : Optional<() -> EBProperty < [MergerRootEntity] > >

  private var prop_cache : EBProperty < [MergerRootEntity] >? 

  //····················································································································

  override init () {
    super.init ()
  }

  //····················································································································

  private var mSet = Set <MergerRootEntity> ()

  override var prop : EBProperty < [MergerRootEntity] > {
    get {
      if let unwrappedComputeFunction = readModelFunction, prop_cache == nil {
        prop_cache = unwrappedComputeFunction ()
        let newSet : Set <MergerRootEntity>
        switch prop_cache! {
        case .multipleSelection, .noSelection :
          newSet = Set <MergerRootEntity> ()
        case .singleSelection (let array) :
          newSet = Set (array)
        }
     //--- Removed object set
        let removedSet = mSet.subtracting (newSet)
      //--- Remove observers of stored properties
        removeEBObserversOf_selectedPageIndex_fromElementsOfSet (removedSet)
      //--- Remove observers of transient properties
      //--- Added object set
        let addedSet = newSet.subtracting (mSet)
       //--- Add observers of stored properties
        addEBObserversOf_selectedPageIndex_toElementsOfSet (addedSet)
       //--- Add observers of transient properties
      //--- Update object set
        mSet = newSet
      }
      if prop_cache == nil {
        prop_cache = .noSelection
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

protocol MergerRootEntity_selectedPageIndex : class {
  var selectedPageIndex : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: boardModels
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ToManyRelationshipReadWrite_MergerRootEntity_boardModels : ReadOnlyArrayOf_BoardModelEntity {

  //····················································································································
 
  func setProp (_ value :  [BoardModelEntity]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship proxy: boardModels
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

/* final class ToManyRelationshipProxy_MergerRootEntity_boardModels : ToManyRelationshipReadWrite_MergerRootEntity_boardModels {
  private var mModel : ToManyRelationshipReadWrite_MergerRootEntity_boardModels?

  //····················································································································
  
  final func setModel (model : ToManyRelationshipReadWrite_MergerRootEntity_boardModels?) {
    mModel = model
  }

  //····················································································································
  
  override var prop : EBProperty < [BoardModelEntity] > {
    get {
      return mModel?.prop ?? .noSelection
    }
  }
 
   //····················································································································
 
  override func setProp (_ value : [BoardModelEntity]) {
    switch self.prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let array) :
      mModel?.setProp (array)
    }
  }
 
  //····················································································································

}
*/

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: boardModels
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ToManyRelationship_MergerRootEntity_boardModels :
ToManyRelationshipReadWrite_MergerRootEntity_boardModels, EBSignatureObserverProtocol {
  weak var owner : MergerRootEntity?

  var mValueExplorer : NSPopUpButton? {
    didSet {
      if let unwrappedExplorer = mValueExplorer {
        switch prop {
        case .noSelection, .multipleSelection :
          break ;
        case .singleSelection (let v) :
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
        case .noSelection :
          return .noSelection
        case .multipleSelection :
          return .multipleSelection
        case .singleSelection (let v) :
          return .singleSelection (v.count)
        }
      }else{
        return .noSelection
      }
    }
  }

  //····················································································································

  private var mSet = Set<BoardModelEntity> ()
  private var mValue = [BoardModelEntity] () {
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
          managedObject.myArtwork.owner = nil ;
        }
        removeEBObserversOf_artworkName_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backComponentNameSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backComponentNameSegmentsCount_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backComponentNameSegmentsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backComponentValueSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backComponentValueSegmentsCount_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backComponentValuesForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backLayoutTextsSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backLayoutTextsSegmentsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backLegendTextsSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backLegendTextsSegmentsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backPackageSegmentsCount_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backPackagesSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backPackagesSegmentsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backPads_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backPadsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backTrackSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backTrackSegmentsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_backTracksSegmentsCount_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_boardHeight_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_boardHeightUnit_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_boardLimitWidth_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_boardLimitWidthUnit_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_boardLimits_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_boardWidth_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_boardWidthUnit_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontComponentNameSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontComponentNameSegmentsCount_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontComponentNameSegmentsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontComponentValueSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontComponentValueSegmentsCount_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontComponentValuesForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontLayoutTextsSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontLayoutTextsSegmentsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontLegendTextsSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontLegendTextsSegmentsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontPackageSegmentsCount_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontPackagesSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontPackagesSegmentsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontPads_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontPadsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontTrackSegments_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontTrackSegmentsForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_frontTracksSegmentsCount_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_holes_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_holesForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_name_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_padsHoles_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_viaCount_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_viaShapes_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_viaShapesForDisplay_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_viasHoles_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_zoom_fromElementsOfSet (removedObjectSet)
      //--- Added object set
        let addedObjectSet = mSet.subtracting (oldSet)
        for managedObject : BoardModelEntity in addedObjectSet {
          managedObject.setSignatureObserver (observer: self)
          managedObject.myArtwork.setProp (owner)
        }
        addEBObserversOf_artworkName_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backComponentNameSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backComponentNameSegmentsCount_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backComponentNameSegmentsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backComponentValueSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backComponentValueSegmentsCount_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backComponentValuesForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backLayoutTextsSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backLayoutTextsSegmentsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backLegendTextsSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backLegendTextsSegmentsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backPackageSegmentsCount_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backPackagesSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backPackagesSegmentsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backPads_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backPadsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backTrackSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backTrackSegmentsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_backTracksSegmentsCount_toElementsOfSet (addedObjectSet)
        addEBObserversOf_boardHeight_toElementsOfSet (addedObjectSet)
        addEBObserversOf_boardHeightUnit_toElementsOfSet (addedObjectSet)
        addEBObserversOf_boardLimitWidth_toElementsOfSet (addedObjectSet)
        addEBObserversOf_boardLimitWidthUnit_toElementsOfSet (addedObjectSet)
        addEBObserversOf_boardLimits_toElementsOfSet (addedObjectSet)
        addEBObserversOf_boardWidth_toElementsOfSet (addedObjectSet)
        addEBObserversOf_boardWidthUnit_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontComponentNameSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontComponentNameSegmentsCount_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontComponentNameSegmentsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontComponentValueSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontComponentValueSegmentsCount_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontComponentValuesForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontLayoutTextsSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontLayoutTextsSegmentsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontLegendTextsSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontLegendTextsSegmentsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontPackageSegmentsCount_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontPackagesSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontPackagesSegmentsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontPads_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontPadsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontTrackSegments_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontTrackSegmentsForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_frontTracksSegmentsCount_toElementsOfSet (addedObjectSet)
        addEBObserversOf_holes_toElementsOfSet (addedObjectSet)
        addEBObserversOf_holesForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_name_toElementsOfSet (addedObjectSet)
        addEBObserversOf_padsHoles_toElementsOfSet (addedObjectSet)
        addEBObserversOf_viaCount_toElementsOfSet (addedObjectSet)
        addEBObserversOf_viaShapes_toElementsOfSet (addedObjectSet)
        addEBObserversOf_viaShapesForDisplay_toElementsOfSet (addedObjectSet)
        addEBObserversOf_viasHoles_toElementsOfSet (addedObjectSet)
        addEBObserversOf_zoom_toElementsOfSet (addedObjectSet)
      //--- Notify observers
        clearSignatureCache ()
      }
    }
  }

  override var prop : EBProperty < [BoardModelEntity] > {
    get {
      return .singleSelection (mValue)
    }
  }

  override func setProp (_ value :  [BoardModelEntity]) { mValue = value }

  var propval : [BoardModelEntity] { get { return mValue } }

  //····················································································································

  func performUndo (_ oldValue : [BoardModelEntity]) {
    mValue = oldValue
  }

  //····················································································································

  func remove (_ object : BoardModelEntity) {
    if mSet.contains (object) {
      var array = mValue
      let idx = array.index (of: object)
      array.remove (at: idx!)
      mValue = array
    }
  }
  
  //····················································································································

  func add (_ object : BoardModelEntity) {
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
//    Entity: MergerRootEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class MergerRootEntity : EBManagedObject, MergerRootEntity_selectedPageIndex
{

  //····················································································································
  //    Properties
  //····················································································································

  var selectedPageIndex = EBStoredProperty_Int (0)

  //····················································································································
  //    Transient properties
  //····················································································································


  //····················································································································
  //    Relationships
  //····················································································································

  var boardModels = ToManyRelationship_MergerRootEntity_boardModels ()

  //····················································································································
  //    init
  //····················································································································

  override init (managedObjectContext : EBManagedObjectContext) {
    super.init (managedObjectContext:managedObjectContext)
  //--- Install compute functions for transients
  //--- Install property observers for transients
  //--- Install undoers for properties
    self.selectedPageIndex.undoManager = undoManager ()
  //--- Install owner for relationships
    boardModels.owner = self
  //--- register properties for handling signature
  }

  //····················································································································

  deinit {
  //--- Remove observers
  }

  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    super.populateExplorerWindow (&y, view:view)
    createEntryForPropertyNamed (
      "selectedPageIndex",
      idx:self.selectedPageIndex.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.selectedPageIndex.mObserverExplorer,
      valueExplorer:&self.selectedPageIndex.mValueExplorer
    )
    createEntryForTitle ("Properties", y:&y, view:view)
    createEntryForTitle ("Transients", y:&y, view:view)
    createEntryForToManyRelationshipNamed (
      "boardModels",
      idx:boardModels.mEasyBindingsObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&boardModels.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y:&y, view:view)
    createEntryForTitle ("ToOne Relationships", y:&y, view:view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
    self.selectedPageIndex.mObserverExplorer = nil
    self.selectedPageIndex.mValueExplorer = nil
    // boardModels.mObserverExplorer = nil
    boardModels.mValueExplorer = nil
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
    self.selectedPageIndex.storeIn (dictionary: ioDictionary, forKey: "selectedPageIndex")
    store (managedObjectArray: boardModels.propval as NSArray, relationshipName:"boardModels", intoDictionary: ioDictionary) ;
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
    self.selectedPageIndex.readFrom (dictionary: inDictionary, forKey:"selectedPageIndex")
    boardModels.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "boardModels",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [BoardModelEntity])
  }

  //····················································································································
  //   cascadeObjectRemoving
  //····················································································································

  override func cascadeObjectRemoving (_ ioObjectsToRemove : inout Set <EBManagedObject>) {
    self.boardModels.setProp (Array ()) // Set relationships to nil
    super.cascadeObjectRemoving (&ioObjectsToRemove)
  }

  //····················································································································
  //   resetToManyRelationships
  //····················································································································

  override func resetToManyRelationships () {
    super.resetToManyRelationships ()
    boardModels.setProp (Array ())
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
    for managedObject : EBManagedObject in boardModels.propval {
      objects.append (managedObject)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentEntity_y1 : class {
  var y1 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentEntity_x2 : class {
  var x2 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentEntity_y2 : class {
  var y2 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentEntity_width : class {
  var width : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentEntity_x1 : class {
  var x1 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SegmentEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SegmentEntity : EBManagedObject,
         SegmentEntity_y1,
         SegmentEntity_x2,
         SegmentEntity_y2,
         SegmentEntity_width,
         SegmentEntity_x1 {

  //····················································································································
  //   Atomic property: y1
  //····················································································································

  let y1_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var y1 : Int {
    get { return self.y1_property.propval }
    set { self.y1_property.setProp (newValue) }
  }

  //····················································································································

  var y1_property_selection : EBSelection <Int> { return self.y1_property.prop }

  //····················································································································
  //   Atomic property: x2
  //····················································································································

  let x2_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var x2 : Int {
    get { return self.x2_property.propval }
    set { self.x2_property.setProp (newValue) }
  }

  //····················································································································

  var x2_property_selection : EBSelection <Int> { return self.x2_property.prop }

  //····················································································································
  //   Atomic property: y2
  //····················································································································

  let y2_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var y2 : Int {
    get { return self.y2_property.propval }
    set { self.y2_property.setProp (newValue) }
  }

  //····················································································································

  var y2_property_selection : EBSelection <Int> { return self.y2_property.prop }

  //····················································································································
  //   Atomic property: width
  //····················································································································

  let width_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var width : Int {
    get { return self.width_property.propval }
    set { self.width_property.setProp (newValue) }
  }

  //····················································································································

  var width_property_selection : EBSelection <Int> { return self.width_property.prop }

  //····················································································································
  //   Atomic property: x1
  //····················································································································

  let x1_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var x1 : Int {
    get { return self.x1_property.propval }
    set { self.x1_property.setProp (newValue) }
  }

  //····················································································································

  var x1_property_selection : EBSelection <Int> { return self.x1_property.prop }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
    self.configureObject ()
  }
  
  //····················································································································

  private final func configureObject () {
  //--- Atomic property: y1
    self.y1_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: x2
    self.x2_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: y2
    self.y2_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: width
    self.width_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: x1
    self.x1_property.ebUndoManager = self.ebUndoManager
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
  //--- Unregister properties for handling signature
  }

  //····················································································································
  //    Extern delegates
  //····················································································································


  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    super.populateExplorerWindow (&y, view:view)
    createEntryForPropertyNamed (
      "y1",
      idx: self.y1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y1_property.mObserverExplorer,
      valueExplorer: &self.y1_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x2",
      idx: self.x2_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x2_property.mObserverExplorer,
      valueExplorer: &self.x2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y2",
      idx: self.y2_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y2_property.mObserverExplorer,
      valueExplorer: &self.y2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "width",
      idx: self.width_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.width_property.mObserverExplorer,
      valueExplorer: &self.width_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x1",
      idx: self.x1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x1_property.mObserverExplorer,
      valueExplorer: &self.x1_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: y1
    self.y1_property.mObserverExplorer = nil
    self.y1_property.mValueExplorer = nil
  //--- Atomic property: x2
    self.x2_property.mObserverExplorer = nil
    self.x2_property.mValueExplorer = nil
  //--- Atomic property: y2
    self.y2_property.mObserverExplorer = nil
    self.y2_property.mValueExplorer = nil
  //--- Atomic property: width
    self.width_property.mObserverExplorer = nil
    self.width_property.mValueExplorer = nil
  //--- Atomic property: x1
    self.x1_property.mObserverExplorer = nil
    self.x1_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
  //---
    super.cleanUpToManyRelationships ()
  }

  //····················································································································
  //    cleanUpToOneRelationships
  //····················································································································

  override internal func cleanUpToOneRelationships () {
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: y1
    self.y1_property.storeIn (dictionary: ioDictionary, forKey:"y1")
  //--- Atomic property: x2
    self.x2_property.storeIn (dictionary: ioDictionary, forKey:"x2")
  //--- Atomic property: y2
    self.y2_property.storeIn (dictionary: ioDictionary, forKey:"y2")
  //--- Atomic property: width
    self.width_property.storeIn (dictionary: ioDictionary, forKey:"width")
  //--- Atomic property: x1
    self.x1_property.storeIn (dictionary: ioDictionary, forKey:"x1")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: y1
    self.y1_property.readFrom (dictionary: inDictionary, forKey:"y1")
  //--- Atomic property: x2
    self.x2_property.readFrom (dictionary: inDictionary, forKey:"x2")
  //--- Atomic property: y2
    self.y2_property.readFrom (dictionary: inDictionary, forKey:"y2")
  //--- Atomic property: width
    self.width_property.readFrom (dictionary: inDictionary, forKey:"width")
  //--- Atomic property: x1
    self.x1_property.readFrom (dictionary: inDictionary, forKey:"x1")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


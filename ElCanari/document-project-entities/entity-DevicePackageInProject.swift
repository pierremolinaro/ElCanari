//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePackageInProject_mPackageName : class {
  var mPackageName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: DevicePackageInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class DevicePackageInProject : EBManagedObject,
         DevicePackageInProject_mPackageName {

  //····················································································································
  //   To many property: mMasterPads
  //····················································································································

  let mMasterPads_property = StoredArrayOf_DeviceMasterPadInProject ()

  //····················································································································

  var mMasterPads_property_selection : EBSelection < [DeviceMasterPadInProject] > {
    return self.mMasterPads_property.prop
  }

  //····················································································································

  var mMasterPads : [DeviceMasterPadInProject] {
    get { return self.mMasterPads_property.propval }
    set { self.mMasterPads_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: mPackageName
  //····················································································································

  let mPackageName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mPackageName : String {
    get { return self.mPackageName_property.propval }
    set { self.mPackageName_property.setProp (newValue) }
  }

  //····················································································································

  var mPackageName_property_selection : EBSelection <String> { return self.mPackageName_property.prop }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
  //--- To many property: mMasterPads (no option)
    self.mMasterPads_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mPackageName
    self.mPackageName_property.ebUndoManager = self.ebUndoManager
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
      "mPackageName",
      idx: self.mPackageName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPackageName_property.mObserverExplorer,
      valueExplorer: &self.mPackageName_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "mMasterPads",
      idx:mMasterPads_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mMasterPads_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- To many property: mMasterPads
    self.mMasterPads_property.mValueExplorer = nil
  //--- Atomic property: mPackageName
    self.mPackageName_property.mObserverExplorer = nil
    self.mPackageName_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mMasterPads = []
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
  //--- To many property: mMasterPads
    self.store (
      managedObjectArray: self.mMasterPads_property.propval,
      relationshipName: "mMasterPads",
      intoDictionary: ioDictionary
    )
  //--- Atomic property: mPackageName
    self.mPackageName_property.storeIn (dictionary: ioDictionary, forKey:"mPackageName")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: mMasterPads
    self.mMasterPads_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mMasterPads",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [DeviceMasterPadInProject])
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mPackageName
    self.mPackageName_property.readFrom (dictionary: inDictionary, forKey:"mPackageName")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: mMasterPads
    for managedObject in self.mMasterPads {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: mMasterPads
    for managedObject in self.mMasterPads {
      objects.append (managedObject)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


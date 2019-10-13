//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_y : class {
  var y : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_width : class {
  var width : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_height : class {
  var height : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_shape : class {
  var shape : PadShape { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_rotation : class {
  var rotation : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_x : class {
  var x : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: BoardModelPad
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class BoardModelPad : EBManagedObject,
         BoardModelPad_y,
         BoardModelPad_width,
         BoardModelPad_height,
         BoardModelPad_shape,
         BoardModelPad_rotation,
         BoardModelPad_x {

  //····················································································································
  //   Atomic property: y
  //····················································································································

  let y_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var y : Int {
    get { return self.y_property.propval }
    set { self.y_property.setProp (newValue) }
  }

  //····················································································································

  var y_property_selection : EBSelection <Int> { return self.y_property.prop }

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
  //   Atomic property: height
  //····················································································································

  let height_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var height : Int {
    get { return self.height_property.propval }
    set { self.height_property.setProp (newValue) }
  }

  //····················································································································

  var height_property_selection : EBSelection <Int> { return self.height_property.prop }

  //····················································································································
  //   Atomic property: shape
  //····················································································································

  let shape_property = EBStoredProperty_PadShape (defaultValue: PadShape.rect)

  //····················································································································

  var shape : PadShape {
    get { return self.shape_property.propval }
    set { self.shape_property.setProp (newValue) }
  }

  //····················································································································

  var shape_property_selection : EBSelection <PadShape> { return self.shape_property.prop }

  //····················································································································
  //   Atomic property: rotation
  //····················································································································

  let rotation_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var rotation : Int {
    get { return self.rotation_property.propval }
    set { self.rotation_property.setProp (newValue) }
  }

  //····················································································································

  var rotation_property_selection : EBSelection <Int> { return self.rotation_property.prop }

  //····················································································································
  //   Atomic property: x
  //····················································································································

  let x_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var x : Int {
    get { return self.x_property.propval }
    set { self.x_property.setProp (newValue) }
  }

  //····················································································································

  var x_property_selection : EBSelection <Int> { return self.x_property.prop }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
    self.configureObject ()
  }
  
  //····················································································································

  private final func configureObject () {
  //--- Atomic property: y
    self.y_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: width
    self.width_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: height
    self.height_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: shape
    self.shape_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: rotation
    self.rotation_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: x
    self.x_property.ebUndoManager = self.ebUndoManager
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
      "y",
      idx: self.y_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y_property.mObserverExplorer,
      valueExplorer: &self.y_property.mValueExplorer
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
      "height",
      idx: self.height_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.height_property.mObserverExplorer,
      valueExplorer: &self.height_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "shape",
      idx: self.shape_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.shape_property.mObserverExplorer,
      valueExplorer: &self.shape_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "rotation",
      idx: self.rotation_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.rotation_property.mObserverExplorer,
      valueExplorer: &self.rotation_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x",
      idx: self.x_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x_property.mObserverExplorer,
      valueExplorer: &self.x_property.mValueExplorer
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
  //--- Atomic property: y
    self.y_property.mObserverExplorer = nil
    self.y_property.mValueExplorer = nil
  //--- Atomic property: width
    self.width_property.mObserverExplorer = nil
    self.width_property.mValueExplorer = nil
  //--- Atomic property: height
    self.height_property.mObserverExplorer = nil
    self.height_property.mValueExplorer = nil
  //--- Atomic property: shape
    self.shape_property.mObserverExplorer = nil
    self.shape_property.mValueExplorer = nil
  //--- Atomic property: rotation
    self.rotation_property.mObserverExplorer = nil
    self.rotation_property.mValueExplorer = nil
  //--- Atomic property: x
    self.x_property.mObserverExplorer = nil
    self.x_property.mValueExplorer = nil
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
  //--- Atomic property: y
    self.y_property.storeIn (dictionary: ioDictionary, forKey:"y")
  //--- Atomic property: width
    self.width_property.storeIn (dictionary: ioDictionary, forKey:"width")
  //--- Atomic property: height
    self.height_property.storeIn (dictionary: ioDictionary, forKey:"height")
  //--- Atomic property: shape
    self.shape_property.storeIn (dictionary: ioDictionary, forKey:"shape")
  //--- Atomic property: rotation
    self.rotation_property.storeIn (dictionary: ioDictionary, forKey:"rotation")
  //--- Atomic property: x
    self.x_property.storeIn (dictionary: ioDictionary, forKey:"x")
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
  //--- Atomic property: y
    self.y_property.readFrom (dictionary: inDictionary, forKey:"y")
  //--- Atomic property: width
    self.width_property.readFrom (dictionary: inDictionary, forKey:"width")
  //--- Atomic property: height
    self.height_property.readFrom (dictionary: inDictionary, forKey:"height")
  //--- Atomic property: shape
    self.shape_property.readFrom (dictionary: inDictionary, forKey:"shape")
  //--- Atomic property: rotation
    self.rotation_property.readFrom (dictionary: inDictionary, forKey:"rotation")
  //--- Atomic property: x
    self.x_property.readFrom (dictionary: inDictionary, forKey:"x")
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


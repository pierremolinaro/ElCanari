//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol BoardModelPad_y : AnyObject {
  var y : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardModelPad_width : AnyObject {
  var width : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardModelPad_height : AnyObject {
  var height : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardModelPad_shape : AnyObject {
  var shape : PadShape { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardModelPad_rotation : AnyObject {
  var rotation : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardModelPad_x : AnyObject {
  var x : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: BoardModelPad
//----------------------------------------------------------------------------------------------------------------------

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

  final let y_property : EBStoredProperty_Int

  //····················································································································

  final func reset_y_toDefaultValue () {
    self.y = 0
  }

  //····················································································································

  final var y : Int {
    get { return self.y_property.propval }
    set { self.y_property.setProp (newValue) }
  }

  //····················································································································

  final var y_property_selection : EBSelection <Int> { return self.y_property.selection }

  //····················································································································
  //   Atomic property: width
  //····················································································································

  final let width_property : EBStoredProperty_Int

  //····················································································································

  final func reset_width_toDefaultValue () {
    self.width = 0
  }

  //····················································································································

  final var width : Int {
    get { return self.width_property.propval }
    set { self.width_property.setProp (newValue) }
  }

  //····················································································································

  final var width_property_selection : EBSelection <Int> { return self.width_property.selection }

  //····················································································································
  //   Atomic property: height
  //····················································································································

  final let height_property : EBStoredProperty_Int

  //····················································································································

  final func reset_height_toDefaultValue () {
    self.height = 0
  }

  //····················································································································

  final var height : Int {
    get { return self.height_property.propval }
    set { self.height_property.setProp (newValue) }
  }

  //····················································································································

  final var height_property_selection : EBSelection <Int> { return self.height_property.selection }

  //····················································································································
  //   Atomic property: shape
  //····················································································································

  final let shape_property : EBStoredProperty_PadShape

  //····················································································································

  final func reset_shape_toDefaultValue () {
    self.shape = PadShape.rect
  }

  //····················································································································

  final var shape : PadShape {
    get { return self.shape_property.propval }
    set { self.shape_property.setProp (newValue) }
  }

  //····················································································································

  final var shape_property_selection : EBSelection <PadShape> { return self.shape_property.selection }

  //····················································································································
  //   Atomic property: rotation
  //····················································································································

  final let rotation_property : EBStoredProperty_Int

  //····················································································································

  final func reset_rotation_toDefaultValue () {
    self.rotation = 0
  }

  //····················································································································

  final var rotation : Int {
    get { return self.rotation_property.propval }
    set { self.rotation_property.setProp (newValue) }
  }

  //····················································································································

  final var rotation_property_selection : EBSelection <Int> { return self.rotation_property.selection }

  //····················································································································
  //   Atomic property: x
  //····················································································································

  final let x_property : EBStoredProperty_Int

  //····················································································································

  final func reset_x_toDefaultValue () {
    self.x = 0
  }

  //····················································································································

  final var x : Int {
    get { return self.x_property.propval }
    set { self.x_property.setProp (newValue) }
  }

  //····················································································································

  final var x_property_selection : EBSelection <Int> { return self.x_property.selection }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    self.y_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.width_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.height_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.shape_property = EBStoredProperty_PadShape (defaultValue: PadShape.rect, undoManager: ebUndoManager)
    self.rotation_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.x_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    super.init (ebUndoManager)
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
    self.y_property.storeIn (dictionary: ioDictionary, forKey: "y")
  //--- Atomic property: width
    self.width_property.storeIn (dictionary: ioDictionary, forKey: "width")
  //--- Atomic property: height
    self.height_property.storeIn (dictionary: ioDictionary, forKey: "height")
  //--- Atomic property: shape
    self.shape_property.storeIn (dictionary: ioDictionary, forKey: "shape")
  //--- Atomic property: rotation
    self.rotation_property.storeIn (dictionary: ioDictionary, forKey: "rotation")
  //--- Atomic property: x
    self.x_property.storeIn (dictionary: ioDictionary, forKey: "x")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: y
    self.y_property.readFrom (dictionary: inDictionary, forKey: "y")
  //--- Atomic property: width
    self.width_property.readFrom (dictionary: inDictionary, forKey: "width")
  //--- Atomic property: height
    self.height_property.readFrom (dictionary: inDictionary, forKey: "height")
  //--- Atomic property: shape
    self.shape_property.readFrom (dictionary: inDictionary, forKey: "shape")
  //--- Atomic property: rotation
    self.rotation_property.readFrom (dictionary: inDictionary, forKey: "rotation")
  //--- Atomic property: x
    self.x_property.readFrom (dictionary: inDictionary, forKey: "x")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "y\n"
    ioString += "width\n"
    ioString += "height\n"
    ioString += "shape\n"
    ioString += "rotation\n"
    ioString += "x\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.y.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.width.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.height.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.shape.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.rotation.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.x.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //    setUpWithTextDictionary
  //····················································································································

  override func setUpWithTextDictionary (_ inDictionary : [String : NSRange],
                                         _ inObjectArray : [EBManagedObject],
                                         _ inData : Data,
                                         _ inParallelObjectSetupContext : ParallelObjectSetupContext) {
    super.setUpWithTextDictionary (inDictionary, inObjectArray, inData, inParallelObjectSetupContext)
    inParallelObjectSetupContext.mOperationQueue.addOperation {
    //--- Atomic properties
      if let range = inDictionary ["y"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.y = value
      }
      if let range = inDictionary ["width"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.width = value
      }
      if let range = inDictionary ["height"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.height = value
      }
      if let range = inDictionary ["shape"], let value = PadShape.unarchiveFromDataRange (inData, range) {
        self.shape = value
      }
      if let range = inDictionary ["rotation"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.rotation = value
      }
      if let range = inDictionary ["x"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.x = value
      }
    //--- To one relationships
    //--- To many relationships
    }
  //--- End of addOperation
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

//----------------------------------------------------------------------------------------------------------------------


//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol SegmentEntity_y1 : AnyObject {
  var y1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SegmentEntity_x2 : AnyObject {
  var x2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SegmentEntity_y2 : AnyObject {
  var y2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SegmentEntity_width : AnyObject {
  var width : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SegmentEntity_x1 : AnyObject {
  var x1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

final class SegmentEntity : EBManagedObject,
         SegmentEntity_y1,
         SegmentEntity_x2,
         SegmentEntity_y2,
         SegmentEntity_width,
         SegmentEntity_x1 {

  //····················································································································
  //   Atomic property: y1
  //····················································································································

  final let y1_property : EBStoredProperty_Int

  //····················································································································

  final func reset_y1_toDefaultValue () {
    self.y1 = 0
  }

  //····················································································································

  final var y1 : Int {
    get { return self.y1_property.propval }
    set { self.y1_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: x2
  //····················································································································

  final let x2_property : EBStoredProperty_Int

  //····················································································································

  final func reset_x2_toDefaultValue () {
    self.x2 = 0
  }

  //····················································································································

  final var x2 : Int {
    get { return self.x2_property.propval }
    set { self.x2_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: y2
  //····················································································································

  final let y2_property : EBStoredProperty_Int

  //····················································································································

  final func reset_y2_toDefaultValue () {
    self.y2 = 0
  }

  //····················································································································

  final var y2 : Int {
    get { return self.y2_property.propval }
    set { self.y2_property.setProp (newValue) }
  }

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
  //   Atomic property: x1
  //····················································································································

  final let x1_property : EBStoredProperty_Int

  //····················································································································

  final func reset_x1_toDefaultValue () {
    self.x1 = 0
  }

  //····················································································································

  final var x1 : Int {
    get { return self.x1_property.propval }
    set { self.x1_property.setProp (newValue) }
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    self.y1_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.x2_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.y2_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.width_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.x1_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
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
    self.y1_property.storeIn (dictionary: ioDictionary, forKey: "y1")
  //--- Atomic property: x2
    self.x2_property.storeIn (dictionary: ioDictionary, forKey: "x2")
  //--- Atomic property: y2
    self.y2_property.storeIn (dictionary: ioDictionary, forKey: "y2")
  //--- Atomic property: width
    self.width_property.storeIn (dictionary: ioDictionary, forKey: "width")
  //--- Atomic property: x1
    self.x1_property.storeIn (dictionary: ioDictionary, forKey: "x1")
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
  //--- Atomic property: y1
    self.y1_property.readFrom (dictionary: inDictionary, forKey: "y1")
  //--- Atomic property: x2
    self.x2_property.readFrom (dictionary: inDictionary, forKey: "x2")
  //--- Atomic property: y2
    self.y2_property.readFrom (dictionary: inDictionary, forKey: "y2")
  //--- Atomic property: width
    self.width_property.readFrom (dictionary: inDictionary, forKey: "width")
  //--- Atomic property: x1
    self.x1_property.readFrom (dictionary: inDictionary, forKey: "x1")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "y1\n"
    ioString += "x2\n"
    ioString += "y2\n"
    ioString += "width\n"
    ioString += "x1\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.y1.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.x2.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.y2.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.width.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.x1.appendPropertyValueTo (&ioData)
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
    inParallelObjectSetupContext.addOperation {
    //--- Atomic properties
      if let range = inDictionary ["y1"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.y1 = value
      }
      if let range = inDictionary ["x2"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.x2 = value
      }
      if let range = inDictionary ["y2"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.y2 = value
      }
      if let range = inDictionary ["width"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.width = value
      }
      if let range = inDictionary ["x1"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.x1 = value
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


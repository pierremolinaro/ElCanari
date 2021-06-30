//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SchematicObject_issues : AnyObject {
  var issues : CanariIssueArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SchematicObject_connectedPoints : AnyObject {
  var connectedPoints : CanariPointArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SchematicObject_sheetDescriptor : AnyObject {
  var sheetDescriptor : SchematicSheetDescriptor? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SchematicObject_selectionDisplay : AnyObject {
  var selectionDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SchematicObject_objectDisplay : AnyObject {
  var objectDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SchematicObject_isPlacedInSchematic : AnyObject {
  var isPlacedInSchematic : Bool? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SchematicObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SchematicObject : EBGraphicManagedObject,
         SchematicObject_issues,
         SchematicObject_connectedPoints,
         SchematicObject_sheetDescriptor,
         SchematicObject_selectionDisplay,
         SchematicObject_objectDisplay,
         SchematicObject_isPlacedInSchematic {

  //····················································································································
  //   To one property: mSheet
  //····················································································································

  final let mSheet_property = StoredObject_SheetInProject (usedForSignature: false)

  //····················································································································

  final var mSheet : SheetInProject? {
    get {
      return self.mSheet_property.propval
    }
    set {
      if self.mSheet_property.propval != nil {
        self.mSheet_property.setProp (nil)
      }
      if newValue != nil {
        self.mSheet_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  final let mSheet_none = EBGenericTransientProperty <Bool> ()

  //····················································································································
  //   Transient property: issues
  //····················································································································

  final let issues_property = EBTransientProperty_CanariIssueArray ()

  //····················································································································

  final var issues : CanariIssueArray? {
    switch self.issues_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: connectedPoints
  //····················································································································

  final let connectedPoints_property = EBTransientProperty_CanariPointArray ()

  //····················································································································

  final var connectedPoints : CanariPointArray? {
    switch self.connectedPoints_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: sheetDescriptor
  //····················································································································

  final let sheetDescriptor_property = EBTransientProperty_SchematicSheetDescriptor ()

  //····················································································································

  final var sheetDescriptor : SchematicSheetDescriptor? {
    switch self.sheetDescriptor_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: isPlacedInSchematic
  //····················································································································

  final let isPlacedInSchematic_property = EBTransientProperty_Bool ()

  //····················································································································

  final var isPlacedInSchematic : Bool? {
    switch self.isPlacedInSchematic_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
    self.mSheet_none.mReadModelFunction = { [weak self] in // §
      if let uwSelf = self {
        return .single (uwSelf.mSheet_property.propval == nil)
      }else{
        return .empty
      }
    }
    self.mSheet_property.addEBObserver (self.mSheet_none)
  //--- To one property: mSheet (has opposite to many relationship: mObjects)
    self.mSheet_property.ebUndoManager = self.ebUndoManager
    self.mSheet_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mObjects_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mObjects_property.remove (me) } }
    )
  //--- Atomic property: sheetDescriptor
    self.sheetDescriptor_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mSheet_property.sheetDescriptor_property.selection) {
        case (.single (let v0)) :
          return .single (transient_SchematicObject_sheetDescriptor (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mSheet_property.sheetDescriptor_property.addEBObserver (self.sheetDescriptor_property)
  //--- Atomic property: isPlacedInSchematic
    self.isPlacedInSchematic_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mSheet_none.selection) {
        case (.single (let v0)) :
          return .single (transient_SchematicObject_isPlacedInSchematic (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mSheet_property.addEBObserver (self.isPlacedInSchematic_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.mSheet_property.sheetDescriptor_property.removeEBObserver (self.sheetDescriptor_property)
    // self.mSheet_property.removeEBObserver (self.isPlacedInSchematic_property)
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
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "issues",
      idx: self.issues_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.issues_property.mObserverExplorer,
      valueExplorer: &self.issues_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "connectedPoints",
      idx: self.connectedPoints_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.connectedPoints_property.mObserverExplorer,
      valueExplorer: &self.connectedPoints_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "sheetDescriptor",
      idx: self.sheetDescriptor_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.sheetDescriptor_property.mObserverExplorer,
      valueExplorer: &self.sheetDescriptor_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "selectionDisplay",
      idx: self.selectionDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.selectionDisplay_property.mObserverExplorer,
      valueExplorer: &self.selectionDisplay_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "objectDisplay",
      idx: self.objectDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.objectDisplay_property.mObserverExplorer,
      valueExplorer: &self.objectDisplay_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "isPlacedInSchematic",
      idx: self.isPlacedInSchematic_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.isPlacedInSchematic_property.mObserverExplorer,
      valueExplorer: &self.isPlacedInSchematic_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mSheet",
      idx:self.mSheet_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mSheet_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- To one property: mSheet
    self.mSheet_property.mObserverExplorer = nil
    self.mSheet_property.mValueExplorer = nil
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
    self.mSheet = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  //--- To one property: mSheet
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mSheet",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? SheetInProject {
        self.mSheet_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
  //--- To one relationships
    ioString += "mSheet\n"
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
  //--- To one relationships
    if let object = self.mSheet {
      ioData.append (base62Encoded: object.savingIndex)
    }
    ioData.append (ascii: .lineFeed)
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
    //--- To one relationships
      if let range = inDictionary ["mSheet"], let objectIndex = inData.base62EncodedInt (range: range) {
        let object = inObjectArray [objectIndex] as! SheetInProject
        inParallelObjectSetupContext.addToOneSetupDeferredOperation { self.mSheet = object }
      }
    //--- To many relationships
    }
  //--- End of addOperation
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To one property: mSheet
    if let object = self.mSheet {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To one property: mSheet
    if let object = self.mSheet {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


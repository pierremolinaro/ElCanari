//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol WireInSchematic_objectDisplay : AnyObject {
  var objectDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol WireInSchematic_selectionDisplay : AnyObject {
  var selectionDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol WireInSchematic_netName : AnyObject {
  var netName : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol WireInSchematic_netClassName : AnyObject {
  var netClassName : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol WireInSchematic_hasNet : AnyObject {
  var hasNet : Bool? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: WireInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class WireInSchematic : SchematicObject,
         WireInSchematic_objectDisplay,
         WireInSchematic_selectionDisplay,
         WireInSchematic_netName,
         WireInSchematic_netClassName,
         WireInSchematic_hasNet {

  //····················································································································
  //   To one property: mP1
  //····················································································································

  final let mP1_property = StoredObject_PointInSchematic (usedForSignature: false)

  //····················································································································

  final var mP1 : PointInSchematic? {
    get {
      return self.mP1_property.propval
    }
    set {
      if self.mP1_property.propval != nil {
        self.mP1_property.setProp (nil)
      }
      if newValue != nil {
        self.mP1_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  final let mP1_none = EBGenericTransientProperty <Bool> ()

  //····················································································································
  //   To one property: mP2
  //····················································································································

  final let mP2_property = StoredObject_PointInSchematic (usedForSignature: false)

  //····················································································································

  final var mP2 : PointInSchematic? {
    get {
      return self.mP2_property.propval
    }
    set {
      if self.mP2_property.propval != nil {
        self.mP2_property.setProp (nil)
      }
      if newValue != nil {
        self.mP2_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  final let mP2_none = EBGenericTransientProperty <Bool> ()

  //····················································································································
  //   Transient property: netName
  //····················································································································

  final let netName_property = EBTransientProperty_String ()

  //····················································································································

  final var netName : String? {
    switch self.netName_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netClassName
  //····················································································································

  final let netClassName_property = EBTransientProperty_String ()

  //····················································································································

  final var netClassName : String? {
    switch self.netClassName_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: hasNet
  //····················································································································

  final let hasNet_property = EBTransientProperty_Bool ()

  //····················································································································

  final var hasNet : Bool? {
    switch self.hasNet_property.selection {
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
    self.mP1_none.mReadModelFunction = { [weak self] in // §
      if let uwSelf = self {
        return .single (uwSelf.mP1_property.propval == nil)
      }else{
        return .empty
      }
    }
    self.mP1_property.addEBObserver (self.mP1_none)
    self.mP2_none.mReadModelFunction = { [weak self] in // §
      if let uwSelf = self {
        return .single (uwSelf.mP2_property.propval == nil)
      }else{
        return .empty
      }
    }
    self.mP2_property.addEBObserver (self.mP2_none)
  //--- To one property: mP1 (has opposite to many relationship: mWiresP1s)
    self.mP1_property.ebUndoManager = self.ebUndoManager
    self.mP1_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mWiresP1s_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mWiresP1s_property.remove (me) } }
    )
  //--- To one property: mP2 (has opposite to many relationship: mWiresP2s)
    self.mP2_property.ebUndoManager = self.ebUndoManager
    self.mP2_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mWiresP2s_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mWiresP2s_property.remove (me) } }
    )
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mP1_property.wireColor_property.selection, preferences_symbolDrawingWidthMultipliedByTenForSchematic_property.selection, unwSelf.mP1_property.location_property.selection, unwSelf.mP2_property.location_property.selection) {
        case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
          return .single (transient_WireInSchematic_objectDisplay (v0, v1, v2, v3))
        case (.multiple, .multiple, .multiple, .multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mP1_property.wireColor_property.addEBObserver (self.objectDisplay_property)
    preferences_symbolDrawingWidthMultipliedByTenForSchematic_property.addEBObserver (self.objectDisplay_property)
    self.mP1_property.location_property.addEBObserver (self.objectDisplay_property)
    self.mP2_property.location_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mP1_property.location_property.selection, unwSelf.mP1_property.canMove_property.selection, unwSelf.mP2_property.location_property.selection, unwSelf.mP2_property.canMove_property.selection) {
        case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
          return .single (transient_WireInSchematic_selectionDisplay (v0, v1, v2, v3))
        case (.multiple, .multiple, .multiple, .multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mP1_property.location_property.addEBObserver (self.selectionDisplay_property)
    self.mP1_property.canMove_property.addEBObserver (self.selectionDisplay_property)
    self.mP2_property.location_property.addEBObserver (self.selectionDisplay_property)
    self.mP2_property.canMove_property.addEBObserver (self.selectionDisplay_property)
  //--- Atomic property: netName
    self.netName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mP1_property.netName_property.selection) {
        case (.single (let v0)) :
          return .single (transient_WireInSchematic_netName (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mP1_property.netName_property.addEBObserver (self.netName_property)
  //--- Atomic property: netClassName
    self.netClassName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mP1_property.netClassName_property.selection) {
        case (.single (let v0)) :
          return .single (transient_WireInSchematic_netClassName (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mP1_property.netClassName_property.addEBObserver (self.netClassName_property)
  //--- Atomic property: hasNet
    self.hasNet_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mP1_property.hasNet_property.selection) {
        case (.single (let v0)) :
          return .single (transient_WireInSchematic_hasNet (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mP1_property.hasNet_property.addEBObserver (self.hasNet_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.mP1_property.wireColor_property.removeEBObserver (self.objectDisplay_property)
    // preferences_symbolDrawingWidthMultipliedByTenForSchematic_property.removeEBObserver (self.objectDisplay_property)
    // self.mP1_property.location_property.removeEBObserver (self.objectDisplay_property)
    // self.mP2_property.location_property.removeEBObserver (self.objectDisplay_property)
    // self.mP1_property.location_property.removeEBObserver (self.selectionDisplay_property)
    // self.mP1_property.canMove_property.removeEBObserver (self.selectionDisplay_property)
    // self.mP2_property.location_property.removeEBObserver (self.selectionDisplay_property)
    // self.mP2_property.canMove_property.removeEBObserver (self.selectionDisplay_property)
    // self.mP1_property.netName_property.removeEBObserver (self.netName_property)
    // self.mP1_property.netClassName_property.removeEBObserver (self.netClassName_property)
    // self.mP1_property.hasNet_property.removeEBObserver (self.hasNet_property)
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
      "objectDisplay",
      idx: self.objectDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.objectDisplay_property.mObserverExplorer,
      valueExplorer: &self.objectDisplay_property.mValueExplorer
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
      "netName",
      idx: self.netName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netName_property.mObserverExplorer,
      valueExplorer: &self.netName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netClassName",
      idx: self.netClassName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netClassName_property.mObserverExplorer,
      valueExplorer: &self.netClassName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "hasNet",
      idx: self.hasNet_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.hasNet_property.mObserverExplorer,
      valueExplorer: &self.hasNet_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mP1",
      idx:self.mP1_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mP1_property.mValueExplorer
    )
    createEntryForToOneRelationshipNamed (
      "mP2",
      idx:self.mP2_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mP2_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- To one property: mP1
    self.mP1_property.mObserverExplorer = nil
    self.mP1_property.mValueExplorer = nil
  //--- To one property: mP2
    self.mP2_property.mObserverExplorer = nil
    self.mP2_property.mValueExplorer = nil
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
    self.mP1 = nil
    self.mP2 = nil
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
  //--- To one property: mP1
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mP1",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? PointInSchematic {
        self.mP1_property.setProp (entity)
      }
    }
  //--- To one property: mP2
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mP2",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? PointInSchematic {
        self.mP2_property.setProp (entity)
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
    ioString += "mP1\n"
    ioString += "mP2\n"
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
  //--- To one relationships
    if let object = self.mP1 {
      ioData.append (base62Encoded: object.savingIndex)
    }
    ioData.append (ascii: .lineFeed)
    if let object = self.mP2 {
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
      if let range = inDictionary ["mP1"], let objectIndex = inData.base62EncodedInt (range: range) {
        let object = inObjectArray [objectIndex] as! PointInSchematic
        inParallelObjectSetupContext.addToOneSetupDeferredOperation { self.mP1 = object }
      }
      if let range = inDictionary ["mP2"], let objectIndex = inData.base62EncodedInt (range: range) {
        let object = inObjectArray [objectIndex] as! PointInSchematic
        inParallelObjectSetupContext.addToOneSetupDeferredOperation { self.mP2 = object }
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
  //--- To one property: mP1
    if let object = self.mP1 {
      objects.append (object)
    }
  //--- To one property: mP2
    if let object = self.mP2 {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To one property: mP1
    if let object = self.mP1 {
      objects.append (object)
    }
  //--- To one property: mP2
    if let object = self.mP2 {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NCInSchematic_mOrientation : class {
  var mOrientation : QuadrantRotation { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NCInSchematic_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NCInSchematic_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: NCInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class NCInSchematic : SchematicObject,
         NCInSchematic_mOrientation,
         NCInSchematic_objectDisplay,
         NCInSchematic_selectionDisplay {

  //····················································································································
  //   Atomic property: mOrientation
  //····················································································································

  let mOrientation_property = EBStoredProperty_QuadrantRotation (defaultValue: QuadrantRotation.rotation0)

  //····················································································································

  var mOrientation : QuadrantRotation {
    get { return self.mOrientation_property.propval }
    set { self.mOrientation_property.setProp (newValue) }
  }

  //····················································································································

  var mOrientation_property_selection : EBSelection <QuadrantRotation> { return self.mOrientation_property.prop }

  //····················································································································
  //   To one property: mPoint
  //····················································································································

   let mPoint_property = StoredObject_PointInSchematic (usedForSignature: false)

  //····················································································································

  var mPoint_property_selection : EBSelection <PointInSchematic?> {
    return .single (self.mPoint_property.propval)
  }

  //····················································································································

  var mPoint : PointInSchematic? {
    get {
      return self.mPoint_property.propval
    }
    set {
      if self.mPoint_property.propval != nil {
        self.mPoint_property.setProp (nil)
      }
      if newValue != nil {
        self.mPoint_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  var mPoint_none : StoredObject_PointInSchematic { return self.mPoint_property }

  //····················································································································

  var mPoint_none_selection : EBSelection <Bool> {
    return .single (self.mPoint_property.propval == nil)
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
    self.configureObject ()
  }
  
  //····················································································································

  private final func configureObject () {
  //--- Atomic property: mOrientation
    self.mOrientation_property.ebUndoManager = self.ebUndoManager
  //--- To one property: mPoint (has opposite to one relationship: mNC)
    self.mPoint_property.ebUndoManager = self.ebUndoManager
    self.mPoint_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNC_property.setProp (me) } },
      resetter: { inObject in inObject.mNC_property.setProp (nil) }
    )
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mPoint_property.location_property_selection.kind ()
        kind &= unwSelf.mOrientation_property_selection.kind ()
        kind &= unwSelf.mPoint_property.symbolRotation_property_selection.kind ()
        kind &= g_Preferences!.pinNameFont_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPoint_property.location_property_selection, unwSelf.mOrientation_property_selection, unwSelf.mPoint_property.symbolRotation_property_selection, g_Preferences!.pinNameFont_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_NCInSchematic_objectDisplay (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPoint_property.addEBObserverOf_location (self.objectDisplay_property)
    self.mOrientation_property.addEBObserver (self.objectDisplay_property)
    self.mPoint_property.addEBObserverOf_symbolRotation (self.objectDisplay_property)
    g_Preferences?.pinNameFont_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mPoint_property.location_property_selection.kind ()
        kind &= unwSelf.mOrientation_property_selection.kind ()
        kind &= unwSelf.mPoint_property.symbolRotation_property_selection.kind ()
        kind &= g_Preferences!.pinNameFont_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPoint_property.location_property_selection, unwSelf.mOrientation_property_selection, unwSelf.mPoint_property.symbolRotation_property_selection, g_Preferences!.pinNameFont_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_NCInSchematic_selectionDisplay (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPoint_property.addEBObserverOf_location (self.selectionDisplay_property)
    self.mOrientation_property.addEBObserver (self.selectionDisplay_property)
    self.mPoint_property.addEBObserverOf_symbolRotation (self.selectionDisplay_property)
    g_Preferences?.pinNameFont_property.addEBObserver (self.selectionDisplay_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mPoint_property.removeEBObserverOf_location (self.objectDisplay_property)
    self.mOrientation_property.removeEBObserver (self.objectDisplay_property)
    self.mPoint_property.removeEBObserverOf_symbolRotation (self.objectDisplay_property)
    g_Preferences?.pinNameFont_property.removeEBObserver (self.objectDisplay_property)
    self.mPoint_property.removeEBObserverOf_location (self.selectionDisplay_property)
    self.mOrientation_property.removeEBObserver (self.selectionDisplay_property)
    self.mPoint_property.removeEBObserverOf_symbolRotation (self.selectionDisplay_property)
    g_Preferences?.pinNameFont_property.removeEBObserver (self.selectionDisplay_property)
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
      "mOrientation",
      idx: self.mOrientation_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mOrientation_property.mObserverExplorer,
      valueExplorer: &self.mOrientation_property.mValueExplorer
    )
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
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mPoint",
      idx:self.mPoint_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mPoint_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mOrientation
    self.mOrientation_property.mObserverExplorer = nil
    self.mOrientation_property.mValueExplorer = nil
  //--- To one property: mPoint
    self.mPoint_property.mObserverExplorer = nil
    self.mPoint_property.mValueExplorer = nil
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
    self.mPoint = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: mOrientation
    self.mOrientation_property.storeIn (dictionary: ioDictionary, forKey:"mOrientation")
  //--- To one property: mPoint // Opposite is toOne mNC
    self.store (managedObject:self.mPoint_property.propval,
      relationshipName: "mPoint",
      intoDictionary: ioDictionary)
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To one property: mPoint
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mPoint",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? PointInSchematic {
        self.mPoint_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mOrientation
    self.mOrientation_property.readFrom (dictionary: inDictionary, forKey:"mOrientation")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To one property: mPoint
    if let object = self.mPoint {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To one property: mPoint
    if let object = self.mPoint {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


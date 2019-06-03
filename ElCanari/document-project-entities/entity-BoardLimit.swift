//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardLimit_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardLimit_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: BoardLimit
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class BoardLimit : EBGraphicManagedObject,
         BoardLimit_objectDisplay,
         BoardLimit_selectionDisplay {

  //····················································································································
  //   To one property: mRoot
  //····················································································································

   let mRoot_property = StoredObject_ProjectRoot ()

  //····················································································································

  var mRoot_property_selection : EBSelection <ProjectRoot?> {
    return .single (self.mRoot_property.propval)
  }

  //····················································································································

  var mRoot : ProjectRoot? {
    get {
      return self.mRoot_property.propval
    }
    set {
      if self.mRoot_property.propval != nil {
        self.mRoot_property.setProp (nil)
      }
      if newValue != nil {
        self.mRoot_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  var mRoot_none : StoredObject_ProjectRoot { return self.mRoot_property }

  //····················································································································

  var mRoot_none_selection : EBSelection <Bool> {
    return .single (self.mRoot_property.propval == nil)
  }

  //····················································································································
  //   To one property: mP1
  //····················································································································

   let mP1_property = StoredObject_BorderPoint ()

  //····················································································································

  var mP1_property_selection : EBSelection <BorderPoint?> {
    return .single (self.mP1_property.propval)
  }

  //····················································································································

  var mP1 : BorderPoint? {
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

  var mP1_none : StoredObject_BorderPoint { return self.mP1_property }

  //····················································································································

  var mP1_none_selection : EBSelection <Bool> {
    return .single (self.mP1_property.propval == nil)
  }

  //····················································································································
  //   To one property: mP2
  //····················································································································

   let mP2_property = StoredObject_BorderPoint ()

  //····················································································································

  var mP2_property_selection : EBSelection <BorderPoint?> {
    return .single (self.mP2_property.propval)
  }

  //····················································································································

  var mP2 : BorderPoint? {
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

  var mP2_none : StoredObject_BorderPoint { return self.mP2_property }

  //····················································································································

  var mP2_none_selection : EBSelection <Bool> {
    return .single (self.mP2_property.propval == nil)
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
  //--- To one property: mRoot (has opposite to many relationship: mBoardLimits) §
    self.mRoot_property.ebUndoManager = self.ebUndoManager
    self.mRoot_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mBoardLimits_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mBoardLimits_property.remove (me) } }
    )
  //--- To one property: mP1 (has opposite to one relationship: mCurve1) §
    self.mP1_property.ebUndoManager = self.ebUndoManager
    self.mP1_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mCurve1_property.setProp (me) } },
      resetter: { inObject in inObject.mCurve1_property.setProp (nil) }
    )
  //--- To one property: mP2 (has opposite to one relationship: mCurve2) §
    self.mP2_property.ebUndoManager = self.ebUndoManager
    self.mP2_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mCurve2_property.setProp (me) } },
      resetter: { inObject in inObject.mCurve2_property.setProp (nil) }
    )
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mP1_property.mX_property_selection.kind ()
        kind &= unwSelf.mP1_property.mY_property_selection.kind ()
        kind &= unwSelf.mP2_property.mX_property_selection.kind ()
        kind &= unwSelf.mP2_property.mY_property_selection.kind ()
        kind &= unwSelf.mRoot_property.mBoardLimitsWidth_property_selection.kind ()
        kind &= g_Preferences!.boardLimitsColorForBoard_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mP1_property.mX_property_selection, unwSelf.mP1_property.mY_property_selection, unwSelf.mP2_property.mX_property_selection, unwSelf.mP2_property.mY_property_selection, unwSelf.mRoot_property.mBoardLimitsWidth_property_selection, g_Preferences!.boardLimitsColorForBoard_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5)) :
            return .single (transient_BoardLimit_objectDisplay (v0, v1, v2, v3, v4, v5))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mP1_property.addEBObserverOf_mX (self.objectDisplay_property)
    self.mP1_property.addEBObserverOf_mY (self.objectDisplay_property)
    self.mP2_property.addEBObserverOf_mX (self.objectDisplay_property)
    self.mP2_property.addEBObserverOf_mY (self.objectDisplay_property)
    self.mRoot_property.addEBObserverOf_mBoardLimitsWidth (self.objectDisplay_property)
    g_Preferences?.boardLimitsColorForBoard_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mP1_property.mX_property_selection.kind ()
        kind &= unwSelf.mP1_property.mY_property_selection.kind ()
        kind &= unwSelf.mP2_property.mX_property_selection.kind ()
        kind &= unwSelf.mP2_property.mY_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mP1_property.mX_property_selection, unwSelf.mP1_property.mY_property_selection, unwSelf.mP2_property.mX_property_selection, unwSelf.mP2_property.mY_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_BoardLimit_selectionDisplay (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mP1_property.addEBObserverOf_mX (self.selectionDisplay_property)
    self.mP1_property.addEBObserverOf_mY (self.selectionDisplay_property)
    self.mP2_property.addEBObserverOf_mX (self.selectionDisplay_property)
    self.mP2_property.addEBObserverOf_mY (self.selectionDisplay_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mP1_property.removeEBObserverOf_mX (self.objectDisplay_property)
    self.mP1_property.removeEBObserverOf_mY (self.objectDisplay_property)
    self.mP2_property.removeEBObserverOf_mX (self.objectDisplay_property)
    self.mP2_property.removeEBObserverOf_mY (self.objectDisplay_property)
    self.mRoot_property.removeEBObserverOf_mBoardLimitsWidth (self.objectDisplay_property)
    g_Preferences?.boardLimitsColorForBoard_property.removeEBObserver (self.objectDisplay_property)
    self.mP1_property.removeEBObserverOf_mX (self.selectionDisplay_property)
    self.mP1_property.removeEBObserverOf_mY (self.selectionDisplay_property)
    self.mP2_property.removeEBObserverOf_mX (self.selectionDisplay_property)
    self.mP2_property.removeEBObserverOf_mY (self.selectionDisplay_property)
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
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mRoot",
      idx:self.mRoot_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mRoot_property.mValueExplorer
    )
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
  //--- To one property: mRoot
    self.mRoot_property.mObserverExplorer = nil
    self.mRoot_property.mValueExplorer = nil
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
    self.mRoot = nil
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
  //--- To one property: mP1 // Opposite is toOne mCurve1
    self.store (managedObject:self.mP1_property.propval,
      relationshipName: "mP1",
      intoDictionary: ioDictionary)
  //--- To one property: mP2 // Opposite is toOne mCurve2
    self.store (managedObject:self.mP2_property.propval,
      relationshipName: "mP2",
      intoDictionary: ioDictionary)
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To one property: mRoot
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mRoot",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? ProjectRoot {
        self.mRoot_property.setProp (entity)
      }
    }
  //--- To one property: mP1
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mP1",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? BorderPoint {
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
      if let entity = possibleEntity as? BorderPoint {
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
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To one property: mRoot
    if let object = self.mRoot {
      objects.append (object)
    }
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
  //--- To one property: mRoot
    if let object = self.mRoot {
      objects.append (object)
    }
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


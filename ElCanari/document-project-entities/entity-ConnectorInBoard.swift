//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ConnectorInBoard_mComponentPadName : class {
  var mComponentPadName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ConnectorInBoard_mPadIndex : class {
  var mPadIndex : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ConnectorInBoard_side : class {
  var side : ConnectorSide? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ConnectorInBoard_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ConnectorInBoard_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ConnectorInBoard_issues : class {
  var issues : CanariIssueArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: ConnectorInBoard
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ConnectorInBoard : BoardObject,
         ConnectorInBoard_mComponentPadName,
         ConnectorInBoard_mPadIndex,
         ConnectorInBoard_side,
         ConnectorInBoard_objectDisplay,
         ConnectorInBoard_selectionDisplay,
         ConnectorInBoard_issues {

  //····················································································································
  //   Atomic property: mComponentPadName
  //····················································································································

  let mComponentPadName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mComponentPadName : String {
    get { return self.mComponentPadName_property.propval }
    set { self.mComponentPadName_property.setProp (newValue) }
  }

  //····················································································································

  var mComponentPadName_property_selection : EBSelection <String> { return self.mComponentPadName_property.prop }

  //····················································································································
  //   Atomic property: mPadIndex
  //····················································································································

  let mPadIndex_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mPadIndex : Int {
    get { return self.mPadIndex_property.propval }
    set { self.mPadIndex_property.setProp (newValue) }
  }

  //····················································································································

  var mPadIndex_property_selection : EBSelection <Int> { return self.mPadIndex_property.prop }

  //····················································································································
  //   To one property: mComponent
  //····················································································································

   let mComponent_property = StoredObject_ComponentInProject ()

  //····················································································································

  var mComponent_property_selection : EBSelection <ComponentInProject?> {
    return .single (self.mComponent_property.propval)
  }

  //····················································································································

  var mComponent : ComponentInProject? {
    get {
      return self.mComponent_property.propval
    }
    set {
      if self.mComponent_property.propval != nil {
        self.mComponent_property.setProp (nil)
      }
      if newValue != nil {
        self.mComponent_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  var mComponent_none : StoredObject_ComponentInProject { return self.mComponent_property }

  //····················································································································

  var mComponent_none_selection : EBSelection <Bool> {
    return .single (self.mComponent_property.propval == nil)
  }

  //····················································································································
  //   Transient property: side
  //····················································································································

  let side_property = EBTransientProperty_ConnectorSide ()

  //····················································································································

  var side_property_selection : EBSelection <ConnectorSide> {
    return self.side_property.prop
  }

  //····················································································································

  var side : ConnectorSide? {
    switch self.side_property_selection {
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
  //--- Atomic property: mComponentPadName
    self.mComponentPadName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mPadIndex
    self.mPadIndex_property.ebUndoManager = self.ebUndoManager
  //--- To one property: mComponent (has opposite to many relationship: mConnectors)
    self.mComponent_property.ebUndoManager = self.ebUndoManager
    self.mComponent_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mConnectors_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mConnectors_property.remove (me) } }
    )
  //--- Atomic property: side
    self.side_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mComponent_property.componentPadDictionary_property_selection.kind ()
        kind &= unwSelf.mComponentPadName_property_selection.kind ()
        kind &= unwSelf.mPadIndex_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mComponent_property.componentPadDictionary_property_selection, unwSelf.mComponentPadName_property_selection, unwSelf.mPadIndex_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2)) :
            return .single (transient_ConnectorInBoard_side (v0, v1, v2))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mComponent_property.addEBObserverOf_componentPadDictionary (self.side_property)
    self.mComponentPadName_property.addEBObserver (self.side_property)
    self.mPadIndex_property.addEBObserver (self.side_property)
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mComponent_property.componentPadDictionary_property_selection.kind ()
        kind &= unwSelf.mComponentPadName_property_selection.kind ()
        kind &= unwSelf.mPadIndex_property_selection.kind ()
        kind &= unwSelf.side_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mComponent_property.componentPadDictionary_property_selection, unwSelf.mComponentPadName_property_selection, unwSelf.mPadIndex_property_selection, unwSelf.side_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_ConnectorInBoard_objectDisplay (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mComponent_property.addEBObserverOf_componentPadDictionary (self.objectDisplay_property)
    self.mComponentPadName_property.addEBObserver (self.objectDisplay_property)
    self.mPadIndex_property.addEBObserver (self.objectDisplay_property)
    self.side_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mComponentPadName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mComponentPadName_property_selection) {
          case (.single (let v0)) :
            return .single (transient_ConnectorInBoard_selectionDisplay (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mComponentPadName_property.addEBObserver (self.selectionDisplay_property)
  //--- Atomic property: issues
    self.issues_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mComponent_property.componentPadDictionary_property_selection.kind ()
        kind &= unwSelf.mComponentPadName_property_selection.kind ()
        kind &= unwSelf.mPadIndex_property_selection.kind ()
        kind &= unwSelf.side_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mComponent_property.componentPadDictionary_property_selection, unwSelf.mComponentPadName_property_selection, unwSelf.mPadIndex_property_selection, unwSelf.side_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_ConnectorInBoard_issues (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mComponent_property.addEBObserverOf_componentPadDictionary (self.issues_property)
    self.mComponentPadName_property.addEBObserver (self.issues_property)
    self.mPadIndex_property.addEBObserver (self.issues_property)
    self.side_property.addEBObserver (self.issues_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mComponent_property.removeEBObserverOf_componentPadDictionary (self.side_property)
    self.mComponentPadName_property.removeEBObserver (self.side_property)
    self.mPadIndex_property.removeEBObserver (self.side_property)
    self.mComponent_property.removeEBObserverOf_componentPadDictionary (self.objectDisplay_property)
    self.mComponentPadName_property.removeEBObserver (self.objectDisplay_property)
    self.mPadIndex_property.removeEBObserver (self.objectDisplay_property)
    self.side_property.removeEBObserver (self.objectDisplay_property)
    self.mComponentPadName_property.removeEBObserver (self.selectionDisplay_property)
    self.mComponent_property.removeEBObserverOf_componentPadDictionary (self.issues_property)
    self.mComponentPadName_property.removeEBObserver (self.issues_property)
    self.mPadIndex_property.removeEBObserver (self.issues_property)
    self.side_property.removeEBObserver (self.issues_property)
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
      "mComponentPadName",
      idx: self.mComponentPadName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mComponentPadName_property.mObserverExplorer,
      valueExplorer: &self.mComponentPadName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mPadIndex",
      idx: self.mPadIndex_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPadIndex_property.mObserverExplorer,
      valueExplorer: &self.mPadIndex_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "side",
      idx: self.side_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.side_property.mObserverExplorer,
      valueExplorer: &self.side_property.mValueExplorer
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
      "selectionDisplay",
      idx: self.selectionDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.selectionDisplay_property.mObserverExplorer,
      valueExplorer: &self.selectionDisplay_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "issues",
      idx: self.issues_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.issues_property.mObserverExplorer,
      valueExplorer: &self.issues_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mComponent",
      idx:self.mComponent_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mComponent_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mComponentPadName
    self.mComponentPadName_property.mObserverExplorer = nil
    self.mComponentPadName_property.mValueExplorer = nil
  //--- Atomic property: mPadIndex
    self.mPadIndex_property.mObserverExplorer = nil
    self.mPadIndex_property.mValueExplorer = nil
  //--- To one property: mComponent
    self.mComponent_property.mObserverExplorer = nil
    self.mComponent_property.mValueExplorer = nil
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
    self.mComponent = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: mComponentPadName
    self.mComponentPadName_property.storeIn (dictionary: ioDictionary, forKey:"mComponentPadName")
  //--- Atomic property: mPadIndex
    self.mPadIndex_property.storeIn (dictionary: ioDictionary, forKey:"mPadIndex")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To one property: mComponent
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mComponent",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? ComponentInProject {
        self.mComponent_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mComponentPadName
    self.mComponentPadName_property.readFrom (dictionary: inDictionary, forKey:"mComponentPadName")
  //--- Atomic property: mPadIndex
    self.mPadIndex_property.readFrom (dictionary: inDictionary, forKey:"mPadIndex")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To one property: mComponent
    if let object = self.mComponent {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To one property: mComponent
    if let object = self.mComponent {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardConnector_mComponentPadName : class {
  var mComponentPadName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardConnector_mPadIndex : class {
  var mPadIndex : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardConnector_mX : class {
  var mX : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardConnector_mY : class {
  var mY : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardConnector_location : class {
  var location : CanariPoint? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardConnector_side : class {
  var side : ConnectorSide? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardConnector_issues : class {
  var issues : CanariIssueArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: BoardConnector
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class BoardConnector : BoardObject,
         BoardConnector_mComponentPadName,
         BoardConnector_mPadIndex,
         BoardConnector_mX,
         BoardConnector_mY,
         BoardConnector_location,
         BoardConnector_side,
         BoardConnector_issues {

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
  //   Atomic property: mX
  //····················································································································

  let mX_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mX : Int {
    get { return self.mX_property.propval }
    set { self.mX_property.setProp (newValue) }
  }

  //····················································································································

  var mX_property_selection : EBSelection <Int> { return self.mX_property.prop }

  //····················································································································
  //   Atomic property: mY
  //····················································································································

  let mY_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mY : Int {
    get { return self.mY_property.propval }
    set { self.mY_property.setProp (newValue) }
  }

  //····················································································································

  var mY_property_selection : EBSelection <Int> { return self.mY_property.prop }

  //····················································································································
  //   To many property: mTracksP2
  //····················································································································

  let mTracksP2_property = StoredArrayOf_BoardTrack ()

  //····················································································································

  var mTracksP2_property_selection : EBSelection < [BoardTrack] > {
    return self.mTracksP2_property.prop
  }

  //····················································································································

  var mTracksP2 : [BoardTrack] {
    get { return self.mTracksP2_property.propval }
    set { self.mTracksP2_property.setProp (newValue) }
  }

  //····················································································································
  //   To many property: mTracksP1
  //····················································································································

  let mTracksP1_property = StoredArrayOf_BoardTrack ()

  //····················································································································

  var mTracksP1_property_selection : EBSelection < [BoardTrack] > {
    return self.mTracksP1_property.prop
  }

  //····················································································································

  var mTracksP1 : [BoardTrack] {
    get { return self.mTracksP1_property.propval }
    set { self.mTracksP1_property.setProp (newValue) }
  }

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
  //   Transient property: location
  //····················································································································

  let location_property = EBTransientProperty_CanariPoint ()

  //····················································································································

  var location_property_selection : EBSelection <CanariPoint> {
    return self.location_property.prop
  }

  //····················································································································

  var location : CanariPoint? {
    switch self.location_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
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
  //--- Atomic property: mX
    self.mX_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mY
    self.mY_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mTracksP2 (has opposite relationship)
    self.mTracksP2_property.ebUndoManager = self.ebUndoManager
    self.mTracksP2_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mConnectorP2_property.setProp (me) } },
      resetter: { inObject in inObject.mConnectorP2_property.setProp (nil) }
    )
  //--- To many property: mTracksP1 (has opposite relationship)
    self.mTracksP1_property.ebUndoManager = self.ebUndoManager
    self.mTracksP1_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mConnectorP1_property.setProp (me) } },
      resetter: { inObject in inObject.mConnectorP1_property.setProp (nil) }
    )
  //--- To one property: mComponent (has opposite to many relationship: mConnectors)
    self.mComponent_property.ebUndoManager = self.ebUndoManager
    self.mComponent_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mConnectors_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mConnectors_property.remove (me) } }
    )
  //--- Atomic property: location
    self.location_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mComponent_property.componentPadDictionary_property_selection.kind ()
        kind &= unwSelf.mComponentPadName_property_selection.kind ()
        kind &= unwSelf.mPadIndex_property_selection.kind ()
        kind &= unwSelf.mX_property_selection.kind ()
        kind &= unwSelf.mY_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mComponent_property.componentPadDictionary_property_selection, unwSelf.mComponentPadName_property_selection, unwSelf.mPadIndex_property_selection, unwSelf.mX_property_selection, unwSelf.mY_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_BoardConnector_location (v0, v1, v2, v3, v4))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mComponent_property.addEBObserverOf_componentPadDictionary (self.location_property)
    self.mComponentPadName_property.addEBObserver (self.location_property)
    self.mPadIndex_property.addEBObserver (self.location_property)
    self.mX_property.addEBObserver (self.location_property)
    self.mY_property.addEBObserver (self.location_property)
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
            return .single (transient_BoardConnector_side (v0, v1, v2))
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
  //--- Atomic property: issues
    self.issues_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.location_property_selection.kind ()
        kind &= unwSelf.mComponent_none_selection.kind ()
        kind &= unwSelf.mComponentPadName_property_selection.kind ()
        kind &= unwSelf.mTracksP1_property.count_property_selection.kind ()
        kind &= unwSelf.mTracksP2_property.count_property_selection.kind ()
        kind &= unwSelf.errorOrWarningIssueSize_property_selection.kind ()
        kind &= unwSelf.mComponent_property.padNetDictionary_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.location_property_selection, unwSelf.mComponent_none_selection, unwSelf.mComponentPadName_property_selection, unwSelf.mTracksP1_property.count_property_selection, unwSelf.mTracksP2_property.count_property_selection, unwSelf.errorOrWarningIssueSize_property_selection, unwSelf.mComponent_property.padNetDictionary_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6)) :
            return .single (transient_BoardConnector_issues (v0, v1, v2, v3, v4, v5, v6))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.location_property.addEBObserver (self.issues_property)
    self.mComponent_property.addEBObserver (self.issues_property)
    self.mComponentPadName_property.addEBObserver (self.issues_property)
    self.mTracksP1_property.addEBObserver (self.issues_property)
    self.mTracksP2_property.addEBObserver (self.issues_property)
    self.errorOrWarningIssueSize_property.addEBObserver (self.issues_property)
    self.mComponent_property.addEBObserverOf_padNetDictionary (self.issues_property)
  //--- Install undoers and opposite setter for relationships
    self.mTracksP2_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mConnectorP2_property.setProp (me) } },
      resetter: { inObject in inObject.mConnectorP2_property.setProp (nil) }
    )
    self.mTracksP1_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mConnectorP1_property.setProp (me) } },
      resetter: { inObject in inObject.mConnectorP1_property.setProp (nil) }
    )
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mComponent_property.removeEBObserverOf_componentPadDictionary (self.location_property)
    self.mComponentPadName_property.removeEBObserver (self.location_property)
    self.mPadIndex_property.removeEBObserver (self.location_property)
    self.mX_property.removeEBObserver (self.location_property)
    self.mY_property.removeEBObserver (self.location_property)
    self.mComponent_property.removeEBObserverOf_componentPadDictionary (self.side_property)
    self.mComponentPadName_property.removeEBObserver (self.side_property)
    self.mPadIndex_property.removeEBObserver (self.side_property)
    self.location_property.removeEBObserver (self.issues_property)
    self.mComponent_property.removeEBObserver (self.issues_property)
    self.mComponentPadName_property.removeEBObserver (self.issues_property)
    self.mTracksP1_property.removeEBObserver (self.issues_property)
    self.mTracksP2_property.removeEBObserver (self.issues_property)
    self.errorOrWarningIssueSize_property.removeEBObserver (self.issues_property)
    self.mComponent_property.removeEBObserverOf_padNetDictionary (self.issues_property)
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
    createEntryForPropertyNamed (
      "mX",
      idx: self.mX_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mX_property.mObserverExplorer,
      valueExplorer: &self.mX_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mY",
      idx: self.mY_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mY_property.mObserverExplorer,
      valueExplorer: &self.mY_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "location",
      idx: self.location_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.location_property.mObserverExplorer,
      valueExplorer: &self.location_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "side",
      idx: self.side_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.side_property.mObserverExplorer,
      valueExplorer: &self.side_property.mValueExplorer
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
    createEntryForToManyRelationshipNamed (
      "mTracksP2",
      idx:mTracksP2_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mTracksP2_property.mValueExplorer
    )
    createEntryForToManyRelationshipNamed (
      "mTracksP1",
      idx:mTracksP1_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mTracksP1_property.mValueExplorer
    )
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
  //--- Atomic property: mX
    self.mX_property.mObserverExplorer = nil
    self.mX_property.mValueExplorer = nil
  //--- Atomic property: mY
    self.mY_property.mObserverExplorer = nil
    self.mY_property.mValueExplorer = nil
  //--- To many property: mTracksP2
    self.mTracksP2_property.mValueExplorer = nil
  //--- To many property: mTracksP1
    self.mTracksP1_property.mValueExplorer = nil
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
    self.mTracksP2 = []
    self.mTracksP1 = []
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
  //--- Atomic property: mX
    self.mX_property.storeIn (dictionary: ioDictionary, forKey:"mX")
  //--- Atomic property: mY
    self.mY_property.storeIn (dictionary: ioDictionary, forKey:"mY")
  //--- To many property: mTracksP2
    self.store (
      managedObjectArray: self.mTracksP2_property.propval,
      relationshipName: "mTracksP2",
      intoDictionary: ioDictionary
    )
  //--- To many property: mTracksP1
    self.store (
      managedObjectArray: self.mTracksP1_property.propval,
      relationshipName: "mTracksP1",
      intoDictionary: ioDictionary
    )
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: mTracksP2
    self.mTracksP2_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mTracksP2",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [BoardTrack])
  //--- To many property: mTracksP1
    self.mTracksP1_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mTracksP1",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [BoardTrack])
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
  //--- Atomic property: mX
    self.mX_property.readFrom (dictionary: inDictionary, forKey:"mX")
  //--- Atomic property: mY
    self.mY_property.readFrom (dictionary: inDictionary, forKey:"mY")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: mTracksP2
    for managedObject in self.mTracksP2 {
      objects.append (managedObject)
    }
  //--- To many property: mTracksP1
    for managedObject in self.mTracksP1 {
      objects.append (managedObject)
    }
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
  //--- To many property: mTracksP2
    for managedObject in self.mTracksP2 {
      objects.append (managedObject)
    }
  //--- To many property: mTracksP1
    for managedObject in self.mTracksP1 {
      objects.append (managedObject)
    }
  //--- To one property: mComponent
    if let object = self.mComponent {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


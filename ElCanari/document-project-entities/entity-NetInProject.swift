//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetInProject_mNetName : class {
  var mNetName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetInProject_netClassName : class {
  var netClassName : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetInProject_netClassTrackWidth : class {
  var netClassTrackWidth : Int? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetInProject_netClassViaHoleDiameter : class {
  var netClassViaHoleDiameter : Int? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetInProject_netClassViaPadDiameter : class {
  var netClassViaPadDiameter : Int? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetInProject_wireColor : class {
  var wireColor : NSColor? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetInProject_netSchematicPointsInfo : class {
  var netSchematicPointsInfo : NetInfoPointArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: NetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class NetInProject : EBManagedObject,
         NetInProject_mNetName,
         NetInProject_netClassName,
         NetInProject_netClassTrackWidth,
         NetInProject_netClassViaHoleDiameter,
         NetInProject_netClassViaPadDiameter,
         NetInProject_wireColor,
         NetInProject_netSchematicPointsInfo {

  //····················································································································
  //   To many property: mPoints
  //····················································································································

  let mPoints_property = StoredArrayOf_PointInSchematic (usedForSignature: false)

  //····················································································································

  var mPoints_property_selection : EBSelection < [PointInSchematic] > {
    return self.mPoints_property.prop
  }

  //····················································································································

  var mPoints : [PointInSchematic] {
    get { return self.mPoints_property.propval }
    set { self.mPoints_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: mNetName
  //····················································································································

  let mNetName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mNetName : String {
    get { return self.mNetName_property.propval }
    set { self.mNetName_property.setProp (newValue) }
  }

  //····················································································································

  var mNetName_property_selection : EBSelection <String> { return self.mNetName_property.prop }

  //····················································································································
  //   To many property: mTracks
  //····················································································································

  let mTracks_property = StoredArrayOf_BoardTrack (usedForSignature: false)

  //····················································································································

  var mTracks_property_selection : EBSelection < [BoardTrack] > {
    return self.mTracks_property.prop
  }

  //····················································································································

  var mTracks : [BoardTrack] {
    get { return self.mTracks_property.propval }
    set { self.mTracks_property.setProp (newValue) }
  }

  //····················································································································
  //   To one property: mNetClass
  //····················································································································

   let mNetClass_property = StoredObject_NetClassInProject (usedForSignature: false)

  //····················································································································

  var mNetClass_property_selection : EBSelection <NetClassInProject?> {
    return .single (self.mNetClass_property.propval)
  }

  //····················································································································

  var mNetClass : NetClassInProject? {
    get {
      return self.mNetClass_property.propval
    }
    set {
      if self.mNetClass_property.propval != nil {
        self.mNetClass_property.setProp (nil)
      }
      if newValue != nil {
        self.mNetClass_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  var mNetClass_none : StoredObject_NetClassInProject { return self.mNetClass_property }

  //····················································································································

  var mNetClass_none_selection : EBSelection <Bool> {
    return .single (self.mNetClass_property.propval == nil)
  }

  //····················································································································
  //   Transient property: netClassName
  //····················································································································

  let netClassName_property = EBTransientProperty_String ()

  //····················································································································

  var netClassName_property_selection : EBSelection <String> {
    return self.netClassName_property.prop
  }

  //····················································································································

  var netClassName : String? {
    switch self.netClassName_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netClassTrackWidth
  //····················································································································

  let netClassTrackWidth_property = EBTransientProperty_Int ()

  //····················································································································

  var netClassTrackWidth_property_selection : EBSelection <Int> {
    return self.netClassTrackWidth_property.prop
  }

  //····················································································································

  var netClassTrackWidth : Int? {
    switch self.netClassTrackWidth_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netClassViaHoleDiameter
  //····················································································································

  let netClassViaHoleDiameter_property = EBTransientProperty_Int ()

  //····················································································································

  var netClassViaHoleDiameter_property_selection : EBSelection <Int> {
    return self.netClassViaHoleDiameter_property.prop
  }

  //····················································································································

  var netClassViaHoleDiameter : Int? {
    switch self.netClassViaHoleDiameter_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netClassViaPadDiameter
  //····················································································································

  let netClassViaPadDiameter_property = EBTransientProperty_Int ()

  //····················································································································

  var netClassViaPadDiameter_property_selection : EBSelection <Int> {
    return self.netClassViaPadDiameter_property.prop
  }

  //····················································································································

  var netClassViaPadDiameter : Int? {
    switch self.netClassViaPadDiameter_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: wireColor
  //····················································································································

  let wireColor_property = EBTransientProperty_NSColor ()

  //····················································································································

  var wireColor_property_selection : EBSelection <NSColor> {
    return self.wireColor_property.prop
  }

  //····················································································································

  var wireColor : NSColor? {
    switch self.wireColor_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netSchematicPointsInfo
  //····················································································································

  let netSchematicPointsInfo_property = EBTransientProperty_NetInfoPointArray ()

  //····················································································································

  var netSchematicPointsInfo_property_selection : EBSelection <NetInfoPointArray> {
    return self.netSchematicPointsInfo_property.prop
  }

  //····················································································································

  var netSchematicPointsInfo : NetInfoPointArray? {
    switch self.netSchematicPointsInfo_property_selection {
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
    let operationQueue = OperationQueue ()
  //--- To many property: mPoints (has opposite relationship)
    self.mPoints_property.ebUndoManager = self.ebUndoManager
    self.mPoints_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNet_property.setProp (me) } },
      resetter: { inObject in inObject.mNet_property.setProp (nil) }
    )
  //--- Atomic property: mNetName
    self.mNetName_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mTracks (has opposite relationship)
    self.mTracks_property.ebUndoManager = self.ebUndoManager
    self.mTracks_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNet_property.setProp (me) } },
      resetter: { inObject in inObject.mNet_property.setProp (nil) }
    )
  //--- To one property: mNetClass (has opposite to many relationship: mNets)
    self.mNetClass_property.ebUndoManager = self.ebUndoManager
    self.mNetClass_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNets_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mNets_property.remove (me) } }
    )
  //--- Atomic property: netClassName
    self.netClassName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mNetClass_property.mNetClassName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mNetClass_property.mNetClassName_property_selection) {
          case (.single (let v0)) :
            return .single (transient_NetInProject_netClassName (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mNetClass_property.addEBObserverOf_mNetClassName (self.netClassName_property, postEvent: false)
    self.netClassName_property.postEvent ()
  //--- Atomic property: netClassTrackWidth
    self.netClassTrackWidth_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mNetClass_property.mTrackWidth_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mNetClass_property.mTrackWidth_property_selection) {
          case (.single (let v0)) :
            return .single (transient_NetInProject_netClassTrackWidth (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mNetClass_property.addEBObserverOf_mTrackWidth (self.netClassTrackWidth_property, postEvent: false)
    self.netClassTrackWidth_property.postEvent ()
  //--- Atomic property: netClassViaHoleDiameter
    self.netClassViaHoleDiameter_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mNetClass_property.mViaHoleDiameter_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mNetClass_property.mViaHoleDiameter_property_selection) {
          case (.single (let v0)) :
            return .single (transient_NetInProject_netClassViaHoleDiameter (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mNetClass_property.addEBObserverOf_mViaHoleDiameter (self.netClassViaHoleDiameter_property, postEvent: false)
    self.netClassViaHoleDiameter_property.postEvent ()
  //--- Atomic property: netClassViaPadDiameter
    self.netClassViaPadDiameter_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mNetClass_property.mViaPadDiameter_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mNetClass_property.mViaPadDiameter_property_selection) {
          case (.single (let v0)) :
            return .single (transient_NetInProject_netClassViaPadDiameter (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mNetClass_property.addEBObserverOf_mViaPadDiameter (self.netClassViaPadDiameter_property, postEvent: false)
    self.netClassViaPadDiameter_property.postEvent ()
  //--- Atomic property: wireColor
    self.wireColor_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mNetClass_property.mNetClassColor_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mNetClass_property.mNetClassColor_property_selection) {
          case (.single (let v0)) :
            return .single (transient_NetInProject_wireColor (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mNetClass_property.addEBObserverOf_mNetClassColor (self.wireColor_property, postEvent: false)
    self.wireColor_property.postEvent ()
  //--- Atomic property: netSchematicPointsInfo
    self.netSchematicPointsInfo_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mPoints_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPoints_property_selection) {
          case (.single (let v0)) :
            return .single (transient_NetInProject_netSchematicPointsInfo (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPoints_property.addEBObserverOf_netInfoForPoint (self.netSchematicPointsInfo_property, postEvent: false)
    self.netSchematicPointsInfo_property.postEvent ()
  //--- Install undoers and opposite setter for relationships
    self.mPoints_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNet_property.setProp (me) } },
      resetter: { inObject in inObject.mNet_property.setProp (nil) }
    )
    self.mTracks_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNet_property.setProp (me) } },
      resetter: { inObject in inObject.mNet_property.setProp (nil) }
    )
  //--- Register properties for handling signature
  //--- Extern delegates
    operationQueue.waitUntilAllOperationsAreFinished ()
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mNetClass_property.removeEBObserverOf_mNetClassName (self.netClassName_property)
    self.mNetClass_property.removeEBObserverOf_mTrackWidth (self.netClassTrackWidth_property)
    self.mNetClass_property.removeEBObserverOf_mViaHoleDiameter (self.netClassViaHoleDiameter_property)
    self.mNetClass_property.removeEBObserverOf_mViaPadDiameter (self.netClassViaPadDiameter_property)
    self.mNetClass_property.removeEBObserverOf_mNetClassColor (self.wireColor_property)
    self.mPoints_property.removeEBObserverOf_netInfoForPoint (self.netSchematicPointsInfo_property)
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
      "mNetName",
      idx: self.mNetName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mNetName_property.mObserverExplorer,
      valueExplorer: &self.mNetName_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "netClassName",
      idx: self.netClassName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netClassName_property.mObserverExplorer,
      valueExplorer: &self.netClassName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netClassTrackWidth",
      idx: self.netClassTrackWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netClassTrackWidth_property.mObserverExplorer,
      valueExplorer: &self.netClassTrackWidth_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netClassViaHoleDiameter",
      idx: self.netClassViaHoleDiameter_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netClassViaHoleDiameter_property.mObserverExplorer,
      valueExplorer: &self.netClassViaHoleDiameter_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netClassViaPadDiameter",
      idx: self.netClassViaPadDiameter_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netClassViaPadDiameter_property.mObserverExplorer,
      valueExplorer: &self.netClassViaPadDiameter_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "wireColor",
      idx: self.wireColor_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.wireColor_property.mObserverExplorer,
      valueExplorer: &self.wireColor_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netSchematicPointsInfo",
      idx: self.netSchematicPointsInfo_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netSchematicPointsInfo_property.mObserverExplorer,
      valueExplorer: &self.netSchematicPointsInfo_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "mPoints",
      idx:mPoints_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mPoints_property.mValueExplorer
    )
    createEntryForToManyRelationshipNamed (
      "mTracks",
      idx:mTracks_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mTracks_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mNetClass",
      idx:self.mNetClass_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mNetClass_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- To many property: mPoints
    self.mPoints_property.mValueExplorer = nil
  //--- Atomic property: mNetName
    self.mNetName_property.mObserverExplorer = nil
    self.mNetName_property.mValueExplorer = nil
  //--- To many property: mTracks
    self.mTracks_property.mValueExplorer = nil
  //--- To one property: mNetClass
    self.mNetClass_property.mObserverExplorer = nil
    self.mNetClass_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mPoints = []
    self.mTracks = []
  //---
    super.cleanUpToManyRelationships ()
  }

  //····················································································································
  //    cleanUpToOneRelationships
  //····················································································································

  override internal func cleanUpToOneRelationships () {
    self.mNetClass = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- To many property: mPoints
    self.store (
      managedObjectArray: self.mPoints_property.propval,
      relationshipName: "mPoints",
      intoDictionary: ioDictionary
    )
  //--- Atomic property: mNetName
    self.mNetName_property.storeIn (dictionary: ioDictionary, forKey:"mNetName")
  //--- To many property: mTracks
    self.store (
      managedObjectArray: self.mTracks_property.propval,
      relationshipName: "mTracks",
      intoDictionary: ioDictionary
    )
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: mPoints
    self.mPoints_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mPoints",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [PointInSchematic])
  //--- To many property: mTracks
    self.mTracks_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mTracks",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [BoardTrack])
  //--- To one property: mNetClass
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mNetClass",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? NetClassInProject {
        self.mNetClass_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mNetName
    self.mNetName_property.readFrom (dictionary: inDictionary, forKey:"mNetName")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: mPoints
    for managedObject in self.mPoints {
      objects.append (managedObject)
    }
  //--- To many property: mTracks
    for managedObject in self.mTracks {
      objects.append (managedObject)
    }
  //--- To one property: mNetClass
    if let object = self.mNetClass {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: mPoints
    for managedObject in self.mPoints {
      objects.append (managedObject)
    }
  //--- To many property: mTracks
    for managedObject in self.mTracks {
      objects.append (managedObject)
    }
  //--- To one property: mNetClass
    if let object = self.mNetClass {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


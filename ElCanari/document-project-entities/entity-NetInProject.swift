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

protocol NetInProject_wireColor : class {
  var wireColor : NSColor? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetInProject_netPointsInfo : class {
  var netPointsInfo : NetInfoPointArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: NetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class NetInProject : EBManagedObject,
         NetInProject_mNetName,
         NetInProject_netClassName,
         NetInProject_wireColor,
         NetInProject_netPointsInfo {

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
  //   To many property: mPoints
  //····················································································································

  let mPoints_property = StoredArrayOf_PointInSchematic ()

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
  //   To one property: mNetClass
  //····················································································································

   let mNetClass_property = StoredObject_NetClassInProject ()

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
  //   Transient property: netPointsInfo
  //····················································································································

  let netPointsInfo_property = EBTransientProperty_NetInfoPointArray ()

  //····················································································································

  var netPointsInfo_property_selection : EBSelection <NetInfoPointArray> {
    return self.netPointsInfo_property.prop
  }

  //····················································································································

  var netPointsInfo : NetInfoPointArray? {
    switch self.netPointsInfo_property_selection {
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
  //--- Atomic property: mNetName
    self.mNetName_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mPoints (has opposite relationship)
    self.mPoints_property.ebUndoManager = self.ebUndoManager
    self.mPoints_property.setOppositeRelationShipFunctions (
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
    self.mNetClass_property.addEBObserverOf_mNetClassName (self.netClassName_property)
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
    self.mNetClass_property.addEBObserverOf_mNetClassColor (self.wireColor_property)
  //--- Atomic property: netPointsInfo
    self.netPointsInfo_property.mReadModelFunction = { [weak self] in
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
            return .single (transient_NetInProject_netPointsInfo (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPoints_property.addEBObserverOf_netInfoForPoint (self.netPointsInfo_property)
  //--- Install undoers and opposite setter for relationships
    self.mPoints_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNet_property.setProp (me) } },
      resetter: { inObject in inObject.mNet_property.setProp (nil) }
    )
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mNetClass_property.removeEBObserverOf_mNetClassName (self.netClassName_property)
    self.mNetClass_property.removeEBObserverOf_mNetClassColor (self.wireColor_property)
    self.mPoints_property.removeEBObserverOf_netInfoForPoint (self.netPointsInfo_property)
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
      "wireColor",
      idx: self.wireColor_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.wireColor_property.mObserverExplorer,
      valueExplorer: &self.wireColor_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netPointsInfo",
      idx: self.netPointsInfo_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netPointsInfo_property.mObserverExplorer,
      valueExplorer: &self.netPointsInfo_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "mPoints",
      idx:mPoints_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mPoints_property.mValueExplorer
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
  //--- Atomic property: mNetName
    self.mNetName_property.mObserverExplorer = nil
    self.mNetName_property.mValueExplorer = nil
  //--- To many property: mPoints
    self.mPoints_property.mValueExplorer = nil
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
  //--- Atomic property: mNetName
    self.mNetName_property.storeIn (dictionary: ioDictionary, forKey:"mNetName")
  //--- To many property: mPoints
    self.store (
      managedObjectArray: self.mPoints_property.propval,
      relationshipName: "mPoints",
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
  //--- To one property: mNetClass
    if let object = self.mNetClass {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

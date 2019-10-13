//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardObject_isPlacedInBoard : class {
  var isPlacedInBoard : Bool? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardObject_issues : class {
  var issues : CanariIssueArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardObject_isVia : class {
  var isVia : Bool? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardObject_trackLength : class {
  var trackLength : Double? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardObject_signatureForERCChecking : class {
  var signatureForERCChecking : UInt32? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardObject_netNameAndPadLocation : class {
  var netNameAndPadLocation : RastnetInfoArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardObject_componentName : class {
  var componentName : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardObject_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardObject_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardObject_errorOrWarningIssueSize : class {
  var errorOrWarningIssueSize : Double? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: BoardObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class BoardObject : EBGraphicManagedObject,
         BoardObject_isPlacedInBoard,
         BoardObject_issues,
         BoardObject_isVia,
         BoardObject_trackLength,
         BoardObject_signatureForERCChecking,
         BoardObject_netNameAndPadLocation,
         BoardObject_componentName,
         BoardObject_selectionDisplay,
         BoardObject_objectDisplay,
         BoardObject_errorOrWarningIssueSize {

  //····················································································································
  //   To one property: mRoot
  //····················································································································

   let mRoot_property = StoredObject_ProjectRoot (usedForSignature: false)

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
  //   Transient property: isPlacedInBoard
  //····················································································································

  let isPlacedInBoard_property = EBTransientProperty_Bool ()

  //····················································································································

  var isPlacedInBoard_property_selection : EBSelection <Bool> {
    return self.isPlacedInBoard_property.prop
  }

  //····················································································································

  var isPlacedInBoard : Bool? {
    switch self.isPlacedInBoard_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: issues
  //····················································································································

  let issues_property = EBTransientProperty_CanariIssueArray ()

  //····················································································································

  var issues_property_selection : EBSelection <CanariIssueArray> {
    return self.issues_property.prop
  }

  //····················································································································

  var issues : CanariIssueArray? {
    switch self.issues_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: isVia
  //····················································································································

  let isVia_property = EBTransientProperty_Bool ()

  //····················································································································

  var isVia_property_selection : EBSelection <Bool> {
    return self.isVia_property.prop
  }

  //····················································································································

  var isVia : Bool? {
    switch self.isVia_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: trackLength
  //····················································································································

  let trackLength_property = EBTransientProperty_Double ()

  //····················································································································

  var trackLength_property_selection : EBSelection <Double> {
    return self.trackLength_property.prop
  }

  //····················································································································

  var trackLength : Double? {
    switch self.trackLength_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: signatureForERCChecking
  //····················································································································

  let signatureForERCChecking_property = EBTransientProperty_UInt32 ()

  //····················································································································

  var signatureForERCChecking_property_selection : EBSelection <UInt32> {
    return self.signatureForERCChecking_property.prop
  }

  //····················································································································

  var signatureForERCChecking : UInt32? {
    switch self.signatureForERCChecking_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netNameAndPadLocation
  //····················································································································

  let netNameAndPadLocation_property = EBTransientProperty_RastnetInfoArray ()

  //····················································································································

  var netNameAndPadLocation_property_selection : EBSelection <RastnetInfoArray> {
    return self.netNameAndPadLocation_property.prop
  }

  //····················································································································

  var netNameAndPadLocation : RastnetInfoArray? {
    switch self.netNameAndPadLocation_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: componentName
  //····················································································································

  let componentName_property = EBTransientProperty_String ()

  //····················································································································

  var componentName_property_selection : EBSelection <String> {
    return self.componentName_property.prop
  }

  //····················································································································

  var componentName : String? {
    switch self.componentName_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: errorOrWarningIssueSize
  //····················································································································

  let errorOrWarningIssueSize_property = EBTransientProperty_Double ()

  //····················································································································

  var errorOrWarningIssueSize_property_selection : EBSelection <Double> {
    return self.errorOrWarningIssueSize_property.prop
  }

  //····················································································································

  var errorOrWarningIssueSize : Double? {
    switch self.errorOrWarningIssueSize_property_selection {
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
  //--- To one property: mRoot (has opposite to many relationship: mBoardObjects)
    self.mRoot_property.ebUndoManager = self.ebUndoManager
    self.mRoot_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mBoardObjects_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mBoardObjects_property.remove (me) } }
    )
  //--- Atomic property: isPlacedInBoard
    self.isPlacedInBoard_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mRoot_none_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mRoot_none_selection) {
          case (.single (let v0)) :
            return .single (transient_BoardObject_isPlacedInBoard (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mRoot_property.addEBObserver (self.isPlacedInBoard_property)
  //--- Atomic property: errorOrWarningIssueSize
    self.errorOrWarningIssueSize_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mRoot_property.mErrorOrWarningIssueSize_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mRoot_property.mErrorOrWarningIssueSize_property_selection) {
          case (.single (let v0)) :
            return .single (transient_BoardObject_errorOrWarningIssueSize (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mRoot_property.addEBObserverOf_mErrorOrWarningIssueSize (self.errorOrWarningIssueSize_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mRoot_property.removeEBObserver (self.isPlacedInBoard_property)
    self.mRoot_property.removeEBObserverOf_mErrorOrWarningIssueSize (self.errorOrWarningIssueSize_property)
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
      "isPlacedInBoard",
      idx: self.isPlacedInBoard_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.isPlacedInBoard_property.mObserverExplorer,
      valueExplorer: &self.isPlacedInBoard_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "issues",
      idx: self.issues_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.issues_property.mObserverExplorer,
      valueExplorer: &self.issues_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "isVia",
      idx: self.isVia_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.isVia_property.mObserverExplorer,
      valueExplorer: &self.isVia_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "trackLength",
      idx: self.trackLength_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.trackLength_property.mObserverExplorer,
      valueExplorer: &self.trackLength_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "signatureForERCChecking",
      idx: self.signatureForERCChecking_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.signatureForERCChecking_property.mObserverExplorer,
      valueExplorer: &self.signatureForERCChecking_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netNameAndPadLocation",
      idx: self.netNameAndPadLocation_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netNameAndPadLocation_property.mObserverExplorer,
      valueExplorer: &self.netNameAndPadLocation_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "componentName",
      idx: self.componentName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.componentName_property.mObserverExplorer,
      valueExplorer: &self.componentName_property.mValueExplorer
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
      "errorOrWarningIssueSize",
      idx: self.errorOrWarningIssueSize_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.errorOrWarningIssueSize_property.mObserverExplorer,
      valueExplorer: &self.errorOrWarningIssueSize_property.mValueExplorer
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
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- To one property: mRoot
    self.mRoot_property.mObserverExplorer = nil
    self.mRoot_property.mValueExplorer = nil
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
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


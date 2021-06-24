//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol PackageObject_issues : AnyObject {
  var issues : CanariIssueArray? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageObject_selectionDisplay : AnyObject {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageObject_objectDisplay : AnyObject {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageObject_knobSize : AnyObject {
  var knobSize : Double? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: PackageObject
//----------------------------------------------------------------------------------------------------------------------

class PackageObject : EBGraphicManagedObject,
         PackageObject_issues,
         PackageObject_selectionDisplay,
         PackageObject_objectDisplay,
         PackageObject_knobSize {

  //····················································································································
  //   Transient property: issues
  //····················································································································

  final let issues_property = EBTransientProperty_CanariIssueArray ()

  //····················································································································

  final var issues_property_selection : EBSelection <CanariIssueArray> {
    return self.issues_property.selection
  }

  //····················································································································

  final var issues : CanariIssueArray? {
    switch self.issues_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   To one property: mRoot
  //····················································································································

  final let mRoot_property = StoredObject_PackageRoot (usedForSignature: false)

  //····················································································································

  final var mRoot_property_selection : EBSelection <PackageRoot?> {
    return .single (self.mRoot_property.propval)
  }

  //····················································································································

  final var mRoot : PackageRoot? {
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

  final let mRoot_none = EBGenericTransientProperty <Bool> () // §

  //····················································································································

  final var mRoot_none_selection : EBSelection <Bool> {
     return .single (self.mRoot_property.propval == nil)
  }

  //····················································································································
  //   Transient property: knobSize
  //····················································································································

  final let knobSize_property = EBTransientProperty_Double ()

  //····················································································································

  final var knobSize_property_selection : EBSelection <Double> {
    return self.knobSize_property.selection
  }

  //····················································································································

  final var knobSize : Double? {
    switch self.knobSize_property_selection {
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
    self.mRoot_none.mReadModelFunction = { [weak self] in // §
      if let uwSelf = self {
        return .single (uwSelf.mRoot_property.propval == nil)
      }else{
        return .empty
      }
    }
    self.mRoot_property.addEBObserver (self.mRoot_none)
  //--- To one property: mRoot (has opposite to many relationship: packageObjects)
    self.mRoot_property.ebUndoManager = self.ebUndoManager
    self.mRoot_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.packageObjects_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.packageObjects_property.remove (me) } }
    )
  //--- Atomic property: knobSize
    self.knobSize_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mRoot_property.knobSizeMultpliedByTen_property_selection) {
        case (.single (let v0)) :
          return .single (transient_PackageObject_knobSize (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mRoot_property.addEBObserverOf_knobSizeMultpliedByTen (self.knobSize_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.mRoot_property.knobSizeMultpliedByTen_property.removeEBObserver (self.knobSize_property)
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
      "knobSize",
      idx: self.knobSize_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.knobSize_property.mObserverExplorer,
      valueExplorer: &self.knobSize_property.mValueExplorer
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
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  //--- To one property: mRoot
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mRoot",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? PackageRoot {
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
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
  //--- To one relationships
    ioString += "mRoot\n"
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
  //--- To one relationships
    if let object = self.mRoot {
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
      if let range = inDictionary ["mRoot"], let objectIndex = inData.base62EncodedInt (range: range) {
        let object = inObjectArray [objectIndex] as! PackageRoot
        inParallelObjectSetupContext.addToOneSetupDeferredOperation { self.mRoot = object }
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

//----------------------------------------------------------------------------------------------------------------------


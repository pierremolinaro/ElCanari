//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol LabelInSchematic_mOrientation : class {
  var mOrientation : QuadrantRotation { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol LabelInSchematic_location : class {
  var location : CanariPoint? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol LabelInSchematic_netName : class {
  var netName : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol LabelInSchematic_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol LabelInSchematic_netClassName : class {
  var netClassName : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol LabelInSchematic_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: LabelInSchematic
//----------------------------------------------------------------------------------------------------------------------

class LabelInSchematic : SchematicObject,
         LabelInSchematic_mOrientation,
         LabelInSchematic_location,
         LabelInSchematic_netName,
         LabelInSchematic_selectionDisplay,
         LabelInSchematic_netClassName,
         LabelInSchematic_objectDisplay {

  //····················································································································
  //   Atomic property: mOrientation
  //····················································································································

  let mOrientation_property = EBStoredProperty_QuadrantRotation (defaultValue: QuadrantRotation.rotation0)

  //····················································································································

  final func reset_mOrientation_toDefaultValue () {
    self.mOrientation = QuadrantRotation.rotation0
  }

  //····················································································································

  final var mOrientation : QuadrantRotation {
    get { return self.mOrientation_property.propval }
    set { self.mOrientation_property.setProp (newValue) }
  }

  //····················································································································

  final var mOrientation_property_selection : EBSelection <QuadrantRotation> { return self.mOrientation_property.prop }

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
  //   Transient property: netName
  //····················································································································

  let netName_property = EBTransientProperty_String ()

  //····················································································································

  var netName_property_selection : EBSelection <String> {
    return self.netName_property.prop
  }

  //····················································································································

  var netName : String? {
    switch self.netName_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
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
  //--- To one property: mPoint (has opposite to many relationship: mLabels)
    self.mPoint_property.ebUndoManager = self.ebUndoManager
    self.mPoint_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mLabels_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mLabels_property.remove (me) } }
    )
  //--- Atomic property: location
    self.location_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mPoint_property.location_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPoint_property.location_property_selection) {
          case (.single (let v0)) :
            return .single (transient_LabelInSchematic_location (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPoint_property.addEBObserverOf_location (self.location_property)
  //--- Atomic property: netName
    self.netName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mPoint_property.netName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPoint_property.netName_property_selection) {
          case (.single (let v0)) :
            return .single (transient_LabelInSchematic_netName (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPoint_property.addEBObserverOf_netName (self.netName_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mPoint_property.location_property_selection.kind ()
        kind &= unwSelf.netName_property_selection.kind ()
        kind &= g_Preferences!.pinNameFont_property_selection.kind ()
        kind &= unwSelf.mOrientation_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPoint_property.location_property_selection, unwSelf.netName_property_selection, g_Preferences!.pinNameFont_property_selection, unwSelf.mOrientation_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_LabelInSchematic_selectionDisplay (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPoint_property.addEBObserverOf_location (self.selectionDisplay_property)
    self.netName_property.addEBObserver (self.selectionDisplay_property)
    g_Preferences?.pinNameFont_property.addEBObserver (self.selectionDisplay_property)
    self.mOrientation_property.addEBObserver (self.selectionDisplay_property)
  //--- Atomic property: netClassName
    self.netClassName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mPoint_property.netClassName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPoint_property.netClassName_property_selection) {
          case (.single (let v0)) :
            return .single (transient_LabelInSchematic_netClassName (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPoint_property.addEBObserverOf_netClassName (self.netClassName_property)
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = g_Preferences!.symbolColorForSchematic_property_selection.kind ()
        kind &= g_Preferences!.symbolDrawingWidthMultipliedByTenForSchematic_property_selection.kind ()
        kind &= unwSelf.mPoint_property.location_property_selection.kind ()
        kind &= unwSelf.netName_property_selection.kind ()
        kind &= g_Preferences!.pinNameFont_property_selection.kind ()
        kind &= unwSelf.mOrientation_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (g_Preferences!.symbolColorForSchematic_property_selection, g_Preferences!.symbolDrawingWidthMultipliedByTenForSchematic_property_selection, unwSelf.mPoint_property.location_property_selection, unwSelf.netName_property_selection, g_Preferences!.pinNameFont_property_selection, unwSelf.mOrientation_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5)) :
            return .single (transient_LabelInSchematic_objectDisplay (v0, v1, v2, v3, v4, v5))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    g_Preferences?.symbolColorForSchematic_property.addEBObserver (self.objectDisplay_property)
    g_Preferences?.symbolDrawingWidthMultipliedByTenForSchematic_property.addEBObserver (self.objectDisplay_property)
    self.mPoint_property.addEBObserverOf_location (self.objectDisplay_property)
    self.netName_property.addEBObserver (self.objectDisplay_property)
    g_Preferences?.pinNameFont_property.addEBObserver (self.objectDisplay_property)
    self.mOrientation_property.addEBObserver (self.objectDisplay_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mPoint_property.removeEBObserverOf_location (self.location_property)
    self.mPoint_property.removeEBObserverOf_netName (self.netName_property)
    self.mPoint_property.removeEBObserverOf_location (self.selectionDisplay_property)
    self.netName_property.removeEBObserver (self.selectionDisplay_property)
    g_Preferences?.pinNameFont_property.removeEBObserver (self.selectionDisplay_property)
    self.mOrientation_property.removeEBObserver (self.selectionDisplay_property)
    self.mPoint_property.removeEBObserverOf_netClassName (self.netClassName_property)
    g_Preferences?.symbolColorForSchematic_property.removeEBObserver (self.objectDisplay_property)
    g_Preferences?.symbolDrawingWidthMultipliedByTenForSchematic_property.removeEBObserver (self.objectDisplay_property)
    self.mPoint_property.removeEBObserverOf_location (self.objectDisplay_property)
    self.netName_property.removeEBObserver (self.objectDisplay_property)
    g_Preferences?.pinNameFont_property.removeEBObserver (self.objectDisplay_property)
    self.mOrientation_property.removeEBObserver (self.objectDisplay_property)
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
      "location",
      idx: self.location_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.location_property.mObserverExplorer,
      valueExplorer: &self.location_property.mValueExplorer
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
      "selectionDisplay",
      idx: self.selectionDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.selectionDisplay_property.mObserverExplorer,
      valueExplorer: &self.selectionDisplay_property.mValueExplorer
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
      "objectDisplay",
      idx: self.objectDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.objectDisplay_property.mObserverExplorer,
      valueExplorer: &self.objectDisplay_property.mValueExplorer
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
    self.mOrientation_property.storeIn (dictionary: ioDictionary, forKey: "mOrientation")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
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
    self.mOrientation_property.readFrom (dictionary: inDictionary, forKey: "mOrientation")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mOrientation\n"
  //--- To one relationships
    ioString += "mPoint\n"
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mOrientation.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
    if let object = self.mPoint {
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
    inParallelObjectSetupContext.mOperationQueue.addOperation {
    //  var operations = [() -> Void] ()
    //--- Atomic properties
      if let range = inDictionary ["mOrientation"], let value = QuadrantRotation.unarchiveFromDataRange (inData, range) {
        //operations.append ({ self.mOrientation = value })
        self.mOrientation = value
      }
    //--- To many relationships
    //--- To one relationships
      if let range = inDictionary ["mPoint"], let objectIndex = inData.base62EncodedInt (range: range) {
        inParallelObjectSetupContext.mMutex.wait ()
        inParallelObjectSetupContext.mToOneSetUpOperationList.append ({ self.mPoint = inObjectArray [objectIndex] as? PointInSchematic })
        inParallelObjectSetupContext.mMutex.signal ()
      }
    }
  //--- End of addOperation
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

//----------------------------------------------------------------------------------------------------------------------


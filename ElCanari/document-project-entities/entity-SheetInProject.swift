//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SheetInProject_mSheetTitle : class {
  var mSheetTitle : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SheetInProject_issues : class {
  var issues : CanariIssueArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SheetInProject_connectedPoints : class {
  var connectedPoints : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SheetInProject_connexionWarnings : class {
  var connexionWarnings : Int? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SheetInProject_connexionErrors : class {
  var connexionErrors : Int? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SheetInProject_sheetDescriptor : class {
  var sheetDescriptor : SchematicSheetDescriptor? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SheetInProject : EBManagedObject,
         SheetInProject_mSheetTitle,
         SheetInProject_issues,
         SheetInProject_connectedPoints,
         SheetInProject_connexionWarnings,
         SheetInProject_connexionErrors,
         SheetInProject_sheetDescriptor {

  //····················································································································
  //   To many property: mObjects
  //····················································································································

  let mObjects_property = StoredArrayOf_SchematicObject (usedForSignature: false)

  //····················································································································

  var mObjects_property_selection : EBSelection < [SchematicObject] > {
    return self.mObjects_property.prop
  }

  //····················································································································

  var mObjects : [SchematicObject] {
    get { return self.mObjects_property.propval }
    set { self.mObjects_property.setProp (newValue) }
  }

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
  //   Atomic property: mSheetTitle
  //····················································································································

  let mSheetTitle_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mSheetTitle : String {
    get { return self.mSheetTitle_property.propval }
    set { self.mSheetTitle_property.setProp (newValue) }
  }

  //····················································································································

  var mSheetTitle_property_selection : EBSelection <String> { return self.mSheetTitle_property.prop }

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
  //   Transient property: connectedPoints
  //····················································································································

  let connectedPoints_property = EBTransientProperty_EBShape ()

  //····················································································································

  var connectedPoints_property_selection : EBSelection <EBShape> {
    return self.connectedPoints_property.prop
  }

  //····················································································································

  var connectedPoints : EBShape? {
    switch self.connectedPoints_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: connexionWarnings
  //····················································································································

  let connexionWarnings_property = EBTransientProperty_Int ()

  //····················································································································

  var connexionWarnings_property_selection : EBSelection <Int> {
    return self.connexionWarnings_property.prop
  }

  //····················································································································

  var connexionWarnings : Int? {
    switch self.connexionWarnings_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: connexionErrors
  //····················································································································

  let connexionErrors_property = EBTransientProperty_Int ()

  //····················································································································

  var connexionErrors_property_selection : EBSelection <Int> {
    return self.connexionErrors_property.prop
  }

  //····················································································································

  var connexionErrors : Int? {
    switch self.connexionErrors_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: sheetDescriptor
  //····················································································································

  let sheetDescriptor_property = EBTransientProperty_SchematicSheetDescriptor ()

  //····················································································································

  var sheetDescriptor_property_selection : EBSelection <SchematicSheetDescriptor> {
    return self.sheetDescriptor_property.prop
  }

  //····················································································································

  var sheetDescriptor : SchematicSheetDescriptor? {
    switch self.sheetDescriptor_property_selection {
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
  //--- To many property: mObjects (has opposite relationship)
    self.mObjects_property.ebUndoManager = self.ebUndoManager
    self.mObjects_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mSheet_property.setProp (me) } },
      resetter: { inObject in inObject.mSheet_property.setProp (nil) }
    )
  //--- To many property: mPoints (has opposite relationship)
    self.mPoints_property.ebUndoManager = self.ebUndoManager
    self.mPoints_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mSheet_property.setProp (me) } },
      resetter: { inObject in inObject.mSheet_property.setProp (nil) }
    )
  //--- Atomic property: mSheetTitle
    self.mSheetTitle_property.ebUndoManager = self.ebUndoManager
  //--- To one property: mRoot (has opposite to many relationship: mSheets)
    self.mRoot_property.ebUndoManager = self.ebUndoManager
    self.mRoot_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mSheets_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mSheets_property.remove (me) } }
    )
  //--- Atomic property: issues
    self.issues_property.mReadModelFunction = { [weak self] in
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
            return .single (transient_SheetInProject_issues (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPoints_property.addEBObserverOf_status (self.issues_property)
  //--- Atomic property: connectedPoints
    self.connectedPoints_property.mReadModelFunction = { [weak self] in
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
            return .single (transient_SheetInProject_connectedPoints (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPoints_property.addEBObserverOf_connectedPoints (self.connectedPoints_property)
  //--- Atomic property: connexionWarnings
    self.connexionWarnings_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.issues_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.issues_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SheetInProject_connexionWarnings (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.issues_property.addEBObserver (self.connexionWarnings_property)
  //--- Atomic property: connexionErrors
    self.connexionErrors_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.issues_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.issues_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SheetInProject_connexionErrors (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.issues_property.addEBObserver (self.connexionErrors_property)
  //--- Atomic property: sheetDescriptor
    self.sheetDescriptor_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mRoot_property.mSchematicSheetOrientation_property_selection.kind ()
        kind &= unwSelf.mRoot_property.sheetIndexes_property_selection.kind ()
        kind &= unwSelf.mRoot_property.mSchematicCustomWidth_property_selection.kind ()
        kind &= unwSelf.mRoot_property.mSchematicCustomHeight_property_selection.kind ()
        kind &= unwSelf.ebObjectIndex_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mRoot_property.mSchematicSheetOrientation_property_selection, unwSelf.mRoot_property.sheetIndexes_property_selection, unwSelf.mRoot_property.mSchematicCustomWidth_property_selection, unwSelf.mRoot_property.mSchematicCustomHeight_property_selection, unwSelf.ebObjectIndex_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_SheetInProject_sheetDescriptor (v0, v1, v2, v3, v4))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mRoot_property.addEBObserverOf_mSchematicSheetOrientation (self.sheetDescriptor_property)
    self.mRoot_property.addEBObserverOf_sheetIndexes (self.sheetDescriptor_property)
    self.mRoot_property.addEBObserverOf_mSchematicCustomWidth (self.sheetDescriptor_property)
    self.mRoot_property.addEBObserverOf_mSchematicCustomHeight (self.sheetDescriptor_property)
  //--- Install undoers and opposite setter for relationships
    self.mObjects_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mSheet_property.setProp (me) } },
      resetter: { inObject in inObject.mSheet_property.setProp (nil) }
    )
    self.mPoints_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mSheet_property.setProp (me) } },
      resetter: { inObject in inObject.mSheet_property.setProp (nil) }
    )
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mPoints_property.removeEBObserverOf_status (self.issues_property)
    self.mPoints_property.removeEBObserverOf_connectedPoints (self.connectedPoints_property)
    self.issues_property.removeEBObserver (self.connexionWarnings_property)
    self.issues_property.removeEBObserver (self.connexionErrors_property)
    self.mRoot_property.removeEBObserverOf_mSchematicSheetOrientation (self.sheetDescriptor_property)
    self.mRoot_property.removeEBObserverOf_sheetIndexes (self.sheetDescriptor_property)
    self.mRoot_property.removeEBObserverOf_mSchematicCustomWidth (self.sheetDescriptor_property)
    self.mRoot_property.removeEBObserverOf_mSchematicCustomHeight (self.sheetDescriptor_property)
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
      "mSheetTitle",
      idx: self.mSheetTitle_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mSheetTitle_property.mObserverExplorer,
      valueExplorer: &self.mSheetTitle_property.mValueExplorer
    )
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
      "connectedPoints",
      idx: self.connectedPoints_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.connectedPoints_property.mObserverExplorer,
      valueExplorer: &self.connectedPoints_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "connexionWarnings",
      idx: self.connexionWarnings_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.connexionWarnings_property.mObserverExplorer,
      valueExplorer: &self.connexionWarnings_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "connexionErrors",
      idx: self.connexionErrors_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.connexionErrors_property.mObserverExplorer,
      valueExplorer: &self.connexionErrors_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "sheetDescriptor",
      idx: self.sheetDescriptor_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.sheetDescriptor_property.mObserverExplorer,
      valueExplorer: &self.sheetDescriptor_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "mObjects",
      idx:mObjects_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mObjects_property.mValueExplorer
    )
    createEntryForToManyRelationshipNamed (
      "mPoints",
      idx:mPoints_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mPoints_property.mValueExplorer
    )
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
  //--- To many property: mObjects
    self.mObjects_property.mValueExplorer = nil
  //--- To many property: mPoints
    self.mPoints_property.mValueExplorer = nil
  //--- Atomic property: mSheetTitle
    self.mSheetTitle_property.mObserverExplorer = nil
    self.mSheetTitle_property.mValueExplorer = nil
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
    self.mObjects = []
    self.mPoints = []
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
  //--- To many property: mObjects
    self.store (
      managedObjectArray: self.mObjects_property.propval,
      relationshipName: "mObjects",
      intoDictionary: ioDictionary
    )
  //--- To many property: mPoints
    self.store (
      managedObjectArray: self.mPoints_property.propval,
      relationshipName: "mPoints",
      intoDictionary: ioDictionary
    )
  //--- Atomic property: mSheetTitle
    self.mSheetTitle_property.storeIn (dictionary: ioDictionary, forKey:"mSheetTitle")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: mObjects
    self.mObjects_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mObjects",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [SchematicObject])
  //--- To many property: mPoints
    self.mPoints_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mPoints",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [PointInSchematic])
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
  //--- Atomic property: mSheetTitle
    self.mSheetTitle_property.readFrom (dictionary: inDictionary, forKey:"mSheetTitle")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mSheetTitle\n"
  //--- To one relationships
    ioString += "mRoot\n"
  //--- To many relationships
    ioString += "mObjects\n"
    ioString += "mPoints\n"
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mSheetTitle.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
    if let object = self.mRoot {
      ioData.append (base62Encoded: object.savingIndex)
    }
    ioData.append (ascii: .lineFeed)
  //--- To many relationships
    do{
      var optionalFirstIndex : Int? = nil
      var rangeCount = 0
      for object in self.mObjects {
        if let firstIndex = optionalFirstIndex {
          if object.savingIndex == (firstIndex + 1) {
            rangeCount += 1
            optionalFirstIndex = object.savingIndex
          }else if rangeCount > 0 {
            ioData.append (ascii: .colon)
            ioData.append (base62Encoded: rangeCount)
            ioData.append (ascii: .space)
            ioData.append (base62Encoded: object.savingIndex)
            rangeCount = 0
            optionalFirstIndex = object.savingIndex
          }else{
            ioData.append (ascii: .space)
            ioData.append (base62Encoded: object.savingIndex)
            optionalFirstIndex = object.savingIndex
          }
        }else{
          ioData.append (base62Encoded: object.savingIndex)
          optionalFirstIndex = object.savingIndex
        }
      }
      if optionalFirstIndex != nil, rangeCount > 0 {
        ioData.append (ascii: .colon)
        ioData.append (base62Encoded: rangeCount)
      }
      ioData.append (ascii: .lineFeed)
    }
    do{
      var optionalFirstIndex : Int? = nil
      var rangeCount = 0
      for object in self.mPoints {
        if let firstIndex = optionalFirstIndex {
          if object.savingIndex == (firstIndex + 1) {
            rangeCount += 1
            optionalFirstIndex = object.savingIndex
          }else if rangeCount > 0 {
            ioData.append (ascii: .colon)
            ioData.append (base62Encoded: rangeCount)
            ioData.append (ascii: .space)
            ioData.append (base62Encoded: object.savingIndex)
            rangeCount = 0
            optionalFirstIndex = object.savingIndex
          }else{
            ioData.append (ascii: .space)
            ioData.append (base62Encoded: object.savingIndex)
            optionalFirstIndex = object.savingIndex
          }
        }else{
          ioData.append (base62Encoded: object.savingIndex)
          optionalFirstIndex = object.savingIndex
        }
      }
      if optionalFirstIndex != nil, rangeCount > 0 {
        ioData.append (ascii: .colon)
        ioData.append (base62Encoded: rangeCount)
      }
      ioData.append (ascii: .lineFeed)
    }
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: mObjects
    for managedObject in self.mObjects {
      objects.append (managedObject)
    }
  //--- To many property: mPoints
    for managedObject in self.mPoints {
      objects.append (managedObject)
    }
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
  //--- To many property: mObjects
    for managedObject in self.mObjects {
      objects.append (managedObject)
    }
  //--- To many property: mPoints
    for managedObject in self.mPoints {
      objects.append (managedObject)
    }
  //--- To one property: mRoot
    if let object = self.mRoot {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


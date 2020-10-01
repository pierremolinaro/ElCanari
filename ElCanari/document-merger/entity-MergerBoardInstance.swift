//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol MergerBoardInstance_x : class {
  var x : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol MergerBoardInstance_y : class {
  var y : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol MergerBoardInstance_instanceRotation : class {
  var instanceRotation : QuadrantRotation { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol MergerBoardInstance_instanceRect : class {
  var instanceRect : CanariRect? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol MergerBoardInstance_modelName : class {
  var modelName : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol MergerBoardInstance_boardLimitWidth : class {
  var boardLimitWidth : Int? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol MergerBoardInstance_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol MergerBoardInstance_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: MergerBoardInstance
//----------------------------------------------------------------------------------------------------------------------

class MergerBoardInstance : EBGraphicManagedObject,
         MergerBoardInstance_x,
         MergerBoardInstance_y,
         MergerBoardInstance_instanceRotation,
         MergerBoardInstance_instanceRect,
         MergerBoardInstance_modelName,
         MergerBoardInstance_boardLimitWidth,
         MergerBoardInstance_selectionDisplay,
         MergerBoardInstance_objectDisplay {

  //····················································································································
  //   Atomic property: x
  //····················································································································

  // final let x_property = EBStoredProperty_Int (defaultValue: 0)

  final let x_property : EBStoredProperty_Int

  //····················································································································

  final func reset_x_toDefaultValue () {
    self.x = 0
  }

  //····················································································································

  final var x : Int {
    get { return self.x_property.propval }
    set { self.x_property.setProp (newValue) }
  }

  //····················································································································

  final var x_property_selection : EBSelection <Int> { return self.x_property.prop }

  //····················································································································
  //   Atomic property: y
  //····················································································································

  // final let y_property = EBStoredProperty_Int (defaultValue: 0)

  final let y_property : EBStoredProperty_Int

  //····················································································································

  final func reset_y_toDefaultValue () {
    self.y = 0
  }

  //····················································································································

  final var y : Int {
    get { return self.y_property.propval }
    set { self.y_property.setProp (newValue) }
  }

  //····················································································································

  final var y_property_selection : EBSelection <Int> { return self.y_property.prop }

  //····················································································································
  //   Atomic property: instanceRotation
  //····················································································································

  // final let instanceRotation_property = EBStoredProperty_QuadrantRotation (defaultValue: QuadrantRotation.rotation0)

  final let instanceRotation_property : EBStoredProperty_QuadrantRotation

  //····················································································································

  final func reset_instanceRotation_toDefaultValue () {
    self.instanceRotation = QuadrantRotation.rotation0
  }

  //····················································································································

  final var instanceRotation : QuadrantRotation {
    get { return self.instanceRotation_property.propval }
    set { self.instanceRotation_property.setProp (newValue) }
  }

  //····················································································································

  final var instanceRotation_property_selection : EBSelection <QuadrantRotation> { return self.instanceRotation_property.prop }

  //····················································································································
  //   To one property: myModel
  //····················································································································

  final let myModel_property = StoredObject_BoardModel (usedForSignature: false)

  //····················································································································

  final var myModel_property_selection : EBSelection <BoardModel?> {
    return .single (self.myModel_property.propval)
  }

  //····················································································································

  final var myModel : BoardModel? {
    get {
      return self.myModel_property.propval
    }
    set {
      if self.myModel_property.propval != nil {
        self.myModel_property.setProp (nil)
      }
      if newValue != nil {
        self.myModel_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  final var myModel_none : StoredObject_BoardModel { return self.myModel_property }

  //····················································································································

  final var myModel_none_selection : EBSelection <Bool> {
    return .single (self.myModel_property.propval == nil)
  }

  //····················································································································
  //   Transient property: instanceRect
  //····················································································································

  final let instanceRect_property = EBTransientProperty_CanariRect ()

  //····················································································································

  final var instanceRect_property_selection : EBSelection <CanariRect> {
    return self.instanceRect_property.prop
  }

  //····················································································································

  final var instanceRect : CanariRect? {
    switch self.instanceRect_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: modelName
  //····················································································································

  final let modelName_property = EBTransientProperty_String ()

  //····················································································································

  final var modelName_property_selection : EBSelection <String> {
    return self.modelName_property.prop
  }

  //····················································································································

  final var modelName : String? {
    switch self.modelName_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: boardLimitWidth
  //····················································································································

  final let boardLimitWidth_property = EBTransientProperty_Int ()

  //····················································································································

  final var boardLimitWidth_property_selection : EBSelection <Int> {
    return self.boardLimitWidth_property.prop
  }

  //····················································································································

  final var boardLimitWidth : Int? {
    switch self.boardLimitWidth_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   To one property: myRoot
  //····················································································································

  final let myRoot_property = StoredObject_MergerRoot (usedForSignature: false)

  //····················································································································

  final var myRoot_property_selection : EBSelection <MergerRoot?> {
    return .single (self.myRoot_property.propval)
  }

  //····················································································································

  final var myRoot : MergerRoot? {
    get {
      return self.myRoot_property.propval
    }
    set {
      if self.myRoot_property.propval != nil {
        self.myRoot_property.setProp (nil)
      }
      if newValue != nil {
        self.myRoot_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  final var myRoot_none : StoredObject_MergerRoot { return self.myRoot_property }

  //····················································································································

  final var myRoot_none_selection : EBSelection <Bool> {
    return .single (self.myRoot_property.propval == nil)
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    self.x_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.y_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.instanceRotation_property = EBStoredProperty_QuadrantRotation (defaultValue: QuadrantRotation.rotation0, undoManager: ebUndoManager)
    super.init (ebUndoManager)
    self.configureObject ()
  }
  
  //····················································································································

  private final func configureObject () {
  //--- To one property: myModel (has opposite to many relationship: myInstances)
    self.myModel_property.ebUndoManager = self.ebUndoManager
    self.myModel_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.myInstances_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.myInstances_property.remove (me) } }
    )
  //--- Atomic property: instanceRect
    self.instanceRect_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x_property_selection.kind ()
        kind &= unwSelf.y_property_selection.kind ()
        kind &= unwSelf.myModel_property.modelWidth_property_selection.kind ()
        kind &= unwSelf.myModel_property.modelHeight_property_selection.kind ()
        kind &= unwSelf.instanceRotation_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x_property_selection, unwSelf.y_property_selection, unwSelf.myModel_property.modelWidth_property_selection, unwSelf.myModel_property.modelHeight_property_selection, unwSelf.instanceRotation_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_MergerBoardInstance_instanceRect (v0, v1, v2, v3, v4))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.x_property.addEBObserver (self.instanceRect_property)
    self.y_property.addEBObserver (self.instanceRect_property)
    self.myModel_property.addEBObserverOf_modelWidth (self.instanceRect_property)
    self.myModel_property.addEBObserverOf_modelHeight (self.instanceRect_property)
    self.instanceRotation_property.addEBObserver (self.instanceRect_property)
  //--- Atomic property: modelName
    self.modelName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.myModel_property.name_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.myModel_property.name_property_selection) {
          case (.single (let v0)) :
            return .single (transient_MergerBoardInstance_modelName (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.myModel_property.addEBObserverOf_name (self.modelName_property)
  //--- Atomic property: boardLimitWidth
    self.boardLimitWidth_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.myModel_property.modelLimitWidth_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.myModel_property.modelLimitWidth_property_selection) {
          case (.single (let v0)) :
            return .single (transient_MergerBoardInstance_boardLimitWidth (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.myModel_property.addEBObserverOf_modelLimitWidth (self.boardLimitWidth_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.instanceRect_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.instanceRect_property_selection) {
          case (.single (let v0)) :
            return .single (transient_MergerBoardInstance_selectionDisplay (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.instanceRect_property.addEBObserver (self.selectionDisplay_property)
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x_property_selection.kind ()
        kind &= unwSelf.y_property_selection.kind ()
        kind &= unwSelf.myModel_property.modelWidth_property_selection.kind ()
        kind &= unwSelf.myModel_property.modelHeight_property_selection.kind ()
        kind &= unwSelf.instanceRotation_property_selection.kind ()
        kind &= unwSelf.myModel_property.imageForInstances_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x_property_selection, unwSelf.y_property_selection, unwSelf.myModel_property.modelWidth_property_selection, unwSelf.myModel_property.modelHeight_property_selection, unwSelf.instanceRotation_property_selection, unwSelf.myModel_property.imageForInstances_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5)) :
            return .single (transient_MergerBoardInstance_objectDisplay (v0, v1, v2, v3, v4, v5))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.x_property.addEBObserver (self.objectDisplay_property)
    self.y_property.addEBObserver (self.objectDisplay_property)
    self.myModel_property.addEBObserverOf_modelWidth (self.objectDisplay_property)
    self.myModel_property.addEBObserverOf_modelHeight (self.objectDisplay_property)
    self.instanceRotation_property.addEBObserver (self.objectDisplay_property)
    self.myModel_property.addEBObserverOf_imageForInstances (self.objectDisplay_property)
  //--- To one property: myRoot (has opposite to many relationship: boardInstances)
    self.myRoot_property.ebUndoManager = self.ebUndoManager
    self.myRoot_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.boardInstances_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.boardInstances_property.remove (me) } }
    )
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.x_property.removeEBObserver (self.instanceRect_property)
    self.y_property.removeEBObserver (self.instanceRect_property)
    self.myModel_property.removeEBObserverOf_modelWidth (self.instanceRect_property)
    self.myModel_property.removeEBObserverOf_modelHeight (self.instanceRect_property)
    self.instanceRotation_property.removeEBObserver (self.instanceRect_property)
    self.myModel_property.removeEBObserverOf_name (self.modelName_property)
    self.myModel_property.removeEBObserverOf_modelLimitWidth (self.boardLimitWidth_property)
    self.instanceRect_property.removeEBObserver (self.selectionDisplay_property)
    self.x_property.removeEBObserver (self.objectDisplay_property)
    self.y_property.removeEBObserver (self.objectDisplay_property)
    self.myModel_property.removeEBObserverOf_modelWidth (self.objectDisplay_property)
    self.myModel_property.removeEBObserverOf_modelHeight (self.objectDisplay_property)
    self.instanceRotation_property.removeEBObserver (self.objectDisplay_property)
    self.myModel_property.removeEBObserverOf_imageForInstances (self.objectDisplay_property)
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
      "x",
      idx: self.x_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x_property.mObserverExplorer,
      valueExplorer: &self.x_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y",
      idx: self.y_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y_property.mObserverExplorer,
      valueExplorer: &self.y_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "instanceRotation",
      idx: self.instanceRotation_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.instanceRotation_property.mObserverExplorer,
      valueExplorer: &self.instanceRotation_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "instanceRect",
      idx: self.instanceRect_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.instanceRect_property.mObserverExplorer,
      valueExplorer: &self.instanceRect_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "modelName",
      idx: self.modelName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.modelName_property.mObserverExplorer,
      valueExplorer: &self.modelName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "boardLimitWidth",
      idx: self.boardLimitWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.boardLimitWidth_property.mObserverExplorer,
      valueExplorer: &self.boardLimitWidth_property.mValueExplorer
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
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "myModel",
      idx:self.myModel_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.myModel_property.mValueExplorer
    )
    createEntryForToOneRelationshipNamed (
      "myRoot",
      idx:self.myRoot_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.myRoot_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: x
    self.x_property.mObserverExplorer = nil
    self.x_property.mValueExplorer = nil
  //--- Atomic property: y
    self.y_property.mObserverExplorer = nil
    self.y_property.mValueExplorer = nil
  //--- Atomic property: instanceRotation
    self.instanceRotation_property.mObserverExplorer = nil
    self.instanceRotation_property.mValueExplorer = nil
  //--- To one property: myModel
    self.myModel_property.mObserverExplorer = nil
    self.myModel_property.mValueExplorer = nil
  //--- To one property: myRoot
    self.myRoot_property.mObserverExplorer = nil
    self.myRoot_property.mValueExplorer = nil
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
    self.myModel = nil
    self.myRoot = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: x
    self.x_property.storeIn (dictionary: ioDictionary, forKey: "x")
  //--- Atomic property: y
    self.y_property.storeIn (dictionary: ioDictionary, forKey: "y")
  //--- Atomic property: instanceRotation
    self.instanceRotation_property.storeIn (dictionary: ioDictionary, forKey: "instanceRotation")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  //--- To one property: myModel
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "myModel",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? BoardModel {
        self.myModel_property.setProp (entity)
      }
    }
  //--- To one property: myRoot
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "myRoot",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? MergerRoot {
        self.myRoot_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: x
    self.x_property.readFrom (dictionary: inDictionary, forKey: "x")
  //--- Atomic property: y
    self.y_property.readFrom (dictionary: inDictionary, forKey: "y")
  //--- Atomic property: instanceRotation
    self.instanceRotation_property.readFrom (dictionary: inDictionary, forKey: "instanceRotation")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "x\n"
    ioString += "y\n"
    ioString += "instanceRotation\n"
  //--- To one relationships
    ioString += "myModel\n"
    ioString += "myRoot\n"
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.x.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.y.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.instanceRotation.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
    if let object = self.myModel {
      ioData.append (base62Encoded: object.savingIndex)
    }
    ioData.append (ascii: .lineFeed)
    if let object = self.myRoot {
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
    //--- Atomic properties
      if let range = inDictionary ["x"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.x = value
      }
      if let range = inDictionary ["y"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.y = value
      }
      if let range = inDictionary ["instanceRotation"], let value = QuadrantRotation.unarchiveFromDataRange (inData, range) {
        self.instanceRotation = value
      }
    //--- To one relationships
      if let range = inDictionary ["myModel"], let objectIndex = inData.base62EncodedInt (range: range) {
        inParallelObjectSetupContext.mMutex.wait ()
        inParallelObjectSetupContext.mToOneSetUpOperationList.append ({ self.myModel = inObjectArray [objectIndex] as? BoardModel })
        inParallelObjectSetupContext.mMutex.signal ()
      }
      if let range = inDictionary ["myRoot"], let objectIndex = inData.base62EncodedInt (range: range) {
        inParallelObjectSetupContext.mMutex.wait ()
        inParallelObjectSetupContext.mToOneSetUpOperationList.append ({ self.myRoot = inObjectArray [objectIndex] as? MergerRoot })
        inParallelObjectSetupContext.mMutex.signal ()
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
  //--- To one property: myModel
    if let object = self.myModel {
      objects.append (object)
    }
  //--- To one property: myRoot
    if let object = self.myRoot {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To one property: myModel
    if let object = self.myModel {
      objects.append (object)
    }
  //--- To one property: myRoot
    if let object = self.myRoot {
      objects.append (object)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


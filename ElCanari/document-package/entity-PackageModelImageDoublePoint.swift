//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol PackageModelImageDoublePoint_mFirstX : class {
  var mFirstX : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageModelImageDoublePoint_mFirstY : class {
  var mFirstY : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageModelImageDoublePoint_mFirstColor : class {
  var mFirstColor : NSColor { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageModelImageDoublePoint_mSecondDx : class {
  var mSecondDx : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageModelImageDoublePoint_mSecondDy : class {
  var mSecondDy : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageModelImageDoublePoint_mSecondColor : class {
  var mSecondColor : NSColor { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageModelImageDoublePoint_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageModelImageDoublePoint_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: PackageModelImageDoublePoint
//----------------------------------------------------------------------------------------------------------------------

class PackageModelImageDoublePoint : EBGraphicManagedObject,
         PackageModelImageDoublePoint_mFirstX,
         PackageModelImageDoublePoint_mFirstY,
         PackageModelImageDoublePoint_mFirstColor,
         PackageModelImageDoublePoint_mSecondDx,
         PackageModelImageDoublePoint_mSecondDy,
         PackageModelImageDoublePoint_mSecondColor,
         PackageModelImageDoublePoint_objectDisplay,
         PackageModelImageDoublePoint_selectionDisplay {

  //····················································································································
  //   Atomic property: mFirstX
  //····················································································································

  // final let mFirstX_property = EBStoredProperty_Int (defaultValue: 457200)

  final let mFirstX_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mFirstX_toDefaultValue () {
    self.mFirstX = 457200
  }

  //····················································································································

  final var mFirstX : Int {
    get { return self.mFirstX_property.propval }
    set { self.mFirstX_property.setProp (newValue) }
  }

  //····················································································································

  final var mFirstX_property_selection : EBSelection <Int> { return self.mFirstX_property.prop }

  //····················································································································
  //   Atomic property: mFirstY
  //····················································································································

  // final let mFirstY_property = EBStoredProperty_Int (defaultValue: 457200)

  final let mFirstY_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mFirstY_toDefaultValue () {
    self.mFirstY = 457200
  }

  //····················································································································

  final var mFirstY : Int {
    get { return self.mFirstY_property.propval }
    set { self.mFirstY_property.setProp (newValue) }
  }

  //····················································································································

  final var mFirstY_property_selection : EBSelection <Int> { return self.mFirstY_property.prop }

  //····················································································································
  //   Atomic property: mFirstColor
  //····················································································································

  // final let mFirstColor_property = EBStoredProperty_NSColor (defaultValue: NSColor.green)

  final let mFirstColor_property : EBStoredProperty_NSColor

  //····················································································································

  final func reset_mFirstColor_toDefaultValue () {
    self.mFirstColor = NSColor.green
  }

  //····················································································································

  final var mFirstColor : NSColor {
    get { return self.mFirstColor_property.propval }
    set { self.mFirstColor_property.setProp (newValue) }
  }

  //····················································································································

  final var mFirstColor_property_selection : EBSelection <NSColor> { return self.mFirstColor_property.prop }

  //····················································································································
  //   Atomic property: mSecondDx
  //····················································································································

  // final let mSecondDx_property = EBStoredProperty_Int (defaultValue: 457200)

  final let mSecondDx_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mSecondDx_toDefaultValue () {
    self.mSecondDx = 457200
  }

  //····················································································································

  final var mSecondDx : Int {
    get { return self.mSecondDx_property.propval }
    set { self.mSecondDx_property.setProp (newValue) }
  }

  //····················································································································

  final var mSecondDx_property_selection : EBSelection <Int> { return self.mSecondDx_property.prop }

  //····················································································································
  //   Atomic property: mSecondDy
  //····················································································································

  // final let mSecondDy_property = EBStoredProperty_Int (defaultValue: 457200)

  final let mSecondDy_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mSecondDy_toDefaultValue () {
    self.mSecondDy = 457200
  }

  //····················································································································

  final var mSecondDy : Int {
    get { return self.mSecondDy_property.propval }
    set { self.mSecondDy_property.setProp (newValue) }
  }

  //····················································································································

  final var mSecondDy_property_selection : EBSelection <Int> { return self.mSecondDy_property.prop }

  //····················································································································
  //   Atomic property: mSecondColor
  //····················································································································

  // final let mSecondColor_property = EBStoredProperty_NSColor (defaultValue: NSColor.brown)

  final let mSecondColor_property : EBStoredProperty_NSColor

  //····················································································································

  final func reset_mSecondColor_toDefaultValue () {
    self.mSecondColor = NSColor.brown
  }

  //····················································································································

  final var mSecondColor : NSColor {
    get { return self.mSecondColor_property.propval }
    set { self.mSecondColor_property.setProp (newValue) }
  }

  //····················································································································

  final var mSecondColor_property_selection : EBSelection <NSColor> { return self.mSecondColor_property.prop }

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

  final var mRoot_none : StoredObject_PackageRoot { return self.mRoot_property }

  //····················································································································

  final var mRoot_none_selection : EBSelection <Bool> {
    return .single (self.mRoot_property.propval == nil)
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    self.mFirstX_property = EBStoredProperty_Int (defaultValue: 457200, undoManager: ebUndoManager)
    self.mFirstY_property = EBStoredProperty_Int (defaultValue: 457200, undoManager: ebUndoManager)
    self.mFirstColor_property = EBStoredProperty_NSColor (defaultValue: NSColor.green, undoManager: ebUndoManager)
    self.mSecondDx_property = EBStoredProperty_Int (defaultValue: 457200, undoManager: ebUndoManager)
    self.mSecondDy_property = EBStoredProperty_Int (defaultValue: 457200, undoManager: ebUndoManager)
    self.mSecondColor_property = EBStoredProperty_NSColor (defaultValue: NSColor.brown, undoManager: ebUndoManager)
    super.init (ebUndoManager)
    self.configureObject ()
  }
  
  //····················································································································

  private final func configureObject () {
  //--- To one property: mRoot (has opposite to many relationship: mModelImageObjects)
    self.mRoot_property.ebUndoManager = self.ebUndoManager
    self.mRoot_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mModelImageObjects_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mModelImageObjects_property.remove (me) } }
    )
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mFirstX_property_selection.kind ()
        kind &= unwSelf.mFirstY_property_selection.kind ()
        kind &= unwSelf.mFirstColor_property_selection.kind ()
        kind &= unwSelf.mSecondDx_property_selection.kind ()
        kind &= unwSelf.mSecondDy_property_selection.kind ()
        kind &= unwSelf.mSecondColor_property_selection.kind ()
        kind &= unwSelf.mRoot_property.mModelPointsCircleRadius_property_selection.kind ()
        kind &= unwSelf.mRoot_property.mPointsAreLocked_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mFirstX_property_selection, unwSelf.mFirstY_property_selection, unwSelf.mFirstColor_property_selection, unwSelf.mSecondDx_property_selection, unwSelf.mSecondDy_property_selection, unwSelf.mSecondColor_property_selection, unwSelf.mRoot_property.mModelPointsCircleRadius_property_selection, unwSelf.mRoot_property.mPointsAreLocked_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7)) :
            return .single (transient_PackageModelImageDoublePoint_objectDisplay (v0, v1, v2, v3, v4, v5, v6, v7))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mFirstX_property.addEBObserver (self.objectDisplay_property)
    self.mFirstY_property.addEBObserver (self.objectDisplay_property)
    self.mFirstColor_property.addEBObserver (self.objectDisplay_property)
    self.mSecondDx_property.addEBObserver (self.objectDisplay_property)
    self.mSecondDy_property.addEBObserver (self.objectDisplay_property)
    self.mSecondColor_property.addEBObserver (self.objectDisplay_property)
    self.mRoot_property.addEBObserverOf_mModelPointsCircleRadius (self.objectDisplay_property)
    self.mRoot_property.addEBObserverOf_mPointsAreLocked (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mFirstX_property_selection.kind ()
        kind &= unwSelf.mFirstY_property_selection.kind ()
        kind &= unwSelf.mSecondDx_property_selection.kind ()
        kind &= unwSelf.mSecondDy_property_selection.kind ()
        kind &= unwSelf.mRoot_property.mModelPointsCircleRadius_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mFirstX_property_selection, unwSelf.mFirstY_property_selection, unwSelf.mSecondDx_property_selection, unwSelf.mSecondDy_property_selection, unwSelf.mRoot_property.mModelPointsCircleRadius_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_PackageModelImageDoublePoint_selectionDisplay (v0, v1, v2, v3, v4))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mFirstX_property.addEBObserver (self.selectionDisplay_property)
    self.mFirstY_property.addEBObserver (self.selectionDisplay_property)
    self.mSecondDx_property.addEBObserver (self.selectionDisplay_property)
    self.mSecondDy_property.addEBObserver (self.selectionDisplay_property)
    self.mRoot_property.addEBObserverOf_mModelPointsCircleRadius (self.selectionDisplay_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mFirstX_property.removeEBObserver (self.objectDisplay_property)
    self.mFirstY_property.removeEBObserver (self.objectDisplay_property)
    self.mFirstColor_property.removeEBObserver (self.objectDisplay_property)
    self.mSecondDx_property.removeEBObserver (self.objectDisplay_property)
    self.mSecondDy_property.removeEBObserver (self.objectDisplay_property)
    self.mSecondColor_property.removeEBObserver (self.objectDisplay_property)
    self.mRoot_property.removeEBObserverOf_mModelPointsCircleRadius (self.objectDisplay_property)
    self.mRoot_property.removeEBObserverOf_mPointsAreLocked (self.objectDisplay_property)
    self.mFirstX_property.removeEBObserver (self.selectionDisplay_property)
    self.mFirstY_property.removeEBObserver (self.selectionDisplay_property)
    self.mSecondDx_property.removeEBObserver (self.selectionDisplay_property)
    self.mSecondDy_property.removeEBObserver (self.selectionDisplay_property)
    self.mRoot_property.removeEBObserverOf_mModelPointsCircleRadius (self.selectionDisplay_property)
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
      "mFirstX",
      idx: self.mFirstX_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mFirstX_property.mObserverExplorer,
      valueExplorer: &self.mFirstX_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mFirstY",
      idx: self.mFirstY_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mFirstY_property.mObserverExplorer,
      valueExplorer: &self.mFirstY_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mFirstColor",
      idx: self.mFirstColor_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mFirstColor_property.mObserverExplorer,
      valueExplorer: &self.mFirstColor_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mSecondDx",
      idx: self.mSecondDx_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mSecondDx_property.mObserverExplorer,
      valueExplorer: &self.mSecondDx_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mSecondDy",
      idx: self.mSecondDy_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mSecondDy_property.mObserverExplorer,
      valueExplorer: &self.mSecondDy_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mSecondColor",
      idx: self.mSecondColor_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mSecondColor_property.mObserverExplorer,
      valueExplorer: &self.mSecondColor_property.mValueExplorer
    )
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
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mFirstX
    self.mFirstX_property.mObserverExplorer = nil
    self.mFirstX_property.mValueExplorer = nil
  //--- Atomic property: mFirstY
    self.mFirstY_property.mObserverExplorer = nil
    self.mFirstY_property.mValueExplorer = nil
  //--- Atomic property: mFirstColor
    self.mFirstColor_property.mObserverExplorer = nil
    self.mFirstColor_property.mValueExplorer = nil
  //--- Atomic property: mSecondDx
    self.mSecondDx_property.mObserverExplorer = nil
    self.mSecondDx_property.mValueExplorer = nil
  //--- Atomic property: mSecondDy
    self.mSecondDy_property.mObserverExplorer = nil
    self.mSecondDy_property.mValueExplorer = nil
  //--- Atomic property: mSecondColor
    self.mSecondColor_property.mObserverExplorer = nil
    self.mSecondColor_property.mValueExplorer = nil
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
  //--- Atomic property: mFirstX
    self.mFirstX_property.storeIn (dictionary: ioDictionary, forKey: "mFirstX")
  //--- Atomic property: mFirstY
    self.mFirstY_property.storeIn (dictionary: ioDictionary, forKey: "mFirstY")
  //--- Atomic property: mFirstColor
    self.mFirstColor_property.storeIn (dictionary: ioDictionary, forKey: "mFirstColor")
  //--- Atomic property: mSecondDx
    self.mSecondDx_property.storeIn (dictionary: ioDictionary, forKey: "mSecondDx")
  //--- Atomic property: mSecondDy
    self.mSecondDy_property.storeIn (dictionary: ioDictionary, forKey: "mSecondDy")
  //--- Atomic property: mSecondColor
    self.mSecondColor_property.storeIn (dictionary: ioDictionary, forKey: "mSecondColor")
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
  //--- Atomic property: mFirstX
    self.mFirstX_property.readFrom (dictionary: inDictionary, forKey: "mFirstX")
  //--- Atomic property: mFirstY
    self.mFirstY_property.readFrom (dictionary: inDictionary, forKey: "mFirstY")
  //--- Atomic property: mFirstColor
    self.mFirstColor_property.readFrom (dictionary: inDictionary, forKey: "mFirstColor")
  //--- Atomic property: mSecondDx
    self.mSecondDx_property.readFrom (dictionary: inDictionary, forKey: "mSecondDx")
  //--- Atomic property: mSecondDy
    self.mSecondDy_property.readFrom (dictionary: inDictionary, forKey: "mSecondDy")
  //--- Atomic property: mSecondColor
    self.mSecondColor_property.readFrom (dictionary: inDictionary, forKey: "mSecondColor")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mFirstX\n"
    ioString += "mFirstY\n"
    ioString += "mFirstColor\n"
    ioString += "mSecondDx\n"
    ioString += "mSecondDy\n"
    ioString += "mSecondColor\n"
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
    self.mFirstX.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mFirstY.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mFirstColor.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mSecondDx.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mSecondDy.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mSecondColor.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
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
    inParallelObjectSetupContext.mOperationQueue.addOperation {
    //--- Atomic properties
      if let range = inDictionary ["mFirstX"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mFirstX = value
      }
      if let range = inDictionary ["mFirstY"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mFirstY = value
      }
      if let range = inDictionary ["mFirstColor"], let value = NSColor.unarchiveFromDataRange (inData, range) {
        self.mFirstColor = value
      }
      if let range = inDictionary ["mSecondDx"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mSecondDx = value
      }
      if let range = inDictionary ["mSecondDy"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mSecondDy = value
      }
      if let range = inDictionary ["mSecondColor"], let value = NSColor.unarchiveFromDataRange (inData, range) {
        self.mSecondColor = value
      }
    //--- To one relationships
      if let range = inDictionary ["mRoot"], let objectIndex = inData.base62EncodedInt (range: range) {
        inParallelObjectSetupContext.mMutex.wait ()
        inParallelObjectSetupContext.mToOneSetUpOperationList.append ({ self.mRoot = inObjectArray [objectIndex] as? PackageRoot })
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


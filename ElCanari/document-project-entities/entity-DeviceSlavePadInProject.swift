//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSlavePadInProject_mCenterX : class {
  var mCenterX : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSlavePadInProject_mCenterY : class {
  var mCenterY : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSlavePadInProject_mWidth : class {
  var mWidth : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSlavePadInProject_mHeight : class {
  var mHeight : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSlavePadInProject_mHoleWidth : class {
  var mHoleWidth : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSlavePadInProject_mHoleHeight : class {
  var mHoleHeight : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSlavePadInProject_mShape : class {
  var mShape : PadShape { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSlavePadInProject_mStyle : class {
  var mStyle : SlavePadStyle { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSlavePadInProject_descriptor : class {
  var descriptor : SlavePadDescriptor? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: DeviceSlavePadInProject
//----------------------------------------------------------------------------------------------------------------------

class DeviceSlavePadInProject : EBManagedObject,
         DeviceSlavePadInProject_mCenterX,
         DeviceSlavePadInProject_mCenterY,
         DeviceSlavePadInProject_mWidth,
         DeviceSlavePadInProject_mHeight,
         DeviceSlavePadInProject_mHoleWidth,
         DeviceSlavePadInProject_mHoleHeight,
         DeviceSlavePadInProject_mShape,
         DeviceSlavePadInProject_mStyle,
         DeviceSlavePadInProject_descriptor {

  //····················································································································
  //   Atomic property: mCenterX
  //····················································································································

  final let mCenterX_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mCenterX_toDefaultValue () {
    self.mCenterX = 0
  }

  //····················································································································

  final var mCenterX : Int {
    get { return self.mCenterX_property.propval }
    set { self.mCenterX_property.setProp (newValue) }
  }

  //····················································································································

  final var mCenterX_property_selection : EBSelection <Int> { return self.mCenterX_property.selection }

  //····················································································································
  //   Atomic property: mCenterY
  //····················································································································

  final let mCenterY_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mCenterY_toDefaultValue () {
    self.mCenterY = 0
  }

  //····················································································································

  final var mCenterY : Int {
    get { return self.mCenterY_property.propval }
    set { self.mCenterY_property.setProp (newValue) }
  }

  //····················································································································

  final var mCenterY_property_selection : EBSelection <Int> { return self.mCenterY_property.selection }

  //····················································································································
  //   Atomic property: mWidth
  //····················································································································

  final let mWidth_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mWidth_toDefaultValue () {
    self.mWidth = 114300
  }

  //····················································································································

  final var mWidth : Int {
    get { return self.mWidth_property.propval }
    set { self.mWidth_property.setProp (newValue) }
  }

  //····················································································································

  final var mWidth_property_selection : EBSelection <Int> { return self.mWidth_property.selection }

  //····················································································································
  //   Atomic property: mHeight
  //····················································································································

  final let mHeight_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mHeight_toDefaultValue () {
    self.mHeight = 228600
  }

  //····················································································································

  final var mHeight : Int {
    get { return self.mHeight_property.propval }
    set { self.mHeight_property.setProp (newValue) }
  }

  //····················································································································

  final var mHeight_property_selection : EBSelection <Int> { return self.mHeight_property.selection }

  //····················································································································
  //   Atomic property: mHoleWidth
  //····················································································································

  final let mHoleWidth_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mHoleWidth_toDefaultValue () {
    self.mHoleWidth = 57150
  }

  //····················································································································

  final var mHoleWidth : Int {
    get { return self.mHoleWidth_property.propval }
    set { self.mHoleWidth_property.setProp (newValue) }
  }

  //····················································································································

  final var mHoleWidth_property_selection : EBSelection <Int> { return self.mHoleWidth_property.selection }

  //····················································································································
  //   Atomic property: mHoleHeight
  //····················································································································

  final let mHoleHeight_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mHoleHeight_toDefaultValue () {
    self.mHoleHeight = 57150
  }

  //····················································································································

  final var mHoleHeight : Int {
    get { return self.mHoleHeight_property.propval }
    set { self.mHoleHeight_property.setProp (newValue) }
  }

  //····················································································································

  final var mHoleHeight_property_selection : EBSelection <Int> { return self.mHoleHeight_property.selection }

  //····················································································································
  //   Atomic property: mShape
  //····················································································································

  final let mShape_property : EBStoredProperty_PadShape

  //····················································································································

  final func reset_mShape_toDefaultValue () {
    self.mShape = PadShape.octo
  }

  //····················································································································

  final var mShape : PadShape {
    get { return self.mShape_property.propval }
    set { self.mShape_property.setProp (newValue) }
  }

  //····················································································································

  final var mShape_property_selection : EBSelection <PadShape> { return self.mShape_property.selection }

  //····················································································································
  //   Atomic property: mStyle
  //····················································································································

  final let mStyle_property : EBStoredProperty_SlavePadStyle

  //····················································································································

  final func reset_mStyle_toDefaultValue () {
    self.mStyle = SlavePadStyle.traversing
  }

  //····················································································································

  final var mStyle : SlavePadStyle {
    get { return self.mStyle_property.propval }
    set { self.mStyle_property.setProp (newValue) }
  }

  //····················································································································

  final var mStyle_property_selection : EBSelection <SlavePadStyle> { return self.mStyle_property.selection }

  //····················································································································
  //   Transient property: descriptor
  //····················································································································

  final let descriptor_property = EBTransientProperty_SlavePadDescriptor ()

  //····················································································································

  final var descriptor_property_selection : EBSelection <SlavePadDescriptor> {
    return self.descriptor_property.selection
  }

  //····················································································································

  final var descriptor : SlavePadDescriptor? {
    switch self.descriptor_property_selection {
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
    self.mCenterX_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.mCenterY_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.mWidth_property = EBStoredProperty_Int (defaultValue: 114300, undoManager: ebUndoManager)
    self.mHeight_property = EBStoredProperty_Int (defaultValue: 228600, undoManager: ebUndoManager)
    self.mHoleWidth_property = EBStoredProperty_Int (defaultValue: 57150, undoManager: ebUndoManager)
    self.mHoleHeight_property = EBStoredProperty_Int (defaultValue: 57150, undoManager: ebUndoManager)
    self.mShape_property = EBStoredProperty_PadShape (defaultValue: PadShape.octo, undoManager: ebUndoManager)
    self.mStyle_property = EBStoredProperty_SlavePadStyle (defaultValue: SlavePadStyle.traversing, undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- Atomic property: descriptor
    self.descriptor_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mCenterX_property_selection.kind ()
        kind &= unwSelf.mCenterY_property_selection.kind ()
        kind &= unwSelf.mWidth_property_selection.kind ()
        kind &= unwSelf.mHeight_property_selection.kind ()
        kind &= unwSelf.mHoleWidth_property_selection.kind ()
        kind &= unwSelf.mHoleHeight_property_selection.kind ()
        kind &= unwSelf.mShape_property_selection.kind ()
        kind &= unwSelf.mStyle_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mCenterX_property_selection, unwSelf.mCenterY_property_selection, unwSelf.mWidth_property_selection, unwSelf.mHeight_property_selection, unwSelf.mHoleWidth_property_selection, unwSelf.mHoleHeight_property_selection, unwSelf.mShape_property_selection, unwSelf.mStyle_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7)) :
            return .single (transient_DeviceSlavePadInProject_descriptor (v0, v1, v2, v3, v4, v5, v6, v7))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mCenterX_property.addEBObserver (self.descriptor_property)
    self.mCenterY_property.addEBObserver (self.descriptor_property)
    self.mWidth_property.addEBObserver (self.descriptor_property)
    self.mHeight_property.addEBObserver (self.descriptor_property)
    self.mHoleWidth_property.addEBObserver (self.descriptor_property)
    self.mHoleHeight_property.addEBObserver (self.descriptor_property)
    self.mShape_property.addEBObserver (self.descriptor_property)
    self.mStyle_property.addEBObserver (self.descriptor_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.mCenterX_property.removeEBObserver (self.descriptor_property)
    // self.mCenterY_property.removeEBObserver (self.descriptor_property)
    // self.mWidth_property.removeEBObserver (self.descriptor_property)
    // self.mHeight_property.removeEBObserver (self.descriptor_property)
    // self.mHoleWidth_property.removeEBObserver (self.descriptor_property)
    // self.mHoleHeight_property.removeEBObserver (self.descriptor_property)
    // self.mShape_property.removeEBObserver (self.descriptor_property)
    // self.mStyle_property.removeEBObserver (self.descriptor_property)
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
      "mCenterX",
      idx: self.mCenterX_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mCenterX_property.mObserverExplorer,
      valueExplorer: &self.mCenterX_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mCenterY",
      idx: self.mCenterY_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mCenterY_property.mObserverExplorer,
      valueExplorer: &self.mCenterY_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mWidth",
      idx: self.mWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mWidth_property.mObserverExplorer,
      valueExplorer: &self.mWidth_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mHeight",
      idx: self.mHeight_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mHeight_property.mObserverExplorer,
      valueExplorer: &self.mHeight_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mHoleWidth",
      idx: self.mHoleWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mHoleWidth_property.mObserverExplorer,
      valueExplorer: &self.mHoleWidth_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mHoleHeight",
      idx: self.mHoleHeight_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mHoleHeight_property.mObserverExplorer,
      valueExplorer: &self.mHoleHeight_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mShape",
      idx: self.mShape_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mShape_property.mObserverExplorer,
      valueExplorer: &self.mShape_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mStyle",
      idx: self.mStyle_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mStyle_property.mObserverExplorer,
      valueExplorer: &self.mStyle_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "descriptor",
      idx: self.descriptor_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.descriptor_property.mObserverExplorer,
      valueExplorer: &self.descriptor_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mCenterX
    self.mCenterX_property.mObserverExplorer = nil
    self.mCenterX_property.mValueExplorer = nil
  //--- Atomic property: mCenterY
    self.mCenterY_property.mObserverExplorer = nil
    self.mCenterY_property.mValueExplorer = nil
  //--- Atomic property: mWidth
    self.mWidth_property.mObserverExplorer = nil
    self.mWidth_property.mValueExplorer = nil
  //--- Atomic property: mHeight
    self.mHeight_property.mObserverExplorer = nil
    self.mHeight_property.mValueExplorer = nil
  //--- Atomic property: mHoleWidth
    self.mHoleWidth_property.mObserverExplorer = nil
    self.mHoleWidth_property.mValueExplorer = nil
  //--- Atomic property: mHoleHeight
    self.mHoleHeight_property.mObserverExplorer = nil
    self.mHoleHeight_property.mValueExplorer = nil
  //--- Atomic property: mShape
    self.mShape_property.mObserverExplorer = nil
    self.mShape_property.mValueExplorer = nil
  //--- Atomic property: mStyle
    self.mStyle_property.mObserverExplorer = nil
    self.mStyle_property.mValueExplorer = nil
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
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: mCenterX
    self.mCenterX_property.storeIn (dictionary: ioDictionary, forKey: "mCenterX")
  //--- Atomic property: mCenterY
    self.mCenterY_property.storeIn (dictionary: ioDictionary, forKey: "mCenterY")
  //--- Atomic property: mWidth
    self.mWidth_property.storeIn (dictionary: ioDictionary, forKey: "mWidth")
  //--- Atomic property: mHeight
    self.mHeight_property.storeIn (dictionary: ioDictionary, forKey: "mHeight")
  //--- Atomic property: mHoleWidth
    self.mHoleWidth_property.storeIn (dictionary: ioDictionary, forKey: "mHoleWidth")
  //--- Atomic property: mHoleHeight
    self.mHoleHeight_property.storeIn (dictionary: ioDictionary, forKey: "mHoleHeight")
  //--- Atomic property: mShape
    self.mShape_property.storeIn (dictionary: ioDictionary, forKey: "mShape")
  //--- Atomic property: mStyle
    self.mStyle_property.storeIn (dictionary: ioDictionary, forKey: "mStyle")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mCenterX
    self.mCenterX_property.readFrom (dictionary: inDictionary, forKey: "mCenterX")
  //--- Atomic property: mCenterY
    self.mCenterY_property.readFrom (dictionary: inDictionary, forKey: "mCenterY")
  //--- Atomic property: mWidth
    self.mWidth_property.readFrom (dictionary: inDictionary, forKey: "mWidth")
  //--- Atomic property: mHeight
    self.mHeight_property.readFrom (dictionary: inDictionary, forKey: "mHeight")
  //--- Atomic property: mHoleWidth
    self.mHoleWidth_property.readFrom (dictionary: inDictionary, forKey: "mHoleWidth")
  //--- Atomic property: mHoleHeight
    self.mHoleHeight_property.readFrom (dictionary: inDictionary, forKey: "mHoleHeight")
  //--- Atomic property: mShape
    self.mShape_property.readFrom (dictionary: inDictionary, forKey: "mShape")
  //--- Atomic property: mStyle
    self.mStyle_property.readFrom (dictionary: inDictionary, forKey: "mStyle")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mCenterX\n"
    ioString += "mCenterY\n"
    ioString += "mWidth\n"
    ioString += "mHeight\n"
    ioString += "mHoleWidth\n"
    ioString += "mHoleHeight\n"
    ioString += "mShape\n"
    ioString += "mStyle\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mCenterX.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mCenterY.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mWidth.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mHeight.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mHoleWidth.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mHoleHeight.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mShape.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mStyle.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
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
      if let range = inDictionary ["mCenterX"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mCenterX = value
      }
      if let range = inDictionary ["mCenterY"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mCenterY = value
      }
      if let range = inDictionary ["mWidth"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mWidth = value
      }
      if let range = inDictionary ["mHeight"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mHeight = value
      }
      if let range = inDictionary ["mHoleWidth"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mHoleWidth = value
      }
      if let range = inDictionary ["mHoleHeight"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mHoleHeight = value
      }
      if let range = inDictionary ["mShape"], let value = PadShape.unarchiveFromDataRange (inData, range) {
        self.mShape = value
      }
      if let range = inDictionary ["mStyle"], let value = SlavePadStyle.unarchiveFromDataRange (inData, range) {
        self.mStyle = value
      }
    //--- To one relationships
    //--- To many relationships
    }
  //--- End of addOperation
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


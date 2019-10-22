//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceMasterPadInProject_mCenterX : class {
  var mCenterX : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceMasterPadInProject_mCenterY : class {
  var mCenterY : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceMasterPadInProject_mWidth : class {
  var mWidth : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceMasterPadInProject_mHeight : class {
  var mHeight : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceMasterPadInProject_mHoleWidth : class {
  var mHoleWidth : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceMasterPadInProject_mHoleHeight : class {
  var mHoleHeight : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceMasterPadInProject_mShape : class {
  var mShape : PadShape { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceMasterPadInProject_mStyle : class {
  var mStyle : PadStyle { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceMasterPadInProject_mName : class {
  var mName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceMasterPadInProject_descriptor : class {
  var descriptor : MasterPadDescriptor? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: DeviceMasterPadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class DeviceMasterPadInProject : EBManagedObject,
         DeviceMasterPadInProject_mCenterX,
         DeviceMasterPadInProject_mCenterY,
         DeviceMasterPadInProject_mWidth,
         DeviceMasterPadInProject_mHeight,
         DeviceMasterPadInProject_mHoleWidth,
         DeviceMasterPadInProject_mHoleHeight,
         DeviceMasterPadInProject_mShape,
         DeviceMasterPadInProject_mStyle,
         DeviceMasterPadInProject_mName,
         DeviceMasterPadInProject_descriptor {

  //····················································································································
  //   Atomic property: mCenterX
  //····················································································································

  let mCenterX_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mCenterX : Int {
    get { return self.mCenterX_property.propval }
    set { self.mCenterX_property.setProp (newValue) }
  }

  //····················································································································

  var mCenterX_property_selection : EBSelection <Int> { return self.mCenterX_property.prop }

  //····················································································································
  //   Atomic property: mCenterY
  //····················································································································

  let mCenterY_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mCenterY : Int {
    get { return self.mCenterY_property.propval }
    set { self.mCenterY_property.setProp (newValue) }
  }

  //····················································································································

  var mCenterY_property_selection : EBSelection <Int> { return self.mCenterY_property.prop }

  //····················································································································
  //   Atomic property: mWidth
  //····················································································································

  let mWidth_property = EBStoredProperty_Int (defaultValue: 114300)

  //····················································································································

  var mWidth : Int {
    get { return self.mWidth_property.propval }
    set { self.mWidth_property.setProp (newValue) }
  }

  //····················································································································

  var mWidth_property_selection : EBSelection <Int> { return self.mWidth_property.prop }

  //····················································································································
  //   Atomic property: mHeight
  //····················································································································

  let mHeight_property = EBStoredProperty_Int (defaultValue: 228600)

  //····················································································································

  var mHeight : Int {
    get { return self.mHeight_property.propval }
    set { self.mHeight_property.setProp (newValue) }
  }

  //····················································································································

  var mHeight_property_selection : EBSelection <Int> { return self.mHeight_property.prop }

  //····················································································································
  //   Atomic property: mHoleWidth
  //····················································································································

  let mHoleWidth_property = EBStoredProperty_Int (defaultValue: 57150)

  //····················································································································

  var mHoleWidth : Int {
    get { return self.mHoleWidth_property.propval }
    set { self.mHoleWidth_property.setProp (newValue) }
  }

  //····················································································································

  var mHoleWidth_property_selection : EBSelection <Int> { return self.mHoleWidth_property.prop }

  //····················································································································
  //   Atomic property: mHoleHeight
  //····················································································································

  let mHoleHeight_property = EBStoredProperty_Int (defaultValue: 57150)

  //····················································································································

  var mHoleHeight : Int {
    get { return self.mHoleHeight_property.propval }
    set { self.mHoleHeight_property.setProp (newValue) }
  }

  //····················································································································

  var mHoleHeight_property_selection : EBSelection <Int> { return self.mHoleHeight_property.prop }

  //····················································································································
  //   Atomic property: mShape
  //····················································································································

  let mShape_property = EBStoredProperty_PadShape (defaultValue: PadShape.octo)

  //····················································································································

  var mShape : PadShape {
    get { return self.mShape_property.propval }
    set { self.mShape_property.setProp (newValue) }
  }

  //····················································································································

  var mShape_property_selection : EBSelection <PadShape> { return self.mShape_property.prop }

  //····················································································································
  //   Atomic property: mStyle
  //····················································································································

  let mStyle_property = EBStoredProperty_PadStyle (defaultValue: PadStyle.traversing)

  //····················································································································

  var mStyle : PadStyle {
    get { return self.mStyle_property.propval }
    set { self.mStyle_property.setProp (newValue) }
  }

  //····················································································································

  var mStyle_property_selection : EBSelection <PadStyle> { return self.mStyle_property.prop }

  //····················································································································
  //   Atomic property: mName
  //····················································································································

  let mName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mName : String {
    get { return self.mName_property.propval }
    set { self.mName_property.setProp (newValue) }
  }

  //····················································································································

  var mName_property_selection : EBSelection <String> { return self.mName_property.prop }

  //····················································································································
  //   To many property: mSlavePads
  //····················································································································

  let mSlavePads_property = StoredArrayOf_DeviceSlavePadInProject (usedForSignature: false)

  //····················································································································

  var mSlavePads_property_selection : EBSelection < [DeviceSlavePadInProject] > {
    return self.mSlavePads_property.prop
  }

  //····················································································································

  var mSlavePads : [DeviceSlavePadInProject] {
    get { return self.mSlavePads_property.propval }
    set { self.mSlavePads_property.setProp (newValue) }
  }

  //····················································································································
  //   Transient property: descriptor
  //····················································································································

  let descriptor_property = EBTransientProperty_MasterPadDescriptor ()

  //····················································································································

  var descriptor_property_selection : EBSelection <MasterPadDescriptor> {
    return self.descriptor_property.prop
  }

  //····················································································································

  var descriptor : MasterPadDescriptor? {
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
    super.init (ebUndoManager)
    self.configureObject ()
  }
  
  //····················································································································

  private final func configureObject () {
  //--- Atomic property: mCenterX
    self.mCenterX_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mCenterY
    self.mCenterY_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mWidth
    self.mWidth_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mHeight
    self.mHeight_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mHoleWidth
    self.mHoleWidth_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mHoleHeight
    self.mHoleHeight_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mShape
    self.mShape_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mStyle
    self.mStyle_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mName
    self.mName_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mSlavePads (no option)
    self.mSlavePads_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: descriptor
    self.descriptor_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mName_property_selection.kind ()
        kind &= unwSelf.mCenterX_property_selection.kind ()
        kind &= unwSelf.mCenterY_property_selection.kind ()
        kind &= unwSelf.mWidth_property_selection.kind ()
        kind &= unwSelf.mHeight_property_selection.kind ()
        kind &= unwSelf.mHoleWidth_property_selection.kind ()
        kind &= unwSelf.mHoleHeight_property_selection.kind ()
        kind &= unwSelf.mShape_property_selection.kind ()
        kind &= unwSelf.mStyle_property_selection.kind ()
        kind &= unwSelf.mSlavePads_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mName_property_selection, unwSelf.mCenterX_property_selection, unwSelf.mCenterY_property_selection, unwSelf.mWidth_property_selection, unwSelf.mHeight_property_selection, unwSelf.mHoleWidth_property_selection, unwSelf.mHoleHeight_property_selection, unwSelf.mShape_property_selection, unwSelf.mStyle_property_selection, unwSelf.mSlavePads_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7), .single (let v8), .single (let v9)) :
            return .single (transient_DeviceMasterPadInProject_descriptor (v0, v1, v2, v3, v4, v5, v6, v7, v8, v9))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mName_property.addEBObserver (self.descriptor_property)
    self.mCenterX_property.addEBObserver (self.descriptor_property)
    self.mCenterY_property.addEBObserver (self.descriptor_property)
    self.mWidth_property.addEBObserver (self.descriptor_property)
    self.mHeight_property.addEBObserver (self.descriptor_property)
    self.mHoleWidth_property.addEBObserver (self.descriptor_property)
    self.mHoleHeight_property.addEBObserver (self.descriptor_property)
    self.mShape_property.addEBObserver (self.descriptor_property)
    self.mStyle_property.addEBObserver (self.descriptor_property)
    self.mSlavePads_property.addEBObserverOf_descriptor (self.descriptor_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mName_property.removeEBObserver (self.descriptor_property)
    self.mCenterX_property.removeEBObserver (self.descriptor_property)
    self.mCenterY_property.removeEBObserver (self.descriptor_property)
    self.mWidth_property.removeEBObserver (self.descriptor_property)
    self.mHeight_property.removeEBObserver (self.descriptor_property)
    self.mHoleWidth_property.removeEBObserver (self.descriptor_property)
    self.mHoleHeight_property.removeEBObserver (self.descriptor_property)
    self.mShape_property.removeEBObserver (self.descriptor_property)
    self.mStyle_property.removeEBObserver (self.descriptor_property)
    self.mSlavePads_property.removeEBObserverOf_descriptor (self.descriptor_property)
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
    createEntryForPropertyNamed (
      "mName",
      idx: self.mName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mName_property.mObserverExplorer,
      valueExplorer: &self.mName_property.mValueExplorer
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
    createEntryForToManyRelationshipNamed (
      "mSlavePads",
      idx:mSlavePads_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mSlavePads_property.mValueExplorer
    )
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
  //--- Atomic property: mName
    self.mName_property.mObserverExplorer = nil
    self.mName_property.mValueExplorer = nil
  //--- To many property: mSlavePads
    self.mSlavePads_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mSlavePads = []
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
    self.mCenterX_property.storeIn (dictionary: ioDictionary, forKey:"mCenterX")
  //--- Atomic property: mCenterY
    self.mCenterY_property.storeIn (dictionary: ioDictionary, forKey:"mCenterY")
  //--- Atomic property: mWidth
    self.mWidth_property.storeIn (dictionary: ioDictionary, forKey:"mWidth")
  //--- Atomic property: mHeight
    self.mHeight_property.storeIn (dictionary: ioDictionary, forKey:"mHeight")
  //--- Atomic property: mHoleWidth
    self.mHoleWidth_property.storeIn (dictionary: ioDictionary, forKey:"mHoleWidth")
  //--- Atomic property: mHoleHeight
    self.mHoleHeight_property.storeIn (dictionary: ioDictionary, forKey:"mHoleHeight")
  //--- Atomic property: mShape
    self.mShape_property.storeIn (dictionary: ioDictionary, forKey:"mShape")
  //--- Atomic property: mStyle
    self.mStyle_property.storeIn (dictionary: ioDictionary, forKey:"mStyle")
  //--- Atomic property: mName
    self.mName_property.storeIn (dictionary: ioDictionary, forKey:"mName")
  //--- To many property: mSlavePads
    self.store (
      managedObjectArray: self.mSlavePads_property.propval,
      relationshipName: "mSlavePads",
      intoDictionary: ioDictionary
    )
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: mSlavePads
    self.mSlavePads_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mSlavePads",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [DeviceSlavePadInProject])
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mCenterX
    self.mCenterX_property.readFrom (dictionary: inDictionary, forKey:"mCenterX")
  //--- Atomic property: mCenterY
    self.mCenterY_property.readFrom (dictionary: inDictionary, forKey:"mCenterY")
  //--- Atomic property: mWidth
    self.mWidth_property.readFrom (dictionary: inDictionary, forKey:"mWidth")
  //--- Atomic property: mHeight
    self.mHeight_property.readFrom (dictionary: inDictionary, forKey:"mHeight")
  //--- Atomic property: mHoleWidth
    self.mHoleWidth_property.readFrom (dictionary: inDictionary, forKey:"mHoleWidth")
  //--- Atomic property: mHoleHeight
    self.mHoleHeight_property.readFrom (dictionary: inDictionary, forKey:"mHoleHeight")
  //--- Atomic property: mShape
    self.mShape_property.readFrom (dictionary: inDictionary, forKey:"mShape")
  //--- Atomic property: mStyle
    self.mStyle_property.readFrom (dictionary: inDictionary, forKey:"mStyle")
  //--- Atomic property: mName
    self.mName_property.readFrom (dictionary: inDictionary, forKey:"mName")
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
    ioString += "mName\n"
  //--- To one relationships
  //--- To many relationships
    ioString += "mSlavePads\n"
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioString : inout String) {
    super.appendPropertyValuesTo (&ioString)
  //--- Atomic properties
    ioString += self.mCenterX.stringPropertyValue ()
    ioString += self.mCenterY.stringPropertyValue ()
    ioString += self.mWidth.stringPropertyValue ()
    ioString += self.mHeight.stringPropertyValue ()
    ioString += self.mHoleWidth.stringPropertyValue ()
    ioString += self.mHoleHeight.stringPropertyValue ()
    ioString += self.mShape.stringPropertyValue ()
    ioString += self.mStyle.stringPropertyValue ()
    ioString += self.mName.stringPropertyValue ()
  //--- To one relationships
  //--- To many relationships
    do{
      var optionalFirstIndex : Int? = nil
      var rangeCount = 0
      for object in self.mSlavePads {
        if let firstIndex = optionalFirstIndex {
          if object.savingIndex == (firstIndex + 1) {
            rangeCount += 1
            optionalFirstIndex = object.savingIndex
          }else if rangeCount > 0 {
            ioString += ":\(rangeCount.baseXXEncodedString ()) \(object.savingIndex.baseXXEncodedString ())"
            rangeCount = 0
            optionalFirstIndex = object.savingIndex
          }else{
            ioString += " \(object.savingIndex.baseXXEncodedString ())"
            optionalFirstIndex = object.savingIndex
          }
        }else{
          ioString += "\(object.savingIndex.baseXXEncodedString ())"
          optionalFirstIndex = object.savingIndex
        }
      }
      if optionalFirstIndex != nil, rangeCount > 0 {
        ioString += ":\(rangeCount.baseXXEncodedString ())"
      }
      ioString += "\n"
    }
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: mSlavePads
    for managedObject in self.mSlavePads {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: mSlavePads
    for managedObject in self.mSlavePads {
      objects.append (managedObject)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol DevicePackageInProject_mPackageName : class {
  var mPackageName : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DevicePackageInProject_mStrokeBezierPath : class {
  var mStrokeBezierPath : NSBezierPath { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DevicePackageInProject_packagePadDictionary : class {
  var packagePadDictionary : PackageMasterPadDictionary? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: DevicePackageInProject
//----------------------------------------------------------------------------------------------------------------------

class DevicePackageInProject : EBManagedObject,
         DevicePackageInProject_mPackageName,
         DevicePackageInProject_mStrokeBezierPath,
         DevicePackageInProject_packagePadDictionary {

  //····················································································································
  //   To many property: mMasterPads
  //····················································································································

  final let mMasterPads_property = StoredArrayOf_DeviceMasterPadInProject (usedForSignature: false)

  //····················································································································

  final var mMasterPads_property_selection : EBSelection < [DeviceMasterPadInProject] > {
    return self.mMasterPads_property.selection
  }

  //····················································································································

  final var mMasterPads : [DeviceMasterPadInProject] {
    get { return self.mMasterPads_property.propval }
    set { self.mMasterPads_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: mPackageName
  //····················································································································

  final let mPackageName_property : EBStoredProperty_String

  //····················································································································

  final func reset_mPackageName_toDefaultValue () {
    self.mPackageName = ""
  }

  //····················································································································

  final var mPackageName : String {
    get { return self.mPackageName_property.propval }
    set { self.mPackageName_property.setProp (newValue) }
  }

  //····················································································································

  final var mPackageName_property_selection : EBSelection <String> { return self.mPackageName_property.selection }

  //····················································································································
  //   Atomic property: mStrokeBezierPath
  //····················································································································

  final let mStrokeBezierPath_property : EBStoredProperty_NSBezierPath

  //····················································································································

  final func reset_mStrokeBezierPath_toDefaultValue () {
    self.mStrokeBezierPath = NSBezierPath ()
  }

  //····················································································································

  final var mStrokeBezierPath : NSBezierPath {
    get { return self.mStrokeBezierPath_property.propval }
    set { self.mStrokeBezierPath_property.setProp (newValue) }
  }

  //····················································································································

  final var mStrokeBezierPath_property_selection : EBSelection <NSBezierPath> { return self.mStrokeBezierPath_property.selection }

  //····················································································································
  //   Transient property: packagePadDictionary
  //····················································································································

  final let packagePadDictionary_property = EBTransientProperty_PackageMasterPadDictionary ()

  //····················································································································

  final var packagePadDictionary_property_selection : EBSelection <PackageMasterPadDictionary> {
    return self.packagePadDictionary_property.selection
  }

  //····················································································································

  final var packagePadDictionary : PackageMasterPadDictionary? {
    switch self.packagePadDictionary_property_selection {
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
    self.mPackageName_property = EBStoredProperty_String (defaultValue: "", undoManager: ebUndoManager)
    self.mStrokeBezierPath_property = EBStoredProperty_NSBezierPath (defaultValue: NSBezierPath (), undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- To many property: mMasterPads (no option)
    self.mMasterPads_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: packagePadDictionary
    self.packagePadDictionary_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mMasterPads_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mMasterPads_property_selection) {
          case (.single (let v0)) :
            return .single (transient_DevicePackageInProject_packagePadDictionary (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mMasterPads_property.addEBObserverOf_descriptor (self.packagePadDictionary_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.mMasterPads_property.removeEBObserverOf_descriptor (self.packagePadDictionary_property)
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
      "mPackageName",
      idx: self.mPackageName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPackageName_property.mObserverExplorer,
      valueExplorer: &self.mPackageName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mStrokeBezierPath",
      idx: self.mStrokeBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mStrokeBezierPath_property.mObserverExplorer,
      valueExplorer: &self.mStrokeBezierPath_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "packagePadDictionary",
      idx: self.packagePadDictionary_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.packagePadDictionary_property.mObserverExplorer,
      valueExplorer: &self.packagePadDictionary_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "mMasterPads",
      idx:mMasterPads_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mMasterPads_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- To many property: mMasterPads
    self.mMasterPads_property.mValueExplorer = nil
  //--- Atomic property: mPackageName
    self.mPackageName_property.mObserverExplorer = nil
    self.mPackageName_property.mValueExplorer = nil
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.mObserverExplorer = nil
    self.mStrokeBezierPath_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mMasterPads = []
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
  //--- To many property: mMasterPads
    self.store (
      managedObjectArray: self.mMasterPads_property.propval,
      relationshipName: "mMasterPads",
      intoDictionary: ioDictionary
    )
  //--- Atomic property: mPackageName
    self.mPackageName_property.storeIn (dictionary: ioDictionary, forKey: "mPackageName")
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.storeIn (dictionary: ioDictionary, forKey: "mStrokeBezierPath")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  //--- To many property: mMasterPads
    self.mMasterPads_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mMasterPads",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [DeviceMasterPadInProject])
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mPackageName
    self.mPackageName_property.readFrom (dictionary: inDictionary, forKey: "mPackageName")
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.readFrom (dictionary: inDictionary, forKey: "mStrokeBezierPath")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mPackageName\n"
    ioString += "mStrokeBezierPath\n"
  //--- To one relationships
  //--- To many relationships
    ioString += "mMasterPads\n"
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mPackageName.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mStrokeBezierPath.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
  //--- To many relationships
    do{
      var optionalFirstIndex : Int? = nil
      var rangeCount = 0
      for object in self.mMasterPads {
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
  //    setUpWithTextDictionary
  //····················································································································

  override func setUpWithTextDictionary (_ inDictionary : [String : NSRange],
                                         _ inObjectArray : [EBManagedObject],
                                         _ inData : Data,
                                         _ inParallelObjectSetupContext : ParallelObjectSetupContext) {
    super.setUpWithTextDictionary (inDictionary, inObjectArray, inData, inParallelObjectSetupContext)
    inParallelObjectSetupContext.mOperationQueue.addOperation {
    //--- Atomic properties
      if let range = inDictionary ["mPackageName"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mPackageName = value
      }
      if let range = inDictionary ["mStrokeBezierPath"], let value = NSBezierPath.unarchiveFromDataRange (inData, range) {
        self.mStrokeBezierPath = value
      }
    //--- To one relationships
    //--- To many relationships
      if let range = inDictionary ["mMasterPads"], range.length > 0 {
        var relationshipArray = [DeviceMasterPadInProject] ()
        let indexArray = inData.base62EncodedIntArray (fromRange: range)
        for idx in indexArray {
          relationshipArray.append (inObjectArray [idx] as! DeviceMasterPadInProject)
        }
        inParallelObjectSetupContext.mMutex.wait ()
        inParallelObjectSetupContext.mToManySetUpOperationList.append ({ self.mMasterPads = relationshipArray })
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
  //--- To many property: mMasterPads
    for managedObject in self.mMasterPads {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: mMasterPads
    for managedObject in self.mMasterPads {
      objects.append (managedObject)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


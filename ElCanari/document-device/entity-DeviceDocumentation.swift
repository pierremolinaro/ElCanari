//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceDocumentation_mFileName : class {
  var mFileName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceDocumentation_mFileData : class {
  var mFileData : Data { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceDocumentation_fileSize : class {
  var fileSize : Int? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class DeviceDocumentation : EBManagedObject,
         DeviceDocumentation_mFileName,
         DeviceDocumentation_mFileData,
         DeviceDocumentation_fileSize {

  //····················································································································
  //   Atomic property: mFileName
  //····················································································································

  let mFileName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mFileName : String {
    get { return self.mFileName_property.propval }
    set { self.mFileName_property.setProp (newValue) }
  }

  //····················································································································

  var mFileName_property_selection : EBSelection <String> { return self.mFileName_property.prop }

  //····················································································································
  //   Atomic property: mFileData
  //····················································································································

  let mFileData_property = EBStoredProperty_Data (defaultValue: Data ())

  //····················································································································

  var mFileData : Data {
    get { return self.mFileData_property.propval }
    set { self.mFileData_property.setProp (newValue) }
  }

  //····················································································································

  var mFileData_property_selection : EBSelection <Data> { return self.mFileData_property.prop }

  //····················································································································
  //   Transient property: fileSize
  //····················································································································

  let fileSize_property = EBTransientProperty_Int ()

  //····················································································································

  var fileSize_property_selection : EBSelection <Int> {
    return self.fileSize_property.prop
  }

  //····················································································································

  var fileSize : Int? {
    switch self.fileSize_property_selection {
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
  //--- Atomic property: mFileName
    self.mFileName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mFileData
    self.mFileData_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: fileSize
    self.fileSize_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mFileData_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mFileData_property_selection) {
          case (.single (let v0)) :
            return .single (transient_DeviceDocumentation_fileSize (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mFileData_property.addEBObserver (self.fileSize_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
    self.mFileData_property.setSignatureObserver (observer: self)
    self.mFileName_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mFileData_property.removeEBObserver (self.fileSize_property)
  //--- Unregister properties for handling signature
    self.mFileData_property.setSignatureObserver (observer: nil)
    self.mFileName_property.setSignatureObserver (observer: nil)
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
      "mFileName",
      idx: self.mFileName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mFileName_property.mObserverExplorer,
      valueExplorer: &self.mFileName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mFileData",
      idx: self.mFileData_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mFileData_property.mObserverExplorer,
      valueExplorer: &self.mFileData_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "fileSize",
      idx: self.fileSize_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.fileSize_property.mObserverExplorer,
      valueExplorer: &self.fileSize_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mFileName
    self.mFileName_property.mObserverExplorer = nil
    self.mFileName_property.mValueExplorer = nil
  //--- Atomic property: mFileData
    self.mFileData_property.mObserverExplorer = nil
    self.mFileData_property.mValueExplorer = nil
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
  //--- Atomic property: mFileName
    self.mFileName_property.storeIn (dictionary: ioDictionary, forKey:"mFileName")
  //--- Atomic property: mFileData
    self.mFileData_property.storeIn (dictionary: ioDictionary, forKey:"mFileData")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mFileName
    self.mFileName_property.readFrom (dictionary: inDictionary, forKey:"mFileName")
  //--- Atomic property: mFileData
    self.mFileData_property.readFrom (dictionary: inDictionary, forKey:"mFileData")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mFileName\n"
    ioString += "mFileData\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioString : inout String) {
    super.appendPropertyValuesTo (&ioString)
  //--- Atomic properties
    ioString += self.mFileName.stringPropertyValue ()
    ioString += self.mFileData.stringPropertyValue ()
  //--- To one relationships
  //--- To many relationships
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
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.mFileData_property.signature ())
    crc.accumulateUInt32 (self.mFileName_property.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


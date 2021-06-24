//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSymbolTypeInProject_mSymbolTypeName : AnyObject {
  var mSymbolTypeName : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSymbolTypeInProject_mStrokeBezierPath : AnyObject {
  var mStrokeBezierPath : NSBezierPath { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSymbolTypeInProject_mFilledBezierPath : AnyObject {
  var mFilledBezierPath : NSBezierPath { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

final class DeviceSymbolTypeInProject : EBManagedObject,
         DeviceSymbolTypeInProject_mSymbolTypeName,
         DeviceSymbolTypeInProject_mStrokeBezierPath,
         DeviceSymbolTypeInProject_mFilledBezierPath {

  //····················································································································
  //   Atomic property: mSymbolTypeName
  //····················································································································

  final let mSymbolTypeName_property : EBStoredProperty_String

  //····················································································································

  final func reset_mSymbolTypeName_toDefaultValue () {
    self.mSymbolTypeName = ""
  }

  //····················································································································

  final var mSymbolTypeName : String {
    get { return self.mSymbolTypeName_property.propval }
    set { self.mSymbolTypeName_property.setProp (newValue) }
  }

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
  //   Atomic property: mFilledBezierPath
  //····················································································································

  final let mFilledBezierPath_property : EBStoredProperty_NSBezierPath

  //····················································································································

  final func reset_mFilledBezierPath_toDefaultValue () {
    self.mFilledBezierPath = NSBezierPath ()
  }

  //····················································································································

  final var mFilledBezierPath : NSBezierPath {
    get { return self.mFilledBezierPath_property.propval }
    set { self.mFilledBezierPath_property.setProp (newValue) }
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    self.mSymbolTypeName_property = EBStoredProperty_String (defaultValue: "", undoManager: ebUndoManager)
    self.mStrokeBezierPath_property = EBStoredProperty_NSBezierPath (defaultValue: NSBezierPath (), undoManager: ebUndoManager)
    self.mFilledBezierPath_property = EBStoredProperty_NSBezierPath (defaultValue: NSBezierPath (), undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
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
      "mSymbolTypeName",
      idx: self.mSymbolTypeName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mSymbolTypeName_property.mObserverExplorer,
      valueExplorer: &self.mSymbolTypeName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mStrokeBezierPath",
      idx: self.mStrokeBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mStrokeBezierPath_property.mObserverExplorer,
      valueExplorer: &self.mStrokeBezierPath_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mFilledBezierPath",
      idx: self.mFilledBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mFilledBezierPath_property.mObserverExplorer,
      valueExplorer: &self.mFilledBezierPath_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mSymbolTypeName
    self.mSymbolTypeName_property.mObserverExplorer = nil
    self.mSymbolTypeName_property.mValueExplorer = nil
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.mObserverExplorer = nil
    self.mStrokeBezierPath_property.mValueExplorer = nil
  //--- Atomic property: mFilledBezierPath
    self.mFilledBezierPath_property.mObserverExplorer = nil
    self.mFilledBezierPath_property.mValueExplorer = nil
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
  //--- Atomic property: mSymbolTypeName
    self.mSymbolTypeName_property.storeIn (dictionary: ioDictionary, forKey: "mSymbolTypeName")
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.storeIn (dictionary: ioDictionary, forKey: "mStrokeBezierPath")
  //--- Atomic property: mFilledBezierPath
    self.mFilledBezierPath_property.storeIn (dictionary: ioDictionary, forKey: "mFilledBezierPath")
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
  //--- Atomic property: mSymbolTypeName
    self.mSymbolTypeName_property.readFrom (dictionary: inDictionary, forKey: "mSymbolTypeName")
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.readFrom (dictionary: inDictionary, forKey: "mStrokeBezierPath")
  //--- Atomic property: mFilledBezierPath
    self.mFilledBezierPath_property.readFrom (dictionary: inDictionary, forKey: "mFilledBezierPath")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mSymbolTypeName\n"
    ioString += "mStrokeBezierPath\n"
    ioString += "mFilledBezierPath\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mSymbolTypeName.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mStrokeBezierPath.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mFilledBezierPath.appendPropertyValueTo (&ioData)
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
    inParallelObjectSetupContext.addOperation {
    //--- Atomic properties
      if let range = inDictionary ["mSymbolTypeName"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mSymbolTypeName = value
      }
      if let range = inDictionary ["mStrokeBezierPath"], let value = NSBezierPath.unarchiveFromDataRange (inData, range) {
        self.mStrokeBezierPath = value
      }
      if let range = inDictionary ["mFilledBezierPath"], let value = NSBezierPath.unarchiveFromDataRange (inData, range) {
        self.mFilledBezierPath = value
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


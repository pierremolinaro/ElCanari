//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePadAssignmentInProject_mPadName : AnyObject {
  var mPadName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePadAssignmentInProject_pinPadAssignment : AnyObject {
  var pinPadAssignment : ThreeStrings? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePadAssignmentInProject_descriptor : AnyObject {
  var descriptor : PinPadAssignmentInProject? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: DevicePadAssignmentInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class DevicePadAssignmentInProject : EBManagedObject,
         DevicePadAssignmentInProject_mPadName,
         DevicePadAssignmentInProject_pinPadAssignment,
         DevicePadAssignmentInProject_descriptor {

  //····················································································································
  //   Atomic property: mPadName
  //····················································································································

  final let mPadName_property : EBStoredProperty_String

  //····················································································································

  final func reset_mPadName_toDefaultValue () {
    self.mPadName = ""
  }

  //····················································································································

  final var mPadName : String {
    get { return self.mPadName_property.propval }
    set { self.mPadName_property.setProp (newValue) }
  }

  //····················································································································
  //   To one property: mPin
  //····················································································································

  final let mPin_property = StoredObject_DevicePinInProject (usedForSignature: false)

  //····················································································································

  final var mPin : DevicePinInProject? {
    get {
      return self.mPin_property.propval
    }
    set {
      if self.mPin_property.propval != nil {
        self.mPin_property.setProp (nil)
      }
      if newValue != nil {
        self.mPin_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  final let mPin_none = EBGenericTransientProperty <Bool> ()

  //····················································································································
  //   Transient property: pinPadAssignment
  //····················································································································

  final let pinPadAssignment_property = EBTransientProperty_ThreeStrings ()

  //····················································································································

  final var pinPadAssignment : ThreeStrings? {
    switch self.pinPadAssignment_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: descriptor
  //····················································································································

  final let descriptor_property = EBTransientProperty_PinPadAssignmentInProject ()

  //····················································································································

  final var descriptor : PinPadAssignmentInProject? {
    switch self.descriptor_property.selection {
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
    self.mPadName_property = EBStoredProperty_String (defaultValue: "", undoManager: ebUndoManager)
    super.init (ebUndoManager)
    self.mPin_none.mReadModelFunction = { [weak self] in // §
      if let uwSelf = self {
        return .single (uwSelf.mPin_property.propval == nil)
      }else{
        return .empty
      }
    }
    self.mPin_property.addEBObserver (self.mPin_none)
  //--- To one property: mPin
    self.mPin_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: pinPadAssignment
    self.pinPadAssignment_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mPadName_property.selection, unwSelf.mPin_property.mSymbolInstanceName_property.selection, unwSelf.mPin_property.mPinName_property.selection) {
        case (.single (let v0), .single (let v1), .single (let v2)) :
          return .single (transient_DevicePadAssignmentInProject_pinPadAssignment (v0, v1, v2))
        case (.multiple, .multiple, .multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mPadName_property.addEBObserver (self.pinPadAssignment_property)
    self.mPin_property.mSymbolInstanceName_property.addEBObserver (self.pinPadAssignment_property)
    self.mPin_property.mPinName_property.addEBObserver (self.pinPadAssignment_property)
  //--- Atomic property: descriptor
    self.descriptor_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mPadName_property.selection, unwSelf.mPin_property.descriptor_property.selection) {
        case (.single (let v0), .single (let v1)) :
          return .single (transient_DevicePadAssignmentInProject_descriptor (v0, v1))
        case (.multiple, .multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mPadName_property.addEBObserver (self.descriptor_property)
    self.mPin_property.descriptor_property.addEBObserver (self.descriptor_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.mPadName_property.removeEBObserver (self.pinPadAssignment_property)
    // self.mPin_property.mSymbolInstanceName_property.removeEBObserver (self.pinPadAssignment_property)
    // self.mPin_property.mPinName_property.removeEBObserver (self.pinPadAssignment_property)
    // self.mPadName_property.removeEBObserver (self.descriptor_property)
    // self.mPin_property.descriptor_property.removeEBObserver (self.descriptor_property)
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
      "mPadName",
      idx: self.mPadName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPadName_property.mObserverExplorer,
      valueExplorer: &self.mPadName_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "pinPadAssignment",
      idx: self.pinPadAssignment_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.pinPadAssignment_property.mObserverExplorer,
      valueExplorer: &self.pinPadAssignment_property.mValueExplorer
    )
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
    createEntryForToOneRelationshipNamed (
      "mPin",
      idx:self.mPin_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mPin_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mPadName
    self.mPadName_property.mObserverExplorer = nil
    self.mPadName_property.mValueExplorer = nil
  //--- To one property: mPin
    self.mPin_property.mObserverExplorer = nil
    self.mPin_property.mValueExplorer = nil
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
    self.mPin = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: mPadName
    self.mPadName_property.storeIn (dictionary: ioDictionary, forKey: "mPadName")
  //--- To one property: mPin
    self.store (managedObject:self.mPin_property.propval,
      relationshipName: "mPin",
      intoDictionary: ioDictionary)
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  //--- To one property: mPin
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mPin",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? DevicePinInProject {
        self.mPin_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mPadName
    self.mPadName_property.readFrom (dictionary: inDictionary, forKey: "mPadName")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mPadName\n"
  //--- To one relationships
    ioString += "mPin\n"
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mPadName.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
    if let object = self.mPin {
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
      if let range = inDictionary ["mPadName"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mPadName = value
      }
    //--- To one relationships
      if let range = inDictionary ["mPin"], let objectIndex = inData.base62EncodedInt (range: range) {
        let object = inObjectArray [objectIndex] as! DevicePinInProject
        inParallelObjectSetupContext.addToOneSetupDeferredOperation { self.mPin = object }
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
  //--- To one property: mPin
    if let object = self.mPin {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To one property: mPin
    if let object = self.mPin {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


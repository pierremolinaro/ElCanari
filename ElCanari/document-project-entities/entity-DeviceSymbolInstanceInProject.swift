//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSymbolInstanceInProject_mSymbolInstanceName : AnyObject {
  var mSymbolInstanceName : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSymbolInstanceInProject_symbolAndTypeName : AnyObject {
  var symbolAndTypeName : SymbolInProjectIdentifier? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSymbolInstanceInProject_symbolTypeName : AnyObject {
  var symbolTypeName : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSymbolInstanceInProject_filledBezierPath : AnyObject {
  var filledBezierPath : NSBezierPath? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol DeviceSymbolInstanceInProject_strokeBezierPath : AnyObject {
  var strokeBezierPath : NSBezierPath? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: DeviceSymbolInstanceInProject
//----------------------------------------------------------------------------------------------------------------------

final class DeviceSymbolInstanceInProject : EBManagedObject,
         DeviceSymbolInstanceInProject_mSymbolInstanceName,
         DeviceSymbolInstanceInProject_symbolAndTypeName,
         DeviceSymbolInstanceInProject_symbolTypeName,
         DeviceSymbolInstanceInProject_filledBezierPath,
         DeviceSymbolInstanceInProject_strokeBezierPath {

  //····················································································································
  //   Atomic property: mSymbolInstanceName
  //····················································································································

  final let mSymbolInstanceName_property : EBStoredProperty_String

  //····················································································································

  final func reset_mSymbolInstanceName_toDefaultValue () {
    self.mSymbolInstanceName = ""
  }

  //····················································································································

  final var mSymbolInstanceName : String {
    get { return self.mSymbolInstanceName_property.propval }
    set { self.mSymbolInstanceName_property.setProp (newValue) }
  }

  //····················································································································

  final var mSymbolInstanceName_property_selection : EBSelection <String> { return self.mSymbolInstanceName_property.selection }

  //····················································································································
  //   To one property: mSymbolType
  //····················································································································

  final let mSymbolType_property = StoredObject_DeviceSymbolTypeInProject (usedForSignature: false)

  //····················································································································

  final var mSymbolType_property_selection : EBSelection <DeviceSymbolTypeInProject?> {
    return .single (self.mSymbolType_property.propval)
  }

  //····················································································································

  final var mSymbolType : DeviceSymbolTypeInProject? {
    get {
      return self.mSymbolType_property.propval
    }
    set {
      if self.mSymbolType_property.propval != nil {
        self.mSymbolType_property.setProp (nil)
      }
      if newValue != nil {
        self.mSymbolType_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  final let mSymbolType_none = EBGenericTransientProperty <Bool> () // §

  //····················································································································

  final var mSymbolType_none_selection : EBSelection <Bool> {
     return .single (self.mSymbolType_property.propval == nil)
  }

  //····················································································································
  //   Transient property: symbolAndTypeName
  //····················································································································

  final let symbolAndTypeName_property = EBTransientProperty_SymbolInProjectIdentifier ()

  //····················································································································

  final var symbolAndTypeName_property_selection : EBSelection <SymbolInProjectIdentifier> {
    return self.symbolAndTypeName_property.selection
  }

  //····················································································································

  final var symbolAndTypeName : SymbolInProjectIdentifier? {
    switch self.symbolAndTypeName_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: symbolTypeName
  //····················································································································

  final let symbolTypeName_property = EBTransientProperty_String ()

  //····················································································································

  final var symbolTypeName_property_selection : EBSelection <String> {
    return self.symbolTypeName_property.selection
  }

  //····················································································································

  final var symbolTypeName : String? {
    switch self.symbolTypeName_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: filledBezierPath
  //····················································································································

  final let filledBezierPath_property = EBTransientProperty_NSBezierPath ()

  //····················································································································

  final var filledBezierPath_property_selection : EBSelection <NSBezierPath> {
    return self.filledBezierPath_property.selection
  }

  //····················································································································

  final var filledBezierPath : NSBezierPath? {
    switch self.filledBezierPath_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: strokeBezierPath
  //····················································································································

  final let strokeBezierPath_property = EBTransientProperty_NSBezierPath ()

  //····················································································································

  final var strokeBezierPath_property_selection : EBSelection <NSBezierPath> {
    return self.strokeBezierPath_property.selection
  }

  //····················································································································

  final var strokeBezierPath : NSBezierPath? {
    switch self.strokeBezierPath_property_selection {
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
    self.mSymbolInstanceName_property = EBStoredProperty_String (defaultValue: "", undoManager: ebUndoManager)
    super.init (ebUndoManager)
    self.mSymbolType_none.mReadModelFunction = { [weak self] in // §
      if let uwSelf = self {
        return .single (uwSelf.mSymbolType_property.propval == nil)
      }else{
        return .empty
      }
    }
    self.mSymbolType_property.addEBObserver (self.mSymbolType_none)
  //--- To one property: mSymbolType
    self.mSymbolType_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: symbolAndTypeName
    self.symbolAndTypeName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mSymbolInstanceName_property_selection.kind ()
        kind &= unwSelf.mSymbolType_property.mSymbolTypeName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mSymbolInstanceName_property_selection, unwSelf.mSymbolType_property.mSymbolTypeName_property_selection) {
          case (.single (let v0), .single (let v1)) :
            return .single (transient_DeviceSymbolInstanceInProject_symbolAndTypeName (v0, v1))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mSymbolInstanceName_property.addEBObserver (self.symbolAndTypeName_property)
    self.mSymbolType_property.addEBObserverOf_mSymbolTypeName (self.symbolAndTypeName_property)
  //--- Atomic property: symbolTypeName
    self.symbolTypeName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mSymbolType_property.mSymbolTypeName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mSymbolType_property.mSymbolTypeName_property_selection) {
          case (.single (let v0)) :
            return .single (transient_DeviceSymbolInstanceInProject_symbolTypeName (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mSymbolType_property.addEBObserverOf_mSymbolTypeName (self.symbolTypeName_property)
  //--- Atomic property: filledBezierPath
    self.filledBezierPath_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mSymbolType_property.mFilledBezierPath_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mSymbolType_property.mFilledBezierPath_property_selection) {
          case (.single (let v0)) :
            return .single (transient_DeviceSymbolInstanceInProject_filledBezierPath (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mSymbolType_property.addEBObserverOf_mFilledBezierPath (self.filledBezierPath_property)
  //--- Atomic property: strokeBezierPath
    self.strokeBezierPath_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mSymbolType_property.mStrokeBezierPath_property_selection.kind ()
        kind &= preferences_symbolDrawingWidthMultipliedByTenForSchematic_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mSymbolType_property.mStrokeBezierPath_property_selection, preferences_symbolDrawingWidthMultipliedByTenForSchematic_property_selection) {
          case (.single (let v0), .single (let v1)) :
            return .single (transient_DeviceSymbolInstanceInProject_strokeBezierPath (v0, v1))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mSymbolType_property.addEBObserverOf_mStrokeBezierPath (self.strokeBezierPath_property)
    preferences_symbolDrawingWidthMultipliedByTenForSchematic_property.addEBObserver (self.strokeBezierPath_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.mSymbolInstanceName_property.removeEBObserver (self.symbolAndTypeName_property)
    // self.mSymbolType_property.mSymbolTypeName_property.removeEBObserver (self.symbolAndTypeName_property)
    // self.mSymbolType_property.mSymbolTypeName_property.removeEBObserver (self.symbolTypeName_property)
    // self.mSymbolType_property.mFilledBezierPath_property.removeEBObserver (self.filledBezierPath_property)
    // self.mSymbolType_property.mStrokeBezierPath_property.removeEBObserver (self.strokeBezierPath_property)
    // preferences_symbolDrawingWidthMultipliedByTenForSchematic_property.removeEBObserver (self.strokeBezierPath_property)
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
      "mSymbolInstanceName",
      idx: self.mSymbolInstanceName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mSymbolInstanceName_property.mObserverExplorer,
      valueExplorer: &self.mSymbolInstanceName_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "symbolAndTypeName",
      idx: self.symbolAndTypeName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.symbolAndTypeName_property.mObserverExplorer,
      valueExplorer: &self.symbolAndTypeName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "symbolTypeName",
      idx: self.symbolTypeName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.symbolTypeName_property.mObserverExplorer,
      valueExplorer: &self.symbolTypeName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "filledBezierPath",
      idx: self.filledBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.filledBezierPath_property.mObserverExplorer,
      valueExplorer: &self.filledBezierPath_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "strokeBezierPath",
      idx: self.strokeBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.strokeBezierPath_property.mObserverExplorer,
      valueExplorer: &self.strokeBezierPath_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mSymbolType",
      idx:self.mSymbolType_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mSymbolType_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mSymbolInstanceName
    self.mSymbolInstanceName_property.mObserverExplorer = nil
    self.mSymbolInstanceName_property.mValueExplorer = nil
  //--- To one property: mSymbolType
    self.mSymbolType_property.mObserverExplorer = nil
    self.mSymbolType_property.mValueExplorer = nil
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
    self.mSymbolType = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: mSymbolInstanceName
    self.mSymbolInstanceName_property.storeIn (dictionary: ioDictionary, forKey: "mSymbolInstanceName")
  //--- To one property: mSymbolType
    self.store (managedObject:self.mSymbolType_property.propval,
      relationshipName: "mSymbolType",
      intoDictionary: ioDictionary)
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  //--- To one property: mSymbolType
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mSymbolType",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? DeviceSymbolTypeInProject {
        self.mSymbolType_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mSymbolInstanceName
    self.mSymbolInstanceName_property.readFrom (dictionary: inDictionary, forKey: "mSymbolInstanceName")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mSymbolInstanceName\n"
  //--- To one relationships
    ioString += "mSymbolType\n"
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mSymbolInstanceName.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
    if let object = self.mSymbolType {
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
      if let range = inDictionary ["mSymbolInstanceName"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mSymbolInstanceName = value
      }
    //--- To one relationships
      if let range = inDictionary ["mSymbolType"], let objectIndex = inData.base62EncodedInt (range: range) {
        let object = inObjectArray [objectIndex] as! DeviceSymbolTypeInProject
        inParallelObjectSetupContext.addToOneSetupDeferredOperation { self.mSymbolType = object }
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
  //--- To one property: mSymbolType
    if let object = self.mSymbolType {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To one property: mSymbolType
    if let object = self.mSymbolType {
      objects.append (object)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


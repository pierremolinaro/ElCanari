//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_mTypeName : class {
  var mTypeName : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_mVersion : class {
  var mVersion : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_mFileData : class {
  var mFileData : Data { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_mStrokeBezierPath : class {
  var mStrokeBezierPath : NSBezierPath { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_mFilledBezierPath : class {
  var mFilledBezierPath : NSBezierPath { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_versionString : class {
  var versionString : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_instanceCount : class {
  var instanceCount : Int? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_documentSizeString : class {
  var documentSizeString : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_pinNameShape : class {
  var pinNameShape : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: SymbolTypeInDevice
//----------------------------------------------------------------------------------------------------------------------

class SymbolTypeInDevice : EBManagedObject,
         SymbolTypeInDevice_mTypeName,
         SymbolTypeInDevice_mVersion,
         SymbolTypeInDevice_mFileData,
         SymbolTypeInDevice_mStrokeBezierPath,
         SymbolTypeInDevice_mFilledBezierPath,
         SymbolTypeInDevice_versionString,
         SymbolTypeInDevice_instanceCount,
         SymbolTypeInDevice_documentSizeString,
         SymbolTypeInDevice_pinNameShape {

  //····················································································································
  //   To many property: mInstances
  //····················································································································

  let mInstances_property = StoredArrayOf_SymbolInstanceInDevice (usedForSignature: false)

  //····················································································································

  var mInstances_property_selection : EBSelection < [SymbolInstanceInDevice] > {
    return self.mInstances_property.prop
  }

  //····················································································································

  var mInstances : [SymbolInstanceInDevice] {
    get { return self.mInstances_property.propval }
    set { self.mInstances_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: mTypeName
  //····················································································································

  let mTypeName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  final func reset_mTypeName_toDefaultValue () {
    self.mTypeName = ""
  }

  //····················································································································

  final var mTypeName : String {
    get { return self.mTypeName_property.propval }
    set { self.mTypeName_property.setProp (newValue) }
  }

  //····················································································································

  final var mTypeName_property_selection : EBSelection <String> { return self.mTypeName_property.prop }

  //····················································································································
  //   Atomic property: mVersion
  //····················································································································

  let mVersion_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_mVersion_toDefaultValue () {
    self.mVersion = 0
  }

  //····················································································································

  final var mVersion : Int {
    get { return self.mVersion_property.propval }
    set { self.mVersion_property.setProp (newValue) }
  }

  //····················································································································

  final var mVersion_property_selection : EBSelection <Int> { return self.mVersion_property.prop }

  //····················································································································
  //   Atomic property: mFileData
  //····················································································································

  let mFileData_property = EBStoredProperty_Data (defaultValue: Data ())

  //····················································································································

  final func reset_mFileData_toDefaultValue () {
    self.mFileData = Data ()
  }

  //····················································································································

  final var mFileData : Data {
    get { return self.mFileData_property.propval }
    set { self.mFileData_property.setProp (newValue) }
  }

  //····················································································································

  final var mFileData_property_selection : EBSelection <Data> { return self.mFileData_property.prop }

  //····················································································································
  //   Atomic property: mStrokeBezierPath
  //····················································································································

  let mStrokeBezierPath_property = EBStoredProperty_NSBezierPath (defaultValue: NSBezierPath ())

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

  final var mStrokeBezierPath_property_selection : EBSelection <NSBezierPath> { return self.mStrokeBezierPath_property.prop }

  //····················································································································
  //   Atomic property: mFilledBezierPath
  //····················································································································

  let mFilledBezierPath_property = EBStoredProperty_NSBezierPath (defaultValue: NSBezierPath ())

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

  final var mFilledBezierPath_property_selection : EBSelection <NSBezierPath> { return self.mFilledBezierPath_property.prop }

  //····················································································································
  //   To many property: mPinTypes
  //····················································································································

  let mPinTypes_property = StoredArrayOf_SymbolPinTypeInDevice (usedForSignature: true)

  //····················································································································

  var mPinTypes_property_selection : EBSelection < [SymbolPinTypeInDevice] > {
    return self.mPinTypes_property.prop
  }

  //····················································································································

  var mPinTypes : [SymbolPinTypeInDevice] {
    get { return self.mPinTypes_property.propval }
    set { self.mPinTypes_property.setProp (newValue) }
  }

  //····················································································································
  //   Transient property: versionString
  //····················································································································

  let versionString_property = EBTransientProperty_String ()

  //····················································································································

  var versionString_property_selection : EBSelection <String> {
    return self.versionString_property.prop
  }

  //····················································································································

  var versionString : String? {
    switch self.versionString_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: instanceCount
  //····················································································································

  let instanceCount_property = EBTransientProperty_Int ()

  //····················································································································

  var instanceCount_property_selection : EBSelection <Int> {
    return self.instanceCount_property.prop
  }

  //····················································································································

  var instanceCount : Int? {
    switch self.instanceCount_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: documentSizeString
  //····················································································································

  let documentSizeString_property = EBTransientProperty_String ()

  //····················································································································

  var documentSizeString_property_selection : EBSelection <String> {
    return self.documentSizeString_property.prop
  }

  //····················································································································

  var documentSizeString : String? {
    switch self.documentSizeString_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: pinNameShape
  //····················································································································

  let pinNameShape_property = EBTransientProperty_EBShape ()

  //····················································································································

  var pinNameShape_property_selection : EBSelection <EBShape> {
    return self.pinNameShape_property.prop
  }

  //····················································································································

  var pinNameShape : EBShape? {
    switch self.pinNameShape_property_selection {
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
  //--- To many property: mInstances (has opposite relationship)
    self.mInstances_property.ebUndoManager = self.ebUndoManager
    self.mInstances_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mType_property.setProp (me) } },
      resetter: { inObject in inObject.mType_property.setProp (nil) }
    )
  //--- Atomic property: mTypeName
    self.mTypeName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mVersion
    self.mVersion_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mFileData
    self.mFileData_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mFilledBezierPath
    self.mFilledBezierPath_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mPinTypes (no option)
    self.mPinTypes_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: versionString
    self.versionString_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mVersion_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mVersion_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SymbolTypeInDevice_versionString (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mVersion_property.addEBObserver (self.versionString_property)
  //--- Atomic property: instanceCount
    self.instanceCount_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mInstances_property.count_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mInstances_property.count_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SymbolTypeInDevice_instanceCount (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mInstances_property.addEBObserver (self.instanceCount_property)
  //--- Atomic property: documentSizeString
    self.documentSizeString_property.mReadModelFunction = { [weak self] in
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
            return .single (transient_SymbolTypeInDevice_documentSizeString (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mFileData_property.addEBObserver (self.documentSizeString_property)
  //--- Atomic property: pinNameShape
    self.pinNameShape_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mPinTypes_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPinTypes_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SymbolTypeInDevice_pinNameShape (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPinTypes_property.addEBObserverOf_nameShape (self.pinNameShape_property)
  //--- Install undoers and opposite setter for relationships
    self.mInstances_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mType_property.setProp (me) } },
      resetter: { inObject in inObject.mType_property.setProp (nil) }
    )
  //--- Register properties for handling signature
    self.mFileData_property.setSignatureObserver (observer: self)
    self.mFilledBezierPath_property.setSignatureObserver (observer: self)
    self.mPinTypes_property.setSignatureObserver (observer: self)
    self.mStrokeBezierPath_property.setSignatureObserver (observer: self)
    self.mTypeName_property.setSignatureObserver (observer: self)
    self.mVersion_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mVersion_property.removeEBObserver (self.versionString_property)
    self.mInstances_property.removeEBObserver (self.instanceCount_property)
    self.mFileData_property.removeEBObserver (self.documentSizeString_property)
    self.mPinTypes_property.removeEBObserverOf_nameShape (self.pinNameShape_property)
  //--- Unregister properties for handling signature
    self.mFileData_property.setSignatureObserver (observer: nil)
    self.mFilledBezierPath_property.setSignatureObserver (observer: nil)
    self.mPinTypes_property.setSignatureObserver (observer: nil)
    self.mStrokeBezierPath_property.setSignatureObserver (observer: nil)
    self.mTypeName_property.setSignatureObserver (observer: nil)
    self.mVersion_property.setSignatureObserver (observer: nil)
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
      "mTypeName",
      idx: self.mTypeName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mTypeName_property.mObserverExplorer,
      valueExplorer: &self.mTypeName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mVersion",
      idx: self.mVersion_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mVersion_property.mObserverExplorer,
      valueExplorer: &self.mVersion_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mFileData",
      idx: self.mFileData_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mFileData_property.mObserverExplorer,
      valueExplorer: &self.mFileData_property.mValueExplorer
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
    createEntryForPropertyNamed (
      "versionString",
      idx: self.versionString_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.versionString_property.mObserverExplorer,
      valueExplorer: &self.versionString_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "instanceCount",
      idx: self.instanceCount_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.instanceCount_property.mObserverExplorer,
      valueExplorer: &self.instanceCount_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "documentSizeString",
      idx: self.documentSizeString_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.documentSizeString_property.mObserverExplorer,
      valueExplorer: &self.documentSizeString_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "pinNameShape",
      idx: self.pinNameShape_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.pinNameShape_property.mObserverExplorer,
      valueExplorer: &self.pinNameShape_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "mInstances",
      idx:mInstances_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mInstances_property.mValueExplorer
    )
    createEntryForToManyRelationshipNamed (
      "mPinTypes",
      idx:mPinTypes_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mPinTypes_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- To many property: mInstances
    self.mInstances_property.mValueExplorer = nil
  //--- Atomic property: mTypeName
    self.mTypeName_property.mObserverExplorer = nil
    self.mTypeName_property.mValueExplorer = nil
  //--- Atomic property: mVersion
    self.mVersion_property.mObserverExplorer = nil
    self.mVersion_property.mValueExplorer = nil
  //--- Atomic property: mFileData
    self.mFileData_property.mObserverExplorer = nil
    self.mFileData_property.mValueExplorer = nil
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.mObserverExplorer = nil
    self.mStrokeBezierPath_property.mValueExplorer = nil
  //--- Atomic property: mFilledBezierPath
    self.mFilledBezierPath_property.mObserverExplorer = nil
    self.mFilledBezierPath_property.mValueExplorer = nil
  //--- To many property: mPinTypes
    self.mPinTypes_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mInstances = []
    self.mPinTypes = []
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
  //--- To many property: mInstances
    self.store (
      managedObjectArray: self.mInstances_property.propval,
      relationshipName: "mInstances",
      intoDictionary: ioDictionary
    )
  //--- Atomic property: mTypeName
    self.mTypeName_property.storeIn (dictionary: ioDictionary, forKey: "mTypeName")
  //--- Atomic property: mVersion
    self.mVersion_property.storeIn (dictionary: ioDictionary, forKey: "mVersion")
  //--- Atomic property: mFileData
    self.mFileData_property.storeIn (dictionary: ioDictionary, forKey: "mFileData")
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.storeIn (dictionary: ioDictionary, forKey: "mStrokeBezierPath")
  //--- Atomic property: mFilledBezierPath
    self.mFilledBezierPath_property.storeIn (dictionary: ioDictionary, forKey: "mFilledBezierPath")
  //--- To many property: mPinTypes
    self.store (
      managedObjectArray: self.mPinTypes_property.propval,
      relationshipName: "mPinTypes",
      intoDictionary: ioDictionary
    )
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: mInstances
    self.mInstances_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mInstances",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [SymbolInstanceInDevice])
  //--- To many property: mPinTypes
    self.mPinTypes_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mPinTypes",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [SymbolPinTypeInDevice])
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mTypeName
    self.mTypeName_property.readFrom (dictionary: inDictionary, forKey: "mTypeName")
  //--- Atomic property: mVersion
    self.mVersion_property.readFrom (dictionary: inDictionary, forKey: "mVersion")
  //--- Atomic property: mFileData
    self.mFileData_property.readFrom (dictionary: inDictionary, forKey: "mFileData")
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
    ioString += "mTypeName\n"
    ioString += "mVersion\n"
    ioString += "mFileData\n"
    ioString += "mStrokeBezierPath\n"
    ioString += "mFilledBezierPath\n"
  //--- To one relationships
  //--- To many relationships
    ioString += "mInstances\n"
    ioString += "mPinTypes\n"
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mTypeName.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mVersion.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mFileData.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mStrokeBezierPath.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mFilledBezierPath.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
  //--- To many relationships
    do{
      var optionalFirstIndex : Int? = nil
      var rangeCount = 0
      for object in self.mInstances {
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
      for object in self.mPinTypes {
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
  //--- To many property: mInstances
    for managedObject in self.mInstances {
      objects.append (managedObject)
    }
  //--- To many property: mPinTypes
    for managedObject in self.mPinTypes {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: mInstances
    for managedObject in self.mInstances {
      objects.append (managedObject)
    }
  //--- To many property: mPinTypes
    for managedObject in self.mPinTypes {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.mFileData_property.signature ())
    crc.accumulateUInt32 (self.mFilledBezierPath_property.signature ())
    crc.accumulateUInt32 (self.mPinTypes_property.signature ())
    crc.accumulateUInt32 (self.mStrokeBezierPath_property.signature ())
    crc.accumulateUInt32 (self.mTypeName_property.signature ())
    crc.accumulateUInt32 (self.mVersion_property.signature ())
    return crc
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


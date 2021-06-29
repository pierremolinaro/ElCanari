//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_mTypeName : AnyObject {
  var mTypeName : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_mVersion : AnyObject {
  var mVersion : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_mFileData : AnyObject {
  var mFileData : Data { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_mStrokeBezierPath : AnyObject {
  var mStrokeBezierPath : NSBezierPath { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_mFilledBezierPath : AnyObject {
  var mFilledBezierPath : NSBezierPath { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_versionString : AnyObject {
  var versionString : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_instanceCount : AnyObject {
  var instanceCount : Int? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_documentSizeString : AnyObject {
  var documentSizeString : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_documentSize : AnyObject {
  var documentSize : Int? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolTypeInDevice_pinNameShape : AnyObject {
  var pinNameShape : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: SymbolTypeInDevice
//----------------------------------------------------------------------------------------------------------------------

final class SymbolTypeInDevice : EBManagedObject,
         SymbolTypeInDevice_mTypeName,
         SymbolTypeInDevice_mVersion,
         SymbolTypeInDevice_mFileData,
         SymbolTypeInDevice_mStrokeBezierPath,
         SymbolTypeInDevice_mFilledBezierPath,
         SymbolTypeInDevice_versionString,
         SymbolTypeInDevice_instanceCount,
         SymbolTypeInDevice_documentSizeString,
         SymbolTypeInDevice_documentSize,
         SymbolTypeInDevice_pinNameShape {

  //····················································································································
  //   To many property: mInstances
  //····················································································································

  final let mInstances_property = StoredArrayOf_SymbolInstanceInDevice (usedForSignature: false)

  //····················································································································

  //····················································································································

  final var mInstances : [SymbolInstanceInDevice] {
    get { return self.mInstances_property.propval }
    set { self.mInstances_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: mTypeName
  //····················································································································

  final let mTypeName_property : EBStoredProperty_String

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
  //   Atomic property: mVersion
  //····················································································································

  final let mVersion_property : EBStoredProperty_Int

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
  //   Atomic property: mFileData
  //····················································································································

  final let mFileData_property : EBStoredProperty_Data

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
  //   To many property: mPinTypes
  //····················································································································

  final let mPinTypes_property = StoredArrayOf_SymbolPinTypeInDevice (usedForSignature: true)

  //····················································································································

  //····················································································································

  final var mPinTypes : [SymbolPinTypeInDevice] {
    get { return self.mPinTypes_property.propval }
    set { self.mPinTypes_property.setProp (newValue) }
  }

  //····················································································································
  //   Transient property: versionString
  //····················································································································

  final let versionString_property = EBTransientProperty_String ()

  //····················································································································

  final var versionString : String? {
    switch self.versionString_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: instanceCount
  //····················································································································

  final let instanceCount_property = EBTransientProperty_Int ()

  //····················································································································

  final var instanceCount : Int? {
    switch self.instanceCount_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: documentSizeString
  //····················································································································

  final let documentSizeString_property = EBTransientProperty_String ()

  //····················································································································

  final var documentSizeString : String? {
    switch self.documentSizeString_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: documentSize
  //····················································································································

  final let documentSize_property = EBTransientProperty_Int ()

  //····················································································································

  final var documentSize : Int? {
    switch self.documentSize_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: pinNameShape
  //····················································································································

  final let pinNameShape_property = EBTransientProperty_EBShape ()

  //····················································································································

  final var pinNameShape : EBShape? {
    switch self.pinNameShape_property.selection {
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
    self.mTypeName_property = EBStoredProperty_String (defaultValue: "", undoManager: ebUndoManager)
    self.mVersion_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.mFileData_property = EBStoredProperty_Data (defaultValue: Data (), undoManager: ebUndoManager)
    self.mStrokeBezierPath_property = EBStoredProperty_NSBezierPath (defaultValue: NSBezierPath (), undoManager: ebUndoManager)
    self.mFilledBezierPath_property = EBStoredProperty_NSBezierPath (defaultValue: NSBezierPath (), undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- To many property: mInstances (has opposite relationship)
    self.mInstances_property.ebUndoManager = self.ebUndoManager
    self.mInstances_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mType_property.setProp (me) } },
      resetter: { inObject in inObject.mType_property.setProp (nil) }
    )
  //--- To many property: mPinTypes (no option)
    self.mPinTypes_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: versionString
    self.versionString_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mVersion_property.selection) {
        case (.single (let v0)) :
          return .single (transient_SymbolTypeInDevice_versionString (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mVersion_property.addEBObserver (self.versionString_property)
  //--- Atomic property: instanceCount
    self.instanceCount_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mInstances_property.count_property.selection) {
        case (.single (let v0)) :
          return .single (transient_SymbolTypeInDevice_instanceCount (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mInstances_property.addEBObserver (self.instanceCount_property)
  //--- Atomic property: documentSizeString
    self.documentSizeString_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mFileData_property.selection) {
        case (.single (let v0)) :
          return .single (transient_SymbolTypeInDevice_documentSizeString (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mFileData_property.addEBObserver (self.documentSizeString_property)
  //--- Atomic property: documentSize
    self.documentSize_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mFileData_property.selection) {
        case (.single (let v0)) :
          return .single (transient_SymbolTypeInDevice_documentSize (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mFileData_property.addEBObserver (self.documentSize_property)
  //--- Atomic property: pinNameShape
    self.pinNameShape_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mPinTypes_property.selection) {
        case (.single (let v0)) :
          return .single (transient_SymbolTypeInDevice_pinNameShape (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
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
    // self.mVersion_property.removeEBObserver (self.versionString_property)
    // self.mInstances_property.removeEBObserver (self.instanceCount_property)
    // self.mFileData_property.removeEBObserver (self.documentSizeString_property)
    // self.mFileData_property.removeEBObserver (self.documentSize_property)
    // self.mPinTypes_property.removeEBObserverOf_nameShape (self.pinNameShape_property)
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
      "documentSize",
      idx: self.documentSize_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.documentSize_property.mObserverExplorer,
      valueExplorer: &self.documentSize_property.mValueExplorer
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
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
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
  //    setUpWithTextDictionary
  //····················································································································

  override func setUpWithTextDictionary (_ inDictionary : [String : NSRange],
                                         _ inObjectArray : [EBManagedObject],
                                         _ inData : Data,
                                         _ inParallelObjectSetupContext : ParallelObjectSetupContext) {
    super.setUpWithTextDictionary (inDictionary, inObjectArray, inData, inParallelObjectSetupContext)
    inParallelObjectSetupContext.addOperation {
    //--- Atomic properties
      if let range = inDictionary ["mTypeName"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mTypeName = value
      }
      if let range = inDictionary ["mVersion"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mVersion = value
      }
      if let range = inDictionary ["mFileData"], let value = Data.unarchiveFromDataRange (inData, range) {
        self.mFileData = value
      }
      if let range = inDictionary ["mStrokeBezierPath"], let value = NSBezierPath.unarchiveFromDataRange (inData, range) {
        self.mStrokeBezierPath = value
      }
      if let range = inDictionary ["mFilledBezierPath"], let value = NSBezierPath.unarchiveFromDataRange (inData, range) {
        self.mFilledBezierPath = value
      }
    //--- To one relationships
    //--- To many relationships
      if let range = inDictionary ["mInstances"], range.length > 0 {
        var relationshipArray = [SymbolInstanceInDevice] ()
        let indexArray = inData.base62EncodedIntArray (fromRange: range)
        for idx in indexArray {
          relationshipArray.append (inObjectArray [idx] as! SymbolInstanceInDevice)
        }
        inParallelObjectSetupContext.addToManySetupDeferredOperation { self.mInstances = relationshipArray }
      }
      if let range = inDictionary ["mPinTypes"], range.length > 0 {
        var relationshipArray = [SymbolPinTypeInDevice] ()
        let indexArray = inData.base62EncodedIntArray (fromRange: range)
        for idx in indexArray {
          relationshipArray.append (inObjectArray [idx] as! SymbolPinTypeInDevice)
        }
        inParallelObjectSetupContext.addToManySetupDeferredOperation { self.mPinTypes = relationshipArray }
      }
    }
  //--- End of addOperation
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


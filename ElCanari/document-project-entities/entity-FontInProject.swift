//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol FontInProject_mNominalSize : class {
  var mNominalSize : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontInProject_mFontName : class {
  var mFontName : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontInProject_mFontVersion : class {
  var mFontVersion : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontInProject_mDescriptiveString : class {
  var mDescriptiveString : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontInProject_versionString : class {
  var versionString : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontInProject_sizeString : class {
  var sizeString : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontInProject_descriptor : class {
  var descriptor : BoardFontDescriptor? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: FontInProject
//----------------------------------------------------------------------------------------------------------------------

class FontInProject : EBManagedObject,
         FontInProject_mNominalSize,
         FontInProject_mFontName,
         FontInProject_mFontVersion,
         FontInProject_mDescriptiveString,
         FontInProject_versionString,
         FontInProject_sizeString,
         FontInProject_descriptor {

  //····················································································································
  //   To many property: mTexts
  //····················································································································

  let mTexts_property = StoredArrayOf_BoardText (usedForSignature: false)

  //····················································································································

  var mTexts_property_selection : EBSelection < [BoardText] > {
    return self.mTexts_property.prop
  }

  //····················································································································

  var mTexts : [BoardText] {
    get { return self.mTexts_property.propval }
    set { self.mTexts_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: mNominalSize
  //····················································································································

  let mNominalSize_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_mNominalSize_toDefaultValue () {
    self.mNominalSize = 0
  }

  //····················································································································

  final var mNominalSize : Int {
    get { return self.mNominalSize_property.propval }
    set { self.mNominalSize_property.setProp (newValue) }
  }

  //····················································································································

  final var mNominalSize_property_selection : EBSelection <Int> { return self.mNominalSize_property.prop }

  //····················································································································
  //   Atomic property: mFontName
  //····················································································································

  let mFontName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  final func reset_mFontName_toDefaultValue () {
    self.mFontName = ""
  }

  //····················································································································

  final var mFontName : String {
    get { return self.mFontName_property.propval }
    set { self.mFontName_property.setProp (newValue) }
  }

  //····················································································································

  final var mFontName_property_selection : EBSelection <String> { return self.mFontName_property.prop }

  //····················································································································
  //   Atomic property: mFontVersion
  //····················································································································

  let mFontVersion_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_mFontVersion_toDefaultValue () {
    self.mFontVersion = 0
  }

  //····················································································································

  final var mFontVersion : Int {
    get { return self.mFontVersion_property.propval }
    set { self.mFontVersion_property.setProp (newValue) }
  }

  //····················································································································

  final var mFontVersion_property_selection : EBSelection <Int> { return self.mFontVersion_property.prop }

  //····················································································································
  //   Atomic property: mDescriptiveString
  //····················································································································

  let mDescriptiveString_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  final func reset_mDescriptiveString_toDefaultValue () {
    self.mDescriptiveString = ""
  }

  //····················································································································

  final var mDescriptiveString : String {
    get { return self.mDescriptiveString_property.propval }
    set { self.mDescriptiveString_property.setProp (newValue) }
  }

  //····················································································································

  final var mDescriptiveString_property_selection : EBSelection <String> { return self.mDescriptiveString_property.prop }

  //····················································································································
  //   To many property: mComponentNames
  //····················································································································

  let mComponentNames_property = StoredArrayOf_ComponentInProject (usedForSignature: false)

  //····················································································································

  var mComponentNames_property_selection : EBSelection < [ComponentInProject] > {
    return self.mComponentNames_property.prop
  }

  //····················································································································

  var mComponentNames : [ComponentInProject] {
    get { return self.mComponentNames_property.propval }
    set { self.mComponentNames_property.setProp (newValue) }
  }

  //····················································································································
  //   To many property: mComponentValues
  //····················································································································

  let mComponentValues_property = StoredArrayOf_ComponentInProject (usedForSignature: false)

  //····················································································································

  var mComponentValues_property_selection : EBSelection < [ComponentInProject] > {
    return self.mComponentValues_property.prop
  }

  //····················································································································

  var mComponentValues : [ComponentInProject] {
    get { return self.mComponentValues_property.propval }
    set { self.mComponentValues_property.setProp (newValue) }
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
  //   Transient property: sizeString
  //····················································································································

  let sizeString_property = EBTransientProperty_String ()

  //····················································································································

  var sizeString_property_selection : EBSelection <String> {
    return self.sizeString_property.prop
  }

  //····················································································································

  var sizeString : String? {
    switch self.sizeString_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: descriptor
  //····················································································································

  let descriptor_property = EBTransientProperty_BoardFontDescriptor ()

  //····················································································································

  var descriptor_property_selection : EBSelection <BoardFontDescriptor> {
    return self.descriptor_property.prop
  }

  //····················································································································

  var descriptor : BoardFontDescriptor? {
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
  //--- To many property: mTexts (has opposite relationship)
    self.mTexts_property.ebUndoManager = self.ebUndoManager
    self.mTexts_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mFont_property.setProp (me) } },
      resetter: { inObject in inObject.mFont_property.setProp (nil) }
    )
  //--- Atomic property: mNominalSize
    self.mNominalSize_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mFontName
    self.mFontName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mFontVersion
    self.mFontVersion_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mDescriptiveString
    self.mDescriptiveString_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mComponentNames (has opposite relationship)
    self.mComponentNames_property.ebUndoManager = self.ebUndoManager
    self.mComponentNames_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNameFont_property.setProp (me) } },
      resetter: { inObject in inObject.mNameFont_property.setProp (nil) }
    )
  //--- To many property: mComponentValues (has opposite relationship)
    self.mComponentValues_property.ebUndoManager = self.ebUndoManager
    self.mComponentValues_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mValueFont_property.setProp (me) } },
      resetter: { inObject in inObject.mValueFont_property.setProp (nil) }
    )
  //--- Atomic property: versionString
    self.versionString_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mFontVersion_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mFontVersion_property_selection) {
          case (.single (let v0)) :
            return .single (transient_FontInProject_versionString (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mFontVersion_property.addEBObserver (self.versionString_property)
  //--- Atomic property: sizeString
    self.sizeString_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mDescriptiveString_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mDescriptiveString_property_selection) {
          case (.single (let v0)) :
            return .single (transient_FontInProject_sizeString (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mDescriptiveString_property.addEBObserver (self.sizeString_property)
  //--- Atomic property: descriptor
    self.descriptor_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mNominalSize_property_selection.kind ()
        kind &= unwSelf.mDescriptiveString_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mNominalSize_property_selection, unwSelf.mDescriptiveString_property_selection) {
          case (.single (let v0), .single (let v1)) :
            return .single (transient_FontInProject_descriptor (v0, v1))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mNominalSize_property.addEBObserver (self.descriptor_property)
    self.mDescriptiveString_property.addEBObserver (self.descriptor_property)
  //--- Install undoers and opposite setter for relationships
    self.mTexts_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mFont_property.setProp (me) } },
      resetter: { inObject in inObject.mFont_property.setProp (nil) }
    )
    self.mComponentNames_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNameFont_property.setProp (me) } },
      resetter: { inObject in inObject.mNameFont_property.setProp (nil) }
    )
    self.mComponentValues_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mValueFont_property.setProp (me) } },
      resetter: { inObject in inObject.mValueFont_property.setProp (nil) }
    )
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mFontVersion_property.removeEBObserver (self.versionString_property)
    self.mDescriptiveString_property.removeEBObserver (self.sizeString_property)
    self.mNominalSize_property.removeEBObserver (self.descriptor_property)
    self.mDescriptiveString_property.removeEBObserver (self.descriptor_property)
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
      "mNominalSize",
      idx: self.mNominalSize_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mNominalSize_property.mObserverExplorer,
      valueExplorer: &self.mNominalSize_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mFontName",
      idx: self.mFontName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mFontName_property.mObserverExplorer,
      valueExplorer: &self.mFontName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mFontVersion",
      idx: self.mFontVersion_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mFontVersion_property.mObserverExplorer,
      valueExplorer: &self.mFontVersion_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mDescriptiveString",
      idx: self.mDescriptiveString_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mDescriptiveString_property.mObserverExplorer,
      valueExplorer: &self.mDescriptiveString_property.mValueExplorer
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
      "sizeString",
      idx: self.sizeString_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.sizeString_property.mObserverExplorer,
      valueExplorer: &self.sizeString_property.mValueExplorer
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
    createEntryForToManyRelationshipNamed (
      "mTexts",
      idx:mTexts_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mTexts_property.mValueExplorer
    )
    createEntryForToManyRelationshipNamed (
      "mComponentNames",
      idx:mComponentNames_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mComponentNames_property.mValueExplorer
    )
    createEntryForToManyRelationshipNamed (
      "mComponentValues",
      idx:mComponentValues_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mComponentValues_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- To many property: mTexts
    self.mTexts_property.mValueExplorer = nil
  //--- Atomic property: mNominalSize
    self.mNominalSize_property.mObserverExplorer = nil
    self.mNominalSize_property.mValueExplorer = nil
  //--- Atomic property: mFontName
    self.mFontName_property.mObserverExplorer = nil
    self.mFontName_property.mValueExplorer = nil
  //--- Atomic property: mFontVersion
    self.mFontVersion_property.mObserverExplorer = nil
    self.mFontVersion_property.mValueExplorer = nil
  //--- Atomic property: mDescriptiveString
    self.mDescriptiveString_property.mObserverExplorer = nil
    self.mDescriptiveString_property.mValueExplorer = nil
  //--- To many property: mComponentNames
    self.mComponentNames_property.mValueExplorer = nil
  //--- To many property: mComponentValues
    self.mComponentValues_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mTexts = []
    self.mComponentNames = []
    self.mComponentValues = []
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
  //--- To many property: mTexts
    self.store (
      managedObjectArray: self.mTexts_property.propval,
      relationshipName: "mTexts",
      intoDictionary: ioDictionary
    )
  //--- Atomic property: mNominalSize
    self.mNominalSize_property.storeIn (dictionary: ioDictionary, forKey: "mNominalSize")
  //--- Atomic property: mFontName
    self.mFontName_property.storeIn (dictionary: ioDictionary, forKey: "mFontName")
  //--- Atomic property: mFontVersion
    self.mFontVersion_property.storeIn (dictionary: ioDictionary, forKey: "mFontVersion")
  //--- Atomic property: mDescriptiveString
    self.mDescriptiveString_property.storeIn (dictionary: ioDictionary, forKey: "mDescriptiveString")
  //--- To many property: mComponentNames
    self.store (
      managedObjectArray: self.mComponentNames_property.propval,
      relationshipName: "mComponentNames",
      intoDictionary: ioDictionary
    )
  //--- To many property: mComponentValues
    self.store (
      managedObjectArray: self.mComponentValues_property.propval,
      relationshipName: "mComponentValues",
      intoDictionary: ioDictionary
    )
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  //--- To many property: mTexts
    self.mTexts_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mTexts",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [BoardText])
  //--- To many property: mComponentNames
    self.mComponentNames_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mComponentNames",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [ComponentInProject])
  //--- To many property: mComponentValues
    self.mComponentValues_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mComponentValues",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [ComponentInProject])
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mNominalSize
    self.mNominalSize_property.readFrom (dictionary: inDictionary, forKey: "mNominalSize")
  //--- Atomic property: mFontName
    self.mFontName_property.readFrom (dictionary: inDictionary, forKey: "mFontName")
  //--- Atomic property: mFontVersion
    self.mFontVersion_property.readFrom (dictionary: inDictionary, forKey: "mFontVersion")
  //--- Atomic property: mDescriptiveString
    self.mDescriptiveString_property.readFrom (dictionary: inDictionary, forKey: "mDescriptiveString")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mNominalSize\n"
    ioString += "mFontName\n"
    ioString += "mFontVersion\n"
    ioString += "mDescriptiveString\n"
  //--- To one relationships
  //--- To many relationships
    ioString += "mTexts\n"
    ioString += "mComponentNames\n"
    ioString += "mComponentValues\n"
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mNominalSize.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mFontName.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mFontVersion.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mDescriptiveString.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
  //--- To many relationships
    do{
      var optionalFirstIndex : Int? = nil
      var rangeCount = 0
      for object in self.mTexts {
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
      for object in self.mComponentNames {
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
      for object in self.mComponentValues {
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
      if let range = inDictionary ["mNominalSize"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mNominalSize = value
      }
      if let range = inDictionary ["mFontName"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mFontName = value
      }
      if let range = inDictionary ["mFontVersion"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mFontVersion = value
      }
      if let range = inDictionary ["mDescriptiveString"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mDescriptiveString = value
      }
    //--- To one relationships
    //--- To many relationships
      if let range = inDictionary ["mTexts"], range.length > 0 {
        var relationshipArray = [BoardText] ()
        let indexArray = inData.base62EncodedIntArray (fromRange: range)
        for idx in indexArray {
          relationshipArray.append (inObjectArray [idx] as! BoardText)
        }
        inParallelObjectSetupContext.mMutex.wait ()
        inParallelObjectSetupContext.mToManySetUpOperationList.append ({ self.mTexts = relationshipArray })
        inParallelObjectSetupContext.mMutex.signal ()
      }
      if let range = inDictionary ["mComponentNames"], range.length > 0 {
        var relationshipArray = [ComponentInProject] ()
        let indexArray = inData.base62EncodedIntArray (fromRange: range)
        for idx in indexArray {
          relationshipArray.append (inObjectArray [idx] as! ComponentInProject)
        }
        inParallelObjectSetupContext.mMutex.wait ()
        inParallelObjectSetupContext.mToManySetUpOperationList.append ({ self.mComponentNames = relationshipArray })
        inParallelObjectSetupContext.mMutex.signal ()
      }
      if let range = inDictionary ["mComponentValues"], range.length > 0 {
        var relationshipArray = [ComponentInProject] ()
        let indexArray = inData.base62EncodedIntArray (fromRange: range)
        for idx in indexArray {
          relationshipArray.append (inObjectArray [idx] as! ComponentInProject)
        }
        inParallelObjectSetupContext.mMutex.wait ()
        inParallelObjectSetupContext.mToManySetUpOperationList.append ({ self.mComponentValues = relationshipArray })
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
  //--- To many property: mTexts
    for managedObject in self.mTexts {
      objects.append (managedObject)
    }
  //--- To many property: mComponentNames
    for managedObject in self.mComponentNames {
      objects.append (managedObject)
    }
  //--- To many property: mComponentValues
    for managedObject in self.mComponentValues {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: mTexts
    for managedObject in self.mTexts {
      objects.append (managedObject)
    }
  //--- To many property: mComponentNames
    for managedObject in self.mComponentNames {
      objects.append (managedObject)
    }
  //--- To many property: mComponentValues
    for managedObject in self.mComponentValues {
      objects.append (managedObject)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


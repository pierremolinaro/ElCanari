//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CanariLibraryEntry_mPath : class {
  var mPath : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CanariLibraryEntry_mUses : class {
  var mUses : Bool { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CanariLibraryEntry_mLibraryRepositoryURL : class {
  var mLibraryRepositoryURL : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CanariLibraryEntry_mUserAndPasswordTag : class {
  var mUserAndPasswordTag : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CanariLibraryEntry_mStatusImage : class {
  var mStatusImage : NSImage? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class CanariLibraryEntry : EBManagedObject,
         CanariLibraryEntry_mPath,
         CanariLibraryEntry_mUses,
         CanariLibraryEntry_mLibraryRepositoryURL,
         CanariLibraryEntry_mUserAndPasswordTag,
         CanariLibraryEntry_mStatusImage {

  //····················································································································
  //   Atomic property: mPath
  //····················································································································

  let mPath_property = EBStoredProperty_String (defaultValue: "Hello")

  //····················································································································

  final func reset_mPath_toDefaultValue () {
    self.mPath = "Hello"
  }

  //····················································································································

  final var mPath : String {
    get { return self.mPath_property.propval }
    set { self.mPath_property.setProp (newValue) }
  }

  //····················································································································

  final var mPath_property_selection : EBSelection <String> { return self.mPath_property.prop }

  //····················································································································
  //   Atomic property: mUses
  //····················································································································

  let mUses_property = EBStoredProperty_Bool (defaultValue: true)

  //····················································································································

  final func reset_mUses_toDefaultValue () {
    self.mUses = true
  }

  //····················································································································

  final var mUses : Bool {
    get { return self.mUses_property.propval }
    set { self.mUses_property.setProp (newValue) }
  }

  //····················································································································

  final var mUses_property_selection : EBSelection <Bool> { return self.mUses_property.prop }

  //····················································································································
  //   Atomic property: mLibraryRepositoryURL
  //····················································································································

  let mLibraryRepositoryURL_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  final func reset_mLibraryRepositoryURL_toDefaultValue () {
    self.mLibraryRepositoryURL = ""
  }

  //····················································································································

  final var mLibraryRepositoryURL : String {
    get { return self.mLibraryRepositoryURL_property.propval }
    set { self.mLibraryRepositoryURL_property.setProp (newValue) }
  }

  //····················································································································

  final var mLibraryRepositoryURL_property_selection : EBSelection <String> { return self.mLibraryRepositoryURL_property.prop }

  //····················································································································
  //   Atomic property: mUserAndPasswordTag
  //····················································································································

  let mUserAndPasswordTag_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  final func reset_mUserAndPasswordTag_toDefaultValue () {
    self.mUserAndPasswordTag = ""
  }

  //····················································································································

  final var mUserAndPasswordTag : String {
    get { return self.mUserAndPasswordTag_property.propval }
    set { self.mUserAndPasswordTag_property.setProp (newValue) }
  }

  //····················································································································

  final var mUserAndPasswordTag_property_selection : EBSelection <String> { return self.mUserAndPasswordTag_property.prop }

  //····················································································································
  //   Transient property: mStatusImage
  //····················································································································

  let mStatusImage_property = EBTransientProperty_NSImage ()

  //····················································································································

  var mStatusImage_property_selection : EBSelection <NSImage> {
    return self.mStatusImage_property.prop
  }

  //····················································································································

  var mStatusImage : NSImage? {
    switch self.mStatusImage_property_selection {
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
  //--- Atomic property: mPath
    self.mPath_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mUses
    self.mUses_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mLibraryRepositoryURL
    self.mLibraryRepositoryURL_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mUserAndPasswordTag
    self.mUserAndPasswordTag_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mStatusImage
    self.mStatusImage_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mPath_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPath_property_selection) {
          case (.single (let v0)) :
            return .single (transient_CanariLibraryEntry_mStatusImage (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPath_property.addEBObserver (self.mStatusImage_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
    self.mExternDelegate0 = CanariLibraryEntryDelegate (object: self)
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mPath_property.removeEBObserver (self.mStatusImage_property)
  //--- Unregister properties for handling signature
  }

  //····················································································································
  //    Extern delegates
  //····················································································································

  var mExternDelegate0 : CanariLibraryEntryDelegate? = nil

  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    super.populateExplorerWindow (&y, view:view)
    createEntryForPropertyNamed (
      "mPath",
      idx: self.mPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPath_property.mObserverExplorer,
      valueExplorer: &self.mPath_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mUses",
      idx: self.mUses_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mUses_property.mObserverExplorer,
      valueExplorer: &self.mUses_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mLibraryRepositoryURL",
      idx: self.mLibraryRepositoryURL_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mLibraryRepositoryURL_property.mObserverExplorer,
      valueExplorer: &self.mLibraryRepositoryURL_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mUserAndPasswordTag",
      idx: self.mUserAndPasswordTag_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mUserAndPasswordTag_property.mObserverExplorer,
      valueExplorer: &self.mUserAndPasswordTag_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "mStatusImage",
      idx: self.mStatusImage_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mStatusImage_property.mObserverExplorer,
      valueExplorer: &self.mStatusImage_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mPath
    self.mPath_property.mObserverExplorer = nil
    self.mPath_property.mValueExplorer = nil
  //--- Atomic property: mUses
    self.mUses_property.mObserverExplorer = nil
    self.mUses_property.mValueExplorer = nil
  //--- Atomic property: mLibraryRepositoryURL
    self.mLibraryRepositoryURL_property.mObserverExplorer = nil
    self.mLibraryRepositoryURL_property.mValueExplorer = nil
  //--- Atomic property: mUserAndPasswordTag
    self.mUserAndPasswordTag_property.mObserverExplorer = nil
    self.mUserAndPasswordTag_property.mValueExplorer = nil
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
  //--- Atomic property: mPath
    self.mPath_property.storeIn (dictionary: ioDictionary, forKey: "mPath")
  //--- Atomic property: mUses
    self.mUses_property.storeIn (dictionary: ioDictionary, forKey: "mUses")
  //--- Atomic property: mLibraryRepositoryURL
    self.mLibraryRepositoryURL_property.storeIn (dictionary: ioDictionary, forKey: "mLibraryRepositoryURL")
  //--- Atomic property: mUserAndPasswordTag
    self.mUserAndPasswordTag_property.storeIn (dictionary: ioDictionary, forKey: "mUserAndPasswordTag")
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
  //--- Atomic property: mPath
    self.mPath_property.readFrom (dictionary: inDictionary, forKey: "mPath")
  //--- Atomic property: mUses
    self.mUses_property.readFrom (dictionary: inDictionary, forKey: "mUses")
  //--- Atomic property: mLibraryRepositoryURL
    self.mLibraryRepositoryURL_property.readFrom (dictionary: inDictionary, forKey: "mLibraryRepositoryURL")
  //--- Atomic property: mUserAndPasswordTag
    self.mUserAndPasswordTag_property.readFrom (dictionary: inDictionary, forKey: "mUserAndPasswordTag")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mPath\n"
    ioString += "mUses\n"
    ioString += "mLibraryRepositoryURL\n"
    ioString += "mUserAndPasswordTag\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mPath.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mUses.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mLibraryRepositoryURL.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mUserAndPasswordTag.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
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

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


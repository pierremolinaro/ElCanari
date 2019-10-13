//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinTypeInDevice_mPinX : class {
  var mPinX : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinTypeInDevice_mPinY : class {
  var mPinY : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinTypeInDevice_mXName : class {
  var mXName : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinTypeInDevice_mYName : class {
  var mYName : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinTypeInDevice_mName : class {
  var mName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinTypeInDevice_mNameHorizontalAlignment : class {
  var mNameHorizontalAlignment : HorizontalAlignment { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinTypeInDevice_mPinNameIsDisplayedInSchematics : class {
  var mPinNameIsDisplayedInSchematics : Bool { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinTypeInDevice_mXNumber : class {
  var mXNumber : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinTypeInDevice_mYNumber : class {
  var mYNumber : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinTypeInDevice_mNumberHorizontalAlignment : class {
  var mNumberHorizontalAlignment : HorizontalAlignment { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinTypeInDevice_nameShape : class {
  var nameShape : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SymbolPinTypeInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SymbolPinTypeInDevice : EBManagedObject,
         SymbolPinTypeInDevice_mPinX,
         SymbolPinTypeInDevice_mPinY,
         SymbolPinTypeInDevice_mXName,
         SymbolPinTypeInDevice_mYName,
         SymbolPinTypeInDevice_mName,
         SymbolPinTypeInDevice_mNameHorizontalAlignment,
         SymbolPinTypeInDevice_mPinNameIsDisplayedInSchematics,
         SymbolPinTypeInDevice_mXNumber,
         SymbolPinTypeInDevice_mYNumber,
         SymbolPinTypeInDevice_mNumberHorizontalAlignment,
         SymbolPinTypeInDevice_nameShape {

  //····················································································································
  //   Atomic property: mPinX
  //····················································································································

  let mPinX_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mPinX : Int {
    get { return self.mPinX_property.propval }
    set { self.mPinX_property.setProp (newValue) }
  }

  //····················································································································

  var mPinX_property_selection : EBSelection <Int> { return self.mPinX_property.prop }

  //····················································································································
  //   Atomic property: mPinY
  //····················································································································

  let mPinY_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mPinY : Int {
    get { return self.mPinY_property.propval }
    set { self.mPinY_property.setProp (newValue) }
  }

  //····················································································································

  var mPinY_property_selection : EBSelection <Int> { return self.mPinY_property.prop }

  //····················································································································
  //   Atomic property: mXName
  //····················································································································

  let mXName_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mXName : Int {
    get { return self.mXName_property.propval }
    set { self.mXName_property.setProp (newValue) }
  }

  //····················································································································

  var mXName_property_selection : EBSelection <Int> { return self.mXName_property.prop }

  //····················································································································
  //   Atomic property: mYName
  //····················································································································

  let mYName_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mYName : Int {
    get { return self.mYName_property.propval }
    set { self.mYName_property.setProp (newValue) }
  }

  //····················································································································

  var mYName_property_selection : EBSelection <Int> { return self.mYName_property.prop }

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
  //   Atomic property: mNameHorizontalAlignment
  //····················································································································

  let mNameHorizontalAlignment_property = EBStoredProperty_HorizontalAlignment (defaultValue: HorizontalAlignment.center)

  //····················································································································

  var mNameHorizontalAlignment : HorizontalAlignment {
    get { return self.mNameHorizontalAlignment_property.propval }
    set { self.mNameHorizontalAlignment_property.setProp (newValue) }
  }

  //····················································································································

  var mNameHorizontalAlignment_property_selection : EBSelection <HorizontalAlignment> { return self.mNameHorizontalAlignment_property.prop }

  //····················································································································
  //   Atomic property: mPinNameIsDisplayedInSchematics
  //····················································································································

  let mPinNameIsDisplayedInSchematics_property = EBStoredProperty_Bool (defaultValue: true)

  //····················································································································

  var mPinNameIsDisplayedInSchematics : Bool {
    get { return self.mPinNameIsDisplayedInSchematics_property.propval }
    set { self.mPinNameIsDisplayedInSchematics_property.setProp (newValue) }
  }

  //····················································································································

  var mPinNameIsDisplayedInSchematics_property_selection : EBSelection <Bool> { return self.mPinNameIsDisplayedInSchematics_property.prop }

  //····················································································································
  //   Atomic property: mXNumber
  //····················································································································

  let mXNumber_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mXNumber : Int {
    get { return self.mXNumber_property.propval }
    set { self.mXNumber_property.setProp (newValue) }
  }

  //····················································································································

  var mXNumber_property_selection : EBSelection <Int> { return self.mXNumber_property.prop }

  //····················································································································
  //   Atomic property: mYNumber
  //····················································································································

  let mYNumber_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mYNumber : Int {
    get { return self.mYNumber_property.propval }
    set { self.mYNumber_property.setProp (newValue) }
  }

  //····················································································································

  var mYNumber_property_selection : EBSelection <Int> { return self.mYNumber_property.prop }

  //····················································································································
  //   Atomic property: mNumberHorizontalAlignment
  //····················································································································

  let mNumberHorizontalAlignment_property = EBStoredProperty_HorizontalAlignment (defaultValue: HorizontalAlignment.center)

  //····················································································································

  var mNumberHorizontalAlignment : HorizontalAlignment {
    get { return self.mNumberHorizontalAlignment_property.propval }
    set { self.mNumberHorizontalAlignment_property.setProp (newValue) }
  }

  //····················································································································

  var mNumberHorizontalAlignment_property_selection : EBSelection <HorizontalAlignment> { return self.mNumberHorizontalAlignment_property.prop }

  //····················································································································
  //   To many property: mInstances
  //····················································································································

  let mInstances_property = StoredArrayOf_SymbolPinInstanceInDevice (usedForSignature: false)

  //····················································································································

  var mInstances_property_selection : EBSelection < [SymbolPinInstanceInDevice] > {
    return self.mInstances_property.prop
  }

  //····················································································································

  var mInstances : [SymbolPinInstanceInDevice] {
    get { return self.mInstances_property.propval }
    set { self.mInstances_property.setProp (newValue) }
  }

  //····················································································································
  //   Transient property: nameShape
  //····················································································································

  let nameShape_property = EBTransientProperty_EBShape ()

  //····················································································································

  var nameShape_property_selection : EBSelection <EBShape> {
    return self.nameShape_property.prop
  }

  //····················································································································

  var nameShape : EBShape? {
    switch self.nameShape_property_selection {
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
  //--- Atomic property: mPinX
    self.mPinX_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mPinY
    self.mPinY_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mXName
    self.mXName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mYName
    self.mYName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mName
    self.mName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mNameHorizontalAlignment
    self.mNameHorizontalAlignment_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mPinNameIsDisplayedInSchematics
    self.mPinNameIsDisplayedInSchematics_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mXNumber
    self.mXNumber_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mYNumber
    self.mYNumber_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mNumberHorizontalAlignment
    self.mNumberHorizontalAlignment_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mInstances (has opposite relationship)
    self.mInstances_property.ebUndoManager = self.ebUndoManager
    self.mInstances_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mType_property.setProp (me) } },
      resetter: { inObject in inObject.mType_property.setProp (nil) }
    )
  //--- Atomic property: nameShape
    self.nameShape_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mXName_property_selection.kind ()
        kind &= unwSelf.mYName_property_selection.kind ()
        kind &= unwSelf.mName_property_selection.kind ()
        kind &= unwSelf.mNameHorizontalAlignment_property_selection.kind ()
        kind &= unwSelf.mPinNameIsDisplayedInSchematics_property_selection.kind ()
        kind &= g_Preferences!.pinNameFont_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mXName_property_selection, unwSelf.mYName_property_selection, unwSelf.mName_property_selection, unwSelf.mNameHorizontalAlignment_property_selection, unwSelf.mPinNameIsDisplayedInSchematics_property_selection, g_Preferences!.pinNameFont_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5)) :
            return .single (transient_SymbolPinTypeInDevice_nameShape (v0, v1, v2, v3, v4, v5))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mXName_property.addEBObserver (self.nameShape_property, postEvent: false)
    self.mYName_property.addEBObserver (self.nameShape_property, postEvent: false)
    self.mName_property.addEBObserver (self.nameShape_property, postEvent: false)
    self.mNameHorizontalAlignment_property.addEBObserver (self.nameShape_property, postEvent: false)
    self.mPinNameIsDisplayedInSchematics_property.addEBObserver (self.nameShape_property, postEvent: false)
    g_Preferences?.pinNameFont_property.addEBObserver (self.nameShape_property, postEvent: false)
    self.nameShape_property.postEvent ()
  //--- Install undoers and opposite setter for relationships
    self.mInstances_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mType_property.setProp (me) } },
      resetter: { inObject in inObject.mType_property.setProp (nil) }
    )
  //--- Register properties for handling signature
    self.mName_property.setSignatureObserver (observer: self)
    self.mNameHorizontalAlignment_property.setSignatureObserver (observer: self)
    self.mNumberHorizontalAlignment_property.setSignatureObserver (observer: self)
    self.mPinNameIsDisplayedInSchematics_property.setSignatureObserver (observer: self)
    self.mPinX_property.setSignatureObserver (observer: self)
    self.mPinY_property.setSignatureObserver (observer: self)
    self.mXName_property.setSignatureObserver (observer: self)
    self.mXNumber_property.setSignatureObserver (observer: self)
    self.mYName_property.setSignatureObserver (observer: self)
    self.mYNumber_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mXName_property.removeEBObserver (self.nameShape_property)
    self.mYName_property.removeEBObserver (self.nameShape_property)
    self.mName_property.removeEBObserver (self.nameShape_property)
    self.mNameHorizontalAlignment_property.removeEBObserver (self.nameShape_property)
    self.mPinNameIsDisplayedInSchematics_property.removeEBObserver (self.nameShape_property)
    g_Preferences?.pinNameFont_property.removeEBObserver (self.nameShape_property)
  //--- Unregister properties for handling signature
    self.mName_property.setSignatureObserver (observer: nil)
    self.mNameHorizontalAlignment_property.setSignatureObserver (observer: nil)
    self.mNumberHorizontalAlignment_property.setSignatureObserver (observer: nil)
    self.mPinNameIsDisplayedInSchematics_property.setSignatureObserver (observer: nil)
    self.mPinX_property.setSignatureObserver (observer: nil)
    self.mPinY_property.setSignatureObserver (observer: nil)
    self.mXName_property.setSignatureObserver (observer: nil)
    self.mXNumber_property.setSignatureObserver (observer: nil)
    self.mYName_property.setSignatureObserver (observer: nil)
    self.mYNumber_property.setSignatureObserver (observer: nil)
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
      "mPinX",
      idx: self.mPinX_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPinX_property.mObserverExplorer,
      valueExplorer: &self.mPinX_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mPinY",
      idx: self.mPinY_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPinY_property.mObserverExplorer,
      valueExplorer: &self.mPinY_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mXName",
      idx: self.mXName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mXName_property.mObserverExplorer,
      valueExplorer: &self.mXName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mYName",
      idx: self.mYName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mYName_property.mObserverExplorer,
      valueExplorer: &self.mYName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mName",
      idx: self.mName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mName_property.mObserverExplorer,
      valueExplorer: &self.mName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mNameHorizontalAlignment",
      idx: self.mNameHorizontalAlignment_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mNameHorizontalAlignment_property.mObserverExplorer,
      valueExplorer: &self.mNameHorizontalAlignment_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mPinNameIsDisplayedInSchematics",
      idx: self.mPinNameIsDisplayedInSchematics_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPinNameIsDisplayedInSchematics_property.mObserverExplorer,
      valueExplorer: &self.mPinNameIsDisplayedInSchematics_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mXNumber",
      idx: self.mXNumber_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mXNumber_property.mObserverExplorer,
      valueExplorer: &self.mXNumber_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mYNumber",
      idx: self.mYNumber_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mYNumber_property.mObserverExplorer,
      valueExplorer: &self.mYNumber_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mNumberHorizontalAlignment",
      idx: self.mNumberHorizontalAlignment_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mNumberHorizontalAlignment_property.mObserverExplorer,
      valueExplorer: &self.mNumberHorizontalAlignment_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "nameShape",
      idx: self.nameShape_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.nameShape_property.mObserverExplorer,
      valueExplorer: &self.nameShape_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "mInstances",
      idx:mInstances_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mInstances_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mPinX
    self.mPinX_property.mObserverExplorer = nil
    self.mPinX_property.mValueExplorer = nil
  //--- Atomic property: mPinY
    self.mPinY_property.mObserverExplorer = nil
    self.mPinY_property.mValueExplorer = nil
  //--- Atomic property: mXName
    self.mXName_property.mObserverExplorer = nil
    self.mXName_property.mValueExplorer = nil
  //--- Atomic property: mYName
    self.mYName_property.mObserverExplorer = nil
    self.mYName_property.mValueExplorer = nil
  //--- Atomic property: mName
    self.mName_property.mObserverExplorer = nil
    self.mName_property.mValueExplorer = nil
  //--- Atomic property: mNameHorizontalAlignment
    self.mNameHorizontalAlignment_property.mObserverExplorer = nil
    self.mNameHorizontalAlignment_property.mValueExplorer = nil
  //--- Atomic property: mPinNameIsDisplayedInSchematics
    self.mPinNameIsDisplayedInSchematics_property.mObserverExplorer = nil
    self.mPinNameIsDisplayedInSchematics_property.mValueExplorer = nil
  //--- Atomic property: mXNumber
    self.mXNumber_property.mObserverExplorer = nil
    self.mXNumber_property.mValueExplorer = nil
  //--- Atomic property: mYNumber
    self.mYNumber_property.mObserverExplorer = nil
    self.mYNumber_property.mValueExplorer = nil
  //--- Atomic property: mNumberHorizontalAlignment
    self.mNumberHorizontalAlignment_property.mObserverExplorer = nil
    self.mNumberHorizontalAlignment_property.mValueExplorer = nil
  //--- To many property: mInstances
    self.mInstances_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mInstances = []
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
  //--- Atomic property: mPinX
    self.mPinX_property.storeIn (dictionary: ioDictionary, forKey:"mPinX")
  //--- Atomic property: mPinY
    self.mPinY_property.storeIn (dictionary: ioDictionary, forKey:"mPinY")
  //--- Atomic property: mXName
    self.mXName_property.storeIn (dictionary: ioDictionary, forKey:"mXName")
  //--- Atomic property: mYName
    self.mYName_property.storeIn (dictionary: ioDictionary, forKey:"mYName")
  //--- Atomic property: mName
    self.mName_property.storeIn (dictionary: ioDictionary, forKey:"mName")
  //--- Atomic property: mNameHorizontalAlignment
    self.mNameHorizontalAlignment_property.storeIn (dictionary: ioDictionary, forKey:"mNameHorizontalAlignment")
  //--- Atomic property: mPinNameIsDisplayedInSchematics
    self.mPinNameIsDisplayedInSchematics_property.storeIn (dictionary: ioDictionary, forKey:"mPinNameIsDisplayedInSchematics")
  //--- Atomic property: mXNumber
    self.mXNumber_property.storeIn (dictionary: ioDictionary, forKey:"mXNumber")
  //--- Atomic property: mYNumber
    self.mYNumber_property.storeIn (dictionary: ioDictionary, forKey:"mYNumber")
  //--- Atomic property: mNumberHorizontalAlignment
    self.mNumberHorizontalAlignment_property.storeIn (dictionary: ioDictionary, forKey:"mNumberHorizontalAlignment")
  //--- To many property: mInstances
    self.store (
      managedObjectArray: self.mInstances_property.propval,
      relationshipName: "mInstances",
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
    ) as! [SymbolPinInstanceInDevice])
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mPinX
    self.mPinX_property.readFrom (dictionary: inDictionary, forKey:"mPinX")
  //--- Atomic property: mPinY
    self.mPinY_property.readFrom (dictionary: inDictionary, forKey:"mPinY")
  //--- Atomic property: mXName
    self.mXName_property.readFrom (dictionary: inDictionary, forKey:"mXName")
  //--- Atomic property: mYName
    self.mYName_property.readFrom (dictionary: inDictionary, forKey:"mYName")
  //--- Atomic property: mName
    self.mName_property.readFrom (dictionary: inDictionary, forKey:"mName")
  //--- Atomic property: mNameHorizontalAlignment
    self.mNameHorizontalAlignment_property.readFrom (dictionary: inDictionary, forKey:"mNameHorizontalAlignment")
  //--- Atomic property: mPinNameIsDisplayedInSchematics
    self.mPinNameIsDisplayedInSchematics_property.readFrom (dictionary: inDictionary, forKey:"mPinNameIsDisplayedInSchematics")
  //--- Atomic property: mXNumber
    self.mXNumber_property.readFrom (dictionary: inDictionary, forKey:"mXNumber")
  //--- Atomic property: mYNumber
    self.mYNumber_property.readFrom (dictionary: inDictionary, forKey:"mYNumber")
  //--- Atomic property: mNumberHorizontalAlignment
    self.mNumberHorizontalAlignment_property.readFrom (dictionary: inDictionary, forKey:"mNumberHorizontalAlignment")
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
  }

  //····················································································································
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.mName_property.signature ())
    crc.accumulateUInt32 (self.mNameHorizontalAlignment_property.signature ())
    crc.accumulateUInt32 (self.mNumberHorizontalAlignment_property.signature ())
    crc.accumulateUInt32 (self.mPinNameIsDisplayedInSchematics_property.signature ())
    crc.accumulateUInt32 (self.mPinX_property.signature ())
    crc.accumulateUInt32 (self.mPinY_property.signature ())
    crc.accumulateUInt32 (self.mXName_property.signature ())
    crc.accumulateUInt32 (self.mXNumber_property.signature ())
    crc.accumulateUInt32 (self.mYName_property.signature ())
    crc.accumulateUInt32 (self.mYNumber_property.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


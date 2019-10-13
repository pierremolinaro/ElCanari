//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolInstanceInDevice_mInstanceName : class {
  var mInstanceName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolInstanceInDevice_mX : class {
  var mX : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolInstanceInDevice_mY : class {
  var mY : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolInstanceInDevice_symbolQualifiedName : class {
  var symbolQualifiedName : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolInstanceInDevice_symbolTypeName : class {
  var symbolTypeName : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolInstanceInDevice_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolInstanceInDevice_unconnectedPins : class {
  var unconnectedPins : UnconnectedSymbolPinsInDevice? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolInstanceInDevice_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SymbolInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SymbolInstanceInDevice : EBGraphicManagedObject,
         SymbolInstanceInDevice_mInstanceName,
         SymbolInstanceInDevice_mX,
         SymbolInstanceInDevice_mY,
         SymbolInstanceInDevice_symbolQualifiedName,
         SymbolInstanceInDevice_symbolTypeName,
         SymbolInstanceInDevice_selectionDisplay,
         SymbolInstanceInDevice_unconnectedPins,
         SymbolInstanceInDevice_objectDisplay {

  //····················································································································
  //   To many property: mPinInstances
  //····················································································································

  let mPinInstances_property = StoredArrayOf_SymbolPinInstanceInDevice (usedForSignature: true)

  //····················································································································

  var mPinInstances_property_selection : EBSelection < [SymbolPinInstanceInDevice] > {
    return self.mPinInstances_property.prop
  }

  //····················································································································

  var mPinInstances : [SymbolPinInstanceInDevice] {
    get { return self.mPinInstances_property.propval }
    set { self.mPinInstances_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: mInstanceName
  //····················································································································

  let mInstanceName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mInstanceName : String {
    get { return self.mInstanceName_property.propval }
    set { self.mInstanceName_property.setProp (newValue) }
  }

  //····················································································································

  var mInstanceName_property_selection : EBSelection <String> { return self.mInstanceName_property.prop }

  //····················································································································
  //   Atomic property: mX
  //····················································································································

  let mX_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mX : Int {
    get { return self.mX_property.propval }
    set { self.mX_property.setProp (newValue) }
  }

  //····················································································································

  var mX_property_selection : EBSelection <Int> { return self.mX_property.prop }

  //····················································································································
  //   Atomic property: mY
  //····················································································································

  let mY_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mY : Int {
    get { return self.mY_property.propval }
    set { self.mY_property.setProp (newValue) }
  }

  //····················································································································

  var mY_property_selection : EBSelection <Int> { return self.mY_property.prop }

  //····················································································································
  //   To one property: mType
  //····················································································································

   let mType_property = StoredObject_SymbolTypeInDevice (usedForSignature: false)

  //····················································································································

  var mType_property_selection : EBSelection <SymbolTypeInDevice?> {
    return .single (self.mType_property.propval)
  }

  //····················································································································

  var mType : SymbolTypeInDevice? {
    get {
      return self.mType_property.propval
    }
    set {
      if self.mType_property.propval != nil {
        self.mType_property.setProp (nil)
      }
      if newValue != nil {
        self.mType_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  var mType_none : StoredObject_SymbolTypeInDevice { return self.mType_property }

  //····················································································································

  var mType_none_selection : EBSelection <Bool> {
    return .single (self.mType_property.propval == nil)
  }

  //····················································································································
  //   Transient property: symbolQualifiedName
  //····················································································································

  let symbolQualifiedName_property = EBTransientProperty_String ()

  //····················································································································

  var symbolQualifiedName_property_selection : EBSelection <String> {
    return self.symbolQualifiedName_property.prop
  }

  //····················································································································

  var symbolQualifiedName : String? {
    switch self.symbolQualifiedName_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: symbolTypeName
  //····················································································································

  let symbolTypeName_property = EBTransientProperty_String ()

  //····················································································································

  var symbolTypeName_property_selection : EBSelection <String> {
    return self.symbolTypeName_property.prop
  }

  //····················································································································

  var symbolTypeName : String? {
    switch self.symbolTypeName_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: unconnectedPins
  //····················································································································

  let unconnectedPins_property = EBTransientProperty_UnconnectedSymbolPinsInDevice ()

  //····················································································································

  var unconnectedPins_property_selection : EBSelection <UnconnectedSymbolPinsInDevice> {
    return self.unconnectedPins_property.prop
  }

  //····················································································································

  var unconnectedPins : UnconnectedSymbolPinsInDevice? {
    switch self.unconnectedPins_property_selection {
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
  //--- To many property: mPinInstances (has opposite relationship)
    self.mPinInstances_property.ebUndoManager = self.ebUndoManager
    self.mPinInstances_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mSymbolInstance_property.setProp (me) } },
      resetter: { inObject in inObject.mSymbolInstance_property.setProp (nil) }
    )
  //--- Atomic property: mInstanceName
    self.mInstanceName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mX
    self.mX_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mY
    self.mY_property.ebUndoManager = self.ebUndoManager
  //--- To one property: mType (has opposite to many relationship: mInstances)
    self.mType_property.ebUndoManager = self.ebUndoManager
    self.mType_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mInstances_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mInstances_property.remove (me) } }
    )
  //--- Atomic property: symbolQualifiedName
    self.symbolQualifiedName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mInstanceName_property_selection.kind ()
        kind &= unwSelf.mType_property.mTypeName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mInstanceName_property_selection, unwSelf.mType_property.mTypeName_property_selection) {
          case (.single (let v0), .single (let v1)) :
            return .single (transient_SymbolInstanceInDevice_symbolQualifiedName (v0, v1))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mInstanceName_property.addEBObserver (self.symbolQualifiedName_property, postEvent: false)
    self.mType_property.addEBObserverOf_mTypeName (self.symbolQualifiedName_property, postEvent: false)
    self.symbolQualifiedName_property.postEvent ()
  //--- Atomic property: symbolTypeName
    self.symbolTypeName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mType_property.mTypeName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mType_property.mTypeName_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SymbolInstanceInDevice_symbolTypeName (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mType_property.addEBObserverOf_mTypeName (self.symbolTypeName_property, postEvent: false)
    self.symbolTypeName_property.postEvent ()
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mType_property.mStrokeBezierPath_property_selection.kind ()
        kind &= unwSelf.mType_property.mFilledBezierPath_property_selection.kind ()
        kind &= unwSelf.mType_property.pinNameShape_property_selection.kind ()
        kind &= unwSelf.mPinInstances_property_selection.kind ()
        kind &= unwSelf.symbolQualifiedName_property_selection.kind ()
        kind &= g_Preferences!.symbolDrawingWidthMultipliedByTen_property_selection.kind ()
        kind &= unwSelf.mX_property_selection.kind ()
        kind &= unwSelf.mY_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mType_property.mStrokeBezierPath_property_selection, unwSelf.mType_property.mFilledBezierPath_property_selection, unwSelf.mType_property.pinNameShape_property_selection, unwSelf.mPinInstances_property_selection, unwSelf.symbolQualifiedName_property_selection, g_Preferences!.symbolDrawingWidthMultipliedByTen_property_selection, unwSelf.mX_property_selection, unwSelf.mY_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7)) :
            return .single (transient_SymbolInstanceInDevice_selectionDisplay (v0, v1, v2, v3, v4, v5, v6, v7))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mType_property.addEBObserverOf_mStrokeBezierPath (self.selectionDisplay_property, postEvent: false)
    self.mType_property.addEBObserverOf_mFilledBezierPath (self.selectionDisplay_property, postEvent: false)
    self.mType_property.addEBObserverOf_pinNameShape (self.selectionDisplay_property, postEvent: false)
    self.mPinInstances_property.addEBObserverOf_numberShape (self.selectionDisplay_property, postEvent: false)
    self.symbolQualifiedName_property.addEBObserver (self.selectionDisplay_property, postEvent: false)
    g_Preferences?.symbolDrawingWidthMultipliedByTen_property.addEBObserver (self.selectionDisplay_property, postEvent: false)
    self.mX_property.addEBObserver (self.selectionDisplay_property, postEvent: false)
    self.mY_property.addEBObserver (self.selectionDisplay_property, postEvent: false)
    self.selectionDisplay_property.postEvent ()
  //--- Atomic property: unconnectedPins
    self.unconnectedPins_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mPinInstances_property_selection.kind ()
        kind &= unwSelf.mPinInstances_property_selection.kind ()
        kind &= unwSelf.mInstanceName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPinInstances_property_selection, unwSelf.mPinInstances_property_selection, unwSelf.mInstanceName_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2)) :
            return .single (transient_SymbolInstanceInDevice_unconnectedPins (v0, v1, v2))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPinInstances_property.addEBObserverOf_pinName (self.unconnectedPins_property, postEvent: false)
    self.mPinInstances_property.addEBObserverOf_isConnected (self.unconnectedPins_property, postEvent: false)
    self.mInstanceName_property.addEBObserver (self.unconnectedPins_property, postEvent: false)
    self.unconnectedPins_property.postEvent ()
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mType_property.mStrokeBezierPath_property_selection.kind ()
        kind &= unwSelf.mType_property.mFilledBezierPath_property_selection.kind ()
        kind &= unwSelf.mType_property.pinNameShape_property_selection.kind ()
        kind &= unwSelf.mPinInstances_property_selection.kind ()
        kind &= unwSelf.symbolQualifiedName_property_selection.kind ()
        kind &= unwSelf.mX_property_selection.kind ()
        kind &= unwSelf.mY_property_selection.kind ()
        kind &= g_Preferences!.symbolDrawingWidthMultipliedByTen_property_selection.kind ()
        kind &= g_Preferences!.symbolColor_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mType_property.mStrokeBezierPath_property_selection, unwSelf.mType_property.mFilledBezierPath_property_selection, unwSelf.mType_property.pinNameShape_property_selection, unwSelf.mPinInstances_property_selection, unwSelf.symbolQualifiedName_property_selection, unwSelf.mX_property_selection, unwSelf.mY_property_selection, g_Preferences!.symbolDrawingWidthMultipliedByTen_property_selection, g_Preferences!.symbolColor_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7), .single (let v8)) :
            return .single (transient_SymbolInstanceInDevice_objectDisplay (v0, v1, v2, v3, v4, v5, v6, v7, v8))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mType_property.addEBObserverOf_mStrokeBezierPath (self.objectDisplay_property, postEvent: false)
    self.mType_property.addEBObserverOf_mFilledBezierPath (self.objectDisplay_property, postEvent: false)
    self.mType_property.addEBObserverOf_pinNameShape (self.objectDisplay_property, postEvent: false)
    self.mPinInstances_property.addEBObserverOf_numberShape (self.objectDisplay_property, postEvent: false)
    self.symbolQualifiedName_property.addEBObserver (self.objectDisplay_property, postEvent: false)
    self.mX_property.addEBObserver (self.objectDisplay_property, postEvent: false)
    self.mY_property.addEBObserver (self.objectDisplay_property, postEvent: false)
    g_Preferences?.symbolDrawingWidthMultipliedByTen_property.addEBObserver (self.objectDisplay_property, postEvent: false)
    g_Preferences?.symbolColor_property.addEBObserver (self.objectDisplay_property, postEvent: false)
    self.objectDisplay_property.postEvent ()
  //--- Install undoers and opposite setter for relationships
    self.mPinInstances_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mSymbolInstance_property.setProp (me) } },
      resetter: { inObject in inObject.mSymbolInstance_property.setProp (nil) }
    )
  //--- Register properties for handling signature
    self.mInstanceName_property.setSignatureObserver (observer: self)
    self.mPinInstances_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mInstanceName_property.removeEBObserver (self.symbolQualifiedName_property)
    self.mType_property.removeEBObserverOf_mTypeName (self.symbolQualifiedName_property)
    self.mType_property.removeEBObserverOf_mTypeName (self.symbolTypeName_property)
    self.mType_property.removeEBObserverOf_mStrokeBezierPath (self.selectionDisplay_property)
    self.mType_property.removeEBObserverOf_mFilledBezierPath (self.selectionDisplay_property)
    self.mType_property.removeEBObserverOf_pinNameShape (self.selectionDisplay_property)
    self.mPinInstances_property.removeEBObserverOf_numberShape (self.selectionDisplay_property)
    self.symbolQualifiedName_property.removeEBObserver (self.selectionDisplay_property)
    g_Preferences?.symbolDrawingWidthMultipliedByTen_property.removeEBObserver (self.selectionDisplay_property)
    self.mX_property.removeEBObserver (self.selectionDisplay_property)
    self.mY_property.removeEBObserver (self.selectionDisplay_property)
    self.mPinInstances_property.removeEBObserverOf_pinName (self.unconnectedPins_property)
    self.mPinInstances_property.removeEBObserverOf_isConnected (self.unconnectedPins_property)
    self.mInstanceName_property.removeEBObserver (self.unconnectedPins_property)
    self.mType_property.removeEBObserverOf_mStrokeBezierPath (self.objectDisplay_property)
    self.mType_property.removeEBObserverOf_mFilledBezierPath (self.objectDisplay_property)
    self.mType_property.removeEBObserverOf_pinNameShape (self.objectDisplay_property)
    self.mPinInstances_property.removeEBObserverOf_numberShape (self.objectDisplay_property)
    self.symbolQualifiedName_property.removeEBObserver (self.objectDisplay_property)
    self.mX_property.removeEBObserver (self.objectDisplay_property)
    self.mY_property.removeEBObserver (self.objectDisplay_property)
    g_Preferences?.symbolDrawingWidthMultipliedByTen_property.removeEBObserver (self.objectDisplay_property)
    g_Preferences?.symbolColor_property.removeEBObserver (self.objectDisplay_property)
  //--- Unregister properties for handling signature
    self.mInstanceName_property.setSignatureObserver (observer: nil)
    self.mPinInstances_property.setSignatureObserver (observer: nil)
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
      "mInstanceName",
      idx: self.mInstanceName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mInstanceName_property.mObserverExplorer,
      valueExplorer: &self.mInstanceName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mX",
      idx: self.mX_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mX_property.mObserverExplorer,
      valueExplorer: &self.mX_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mY",
      idx: self.mY_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mY_property.mObserverExplorer,
      valueExplorer: &self.mY_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "symbolQualifiedName",
      idx: self.symbolQualifiedName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.symbolQualifiedName_property.mObserverExplorer,
      valueExplorer: &self.symbolQualifiedName_property.mValueExplorer
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
      "selectionDisplay",
      idx: self.selectionDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.selectionDisplay_property.mObserverExplorer,
      valueExplorer: &self.selectionDisplay_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "unconnectedPins",
      idx: self.unconnectedPins_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.unconnectedPins_property.mObserverExplorer,
      valueExplorer: &self.unconnectedPins_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "objectDisplay",
      idx: self.objectDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.objectDisplay_property.mObserverExplorer,
      valueExplorer: &self.objectDisplay_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "mPinInstances",
      idx:mPinInstances_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mPinInstances_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mType",
      idx:self.mType_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mType_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- To many property: mPinInstances
    self.mPinInstances_property.mValueExplorer = nil
  //--- Atomic property: mInstanceName
    self.mInstanceName_property.mObserverExplorer = nil
    self.mInstanceName_property.mValueExplorer = nil
  //--- Atomic property: mX
    self.mX_property.mObserverExplorer = nil
    self.mX_property.mValueExplorer = nil
  //--- Atomic property: mY
    self.mY_property.mObserverExplorer = nil
    self.mY_property.mValueExplorer = nil
  //--- To one property: mType
    self.mType_property.mObserverExplorer = nil
    self.mType_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mPinInstances = []
  //---
    super.cleanUpToManyRelationships ()
  }

  //····················································································································
  //    cleanUpToOneRelationships
  //····················································································································

  override internal func cleanUpToOneRelationships () {
    self.mType = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- To many property: mPinInstances
    self.store (
      managedObjectArray: self.mPinInstances_property.propval,
      relationshipName: "mPinInstances",
      intoDictionary: ioDictionary
    )
  //--- Atomic property: mInstanceName
    self.mInstanceName_property.storeIn (dictionary: ioDictionary, forKey:"mInstanceName")
  //--- Atomic property: mX
    self.mX_property.storeIn (dictionary: ioDictionary, forKey:"mX")
  //--- Atomic property: mY
    self.mY_property.storeIn (dictionary: ioDictionary, forKey:"mY")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: mPinInstances
    self.mPinInstances_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mPinInstances",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [SymbolPinInstanceInDevice])
  //--- To one property: mType
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mType",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? SymbolTypeInDevice {
        self.mType_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mInstanceName
    self.mInstanceName_property.readFrom (dictionary: inDictionary, forKey:"mInstanceName")
  //--- Atomic property: mX
    self.mX_property.readFrom (dictionary: inDictionary, forKey:"mX")
  //--- Atomic property: mY
    self.mY_property.readFrom (dictionary: inDictionary, forKey:"mY")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: mPinInstances
    for managedObject in self.mPinInstances {
      objects.append (managedObject)
    }
  //--- To one property: mType
    if let object = self.mType {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: mPinInstances
    for managedObject in self.mPinInstances {
      objects.append (managedObject)
    }
  //--- To one property: mType
    if let object = self.mType {
      objects.append (object)
    }
  }

  //····················································································································
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.mInstanceName_property.signature ())
    crc.accumulateUInt32 (self.mPinInstances_property.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


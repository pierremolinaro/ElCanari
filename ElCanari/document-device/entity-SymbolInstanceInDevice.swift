//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolInstanceInDevice_mInstanceName : AnyObject {
  var mInstanceName : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolInstanceInDevice_mX : AnyObject {
  var mX : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolInstanceInDevice_mY : AnyObject {
  var mY : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolInstanceInDevice_symbolQualifiedName : AnyObject {
  var symbolQualifiedName : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolInstanceInDevice_symbolTypeName : AnyObject {
  var symbolTypeName : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolInstanceInDevice_selectionDisplay : AnyObject {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolInstanceInDevice_unconnectedPins : AnyObject {
  var unconnectedPins : UnconnectedSymbolPinsInDevice? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolInstanceInDevice_objectDisplay : AnyObject {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: SymbolInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

final class SymbolInstanceInDevice : EBGraphicManagedObject,
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

  final let mPinInstances_property = StoredArrayOf_SymbolPinInstanceInDevice (usedForSignature: true)

  //····················································································································

  final var mPinInstances_property_selection : EBSelection < [SymbolPinInstanceInDevice] > {
    return self.mPinInstances_property.selection
  }

  //····················································································································

  final var mPinInstances : [SymbolPinInstanceInDevice] {
    get { return self.mPinInstances_property.propval }
    set { self.mPinInstances_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: mInstanceName
  //····················································································································

  final let mInstanceName_property : EBStoredProperty_String

  //····················································································································

  final func reset_mInstanceName_toDefaultValue () {
    self.mInstanceName = ""
  }

  //····················································································································

  final var mInstanceName : String {
    get { return self.mInstanceName_property.propval }
    set { self.mInstanceName_property.setProp (newValue) }
  }

  //····················································································································

  final var mInstanceName_property_selection : EBSelection <String> { return self.mInstanceName_property.selection }

  //····················································································································
  //   Atomic property: mX
  //····················································································································

  final let mX_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mX_toDefaultValue () {
    self.mX = 0
  }

  //····················································································································

  final var mX : Int {
    get { return self.mX_property.propval }
    set { self.mX_property.setProp (newValue) }
  }

  //····················································································································

  final var mX_property_selection : EBSelection <Int> { return self.mX_property.selection }

  //····················································································································
  //   Atomic property: mY
  //····················································································································

  final let mY_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mY_toDefaultValue () {
    self.mY = 0
  }

  //····················································································································

  final var mY : Int {
    get { return self.mY_property.propval }
    set { self.mY_property.setProp (newValue) }
  }

  //····················································································································

  final var mY_property_selection : EBSelection <Int> { return self.mY_property.selection }

  //····················································································································
  //   To one property: mType
  //····················································································································

  final let mType_property = StoredObject_SymbolTypeInDevice (usedForSignature: false)

  //····················································································································

  final var mType_property_selection : EBSelection <SymbolTypeInDevice?> {
    return .single (self.mType_property.propval)
  }

  //····················································································································

  final var mType : SymbolTypeInDevice? {
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

  final var mType_none : StoredObject_SymbolTypeInDevice { return self.mType_property }

  //····················································································································

  final var mType_none_selection : EBSelection <Bool> {
    return .single (self.mType_property.propval == nil)
  }

  //····················································································································
  //   Transient property: symbolQualifiedName
  //····················································································································

  final let symbolQualifiedName_property = EBTransientProperty_String ()

  //····················································································································

  final var symbolQualifiedName_property_selection : EBSelection <String> {
    return self.symbolQualifiedName_property.selection
  }

  //····················································································································

  final var symbolQualifiedName : String? {
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
  //   Transient property: unconnectedPins
  //····················································································································

  final let unconnectedPins_property = EBTransientProperty_UnconnectedSymbolPinsInDevice ()

  //····················································································································

  final var unconnectedPins_property_selection : EBSelection <UnconnectedSymbolPinsInDevice> {
    return self.unconnectedPins_property.selection
  }

  //····················································································································

  final var unconnectedPins : UnconnectedSymbolPinsInDevice? {
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
    self.mInstanceName_property = EBStoredProperty_String (defaultValue: "", undoManager: ebUndoManager)
    self.mX_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.mY_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- To many property: mPinInstances (has opposite relationship)
    self.mPinInstances_property.ebUndoManager = self.ebUndoManager
    self.mPinInstances_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mSymbolInstance_property.setProp (me) } },
      resetter: { inObject in inObject.mSymbolInstance_property.setProp (nil) }
    )
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
    self.mInstanceName_property.addEBObserver (self.symbolQualifiedName_property)
    self.mType_property.addEBObserverOf_mTypeName (self.symbolQualifiedName_property)
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
    self.mType_property.addEBObserverOf_mTypeName (self.symbolTypeName_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mType_property.mStrokeBezierPath_property_selection.kind ()
        kind &= unwSelf.mType_property.mFilledBezierPath_property_selection.kind ()
        kind &= unwSelf.mType_property.pinNameShape_property_selection.kind ()
        kind &= unwSelf.mPinInstances_property_selection.kind ()
        kind &= unwSelf.symbolQualifiedName_property_selection.kind ()
        kind &= preferences_symbolDrawingWidthMultipliedByTen_property_selection.kind ()
        kind &= unwSelf.mX_property_selection.kind ()
        kind &= unwSelf.mY_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mType_property.mStrokeBezierPath_property_selection, unwSelf.mType_property.mFilledBezierPath_property_selection, unwSelf.mType_property.pinNameShape_property_selection, unwSelf.mPinInstances_property_selection, unwSelf.symbolQualifiedName_property_selection, preferences_symbolDrawingWidthMultipliedByTen_property_selection, unwSelf.mX_property_selection, unwSelf.mY_property_selection) {
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
    self.mType_property.addEBObserverOf_mStrokeBezierPath (self.selectionDisplay_property)
    self.mType_property.addEBObserverOf_mFilledBezierPath (self.selectionDisplay_property)
    self.mType_property.addEBObserverOf_pinNameShape (self.selectionDisplay_property)
    self.mPinInstances_property.addEBObserverOf_numberShape (self.selectionDisplay_property)
    self.symbolQualifiedName_property.addEBObserver (self.selectionDisplay_property)
    preferences_symbolDrawingWidthMultipliedByTen_property.addEBObserver (self.selectionDisplay_property)
    self.mX_property.addEBObserver (self.selectionDisplay_property)
    self.mY_property.addEBObserver (self.selectionDisplay_property)
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
    self.mPinInstances_property.addEBObserverOf_pinName (self.unconnectedPins_property)
    self.mPinInstances_property.addEBObserverOf_isConnected (self.unconnectedPins_property)
    self.mInstanceName_property.addEBObserver (self.unconnectedPins_property)
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
        kind &= preferences_symbolDrawingWidthMultipliedByTen_property_selection.kind ()
        kind &= preferences_symbolColor_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mType_property.mStrokeBezierPath_property_selection, unwSelf.mType_property.mFilledBezierPath_property_selection, unwSelf.mType_property.pinNameShape_property_selection, unwSelf.mPinInstances_property_selection, unwSelf.symbolQualifiedName_property_selection, unwSelf.mX_property_selection, unwSelf.mY_property_selection, preferences_symbolDrawingWidthMultipliedByTen_property_selection, preferences_symbolColor_property_selection) {
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
    self.mType_property.addEBObserverOf_mStrokeBezierPath (self.objectDisplay_property)
    self.mType_property.addEBObserverOf_mFilledBezierPath (self.objectDisplay_property)
    self.mType_property.addEBObserverOf_pinNameShape (self.objectDisplay_property)
    self.mPinInstances_property.addEBObserverOf_numberShape (self.objectDisplay_property)
    self.symbolQualifiedName_property.addEBObserver (self.objectDisplay_property)
    self.mX_property.addEBObserver (self.objectDisplay_property)
    self.mY_property.addEBObserver (self.objectDisplay_property)
    preferences_symbolDrawingWidthMultipliedByTen_property.addEBObserver (self.objectDisplay_property)
    preferences_symbolColor_property.addEBObserver (self.objectDisplay_property)
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
    // self.mInstanceName_property.removeEBObserver (self.symbolQualifiedName_property)
    // self.mType_property.mTypeName_property.removeEBObserver (self.symbolQualifiedName_property)
    // self.mType_property.mTypeName_property.removeEBObserver (self.symbolTypeName_property)
    // self.mType_property.mStrokeBezierPath_property.removeEBObserver (self.selectionDisplay_property)
    // self.mType_property.mFilledBezierPath_property.removeEBObserver (self.selectionDisplay_property)
    // self.mType_property.pinNameShape_property.removeEBObserver (self.selectionDisplay_property)
    // self.mPinInstances_property.removeEBObserverOf_numberShape (self.selectionDisplay_property)
    // self.symbolQualifiedName_property.removeEBObserver (self.selectionDisplay_property)
    // preferences_symbolDrawingWidthMultipliedByTen_property.removeEBObserver (self.selectionDisplay_property)
    // self.mX_property.removeEBObserver (self.selectionDisplay_property)
    // self.mY_property.removeEBObserver (self.selectionDisplay_property)
    // self.mPinInstances_property.removeEBObserverOf_pinName (self.unconnectedPins_property)
    // self.mPinInstances_property.removeEBObserverOf_isConnected (self.unconnectedPins_property)
    // self.mInstanceName_property.removeEBObserver (self.unconnectedPins_property)
    // self.mType_property.mStrokeBezierPath_property.removeEBObserver (self.objectDisplay_property)
    // self.mType_property.mFilledBezierPath_property.removeEBObserver (self.objectDisplay_property)
    // self.mType_property.pinNameShape_property.removeEBObserver (self.objectDisplay_property)
    // self.mPinInstances_property.removeEBObserverOf_numberShape (self.objectDisplay_property)
    // self.symbolQualifiedName_property.removeEBObserver (self.objectDisplay_property)
    // self.mX_property.removeEBObserver (self.objectDisplay_property)
    // self.mY_property.removeEBObserver (self.objectDisplay_property)
    // preferences_symbolDrawingWidthMultipliedByTen_property.removeEBObserver (self.objectDisplay_property)
    // preferences_symbolColor_property.removeEBObserver (self.objectDisplay_property)
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
    self.mInstanceName_property.storeIn (dictionary: ioDictionary, forKey: "mInstanceName")
  //--- Atomic property: mX
    self.mX_property.storeIn (dictionary: ioDictionary, forKey: "mX")
  //--- Atomic property: mY
    self.mY_property.storeIn (dictionary: ioDictionary, forKey: "mY")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
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
    self.mInstanceName_property.readFrom (dictionary: inDictionary, forKey: "mInstanceName")
  //--- Atomic property: mX
    self.mX_property.readFrom (dictionary: inDictionary, forKey: "mX")
  //--- Atomic property: mY
    self.mY_property.readFrom (dictionary: inDictionary, forKey: "mY")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mInstanceName\n"
    ioString += "mX\n"
    ioString += "mY\n"
  //--- To one relationships
    ioString += "mType\n"
  //--- To many relationships
    ioString += "mPinInstances\n"
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mInstanceName.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mX.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mY.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
    if let object = self.mType {
      ioData.append (base62Encoded: object.savingIndex)
    }
    ioData.append (ascii: .lineFeed)
  //--- To many relationships
    do{
      var optionalFirstIndex : Int? = nil
      var rangeCount = 0
      for object in self.mPinInstances {
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
      if let range = inDictionary ["mInstanceName"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mInstanceName = value
      }
      if let range = inDictionary ["mX"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mX = value
      }
      if let range = inDictionary ["mY"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mY = value
      }
    //--- To one relationships
      if let range = inDictionary ["mType"], let objectIndex = inData.base62EncodedInt (range: range) {
        inParallelObjectSetupContext.mMutex.wait ()
        inParallelObjectSetupContext.mToOneSetUpOperationList.append ({ self.mType = inObjectArray [objectIndex] as? SymbolTypeInDevice })
        inParallelObjectSetupContext.mMutex.signal ()
      }
    //--- To many relationships
      if let range = inDictionary ["mPinInstances"], range.length > 0 {
        var relationshipArray = [SymbolPinInstanceInDevice] ()
        let indexArray = inData.base62EncodedIntArray (fromRange: range)
        for idx in indexArray {
          relationshipArray.append (inObjectArray [idx] as! SymbolPinInstanceInDevice)
        }
        inParallelObjectSetupContext.mMutex.wait ()
        inParallelObjectSetupContext.mToManySetUpOperationList.append ({ self.mPinInstances = relationshipArray })
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

//----------------------------------------------------------------------------------------------------------------------


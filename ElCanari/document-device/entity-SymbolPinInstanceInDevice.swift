//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinInstanceInDevice_pinName : class {
  var pinName : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinInstanceInDevice_symbolName : class {
  var symbolName : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinInstanceInDevice_pinQualifiedName : class {
  var pinQualifiedName : PinQualifiedNameStruct? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinInstanceInDevice_isConnected : class {
  var isConnected : Bool? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolPinInstanceInDevice_numberShape : class {
  var numberShape : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SymbolPinInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SymbolPinInstanceInDevice : EBManagedObject,
         SymbolPinInstanceInDevice_pinName,
         SymbolPinInstanceInDevice_symbolName,
         SymbolPinInstanceInDevice_pinQualifiedName,
         SymbolPinInstanceInDevice_isConnected,
         SymbolPinInstanceInDevice_numberShape {

  //····················································································································
  //   To one property: mSymbolInstance
  //····················································································································

   let mSymbolInstance_property = StoredObject_SymbolInstanceInDevice ()

  //····················································································································

  var mSymbolInstance_property_selection : EBSelection <SymbolInstanceInDevice?> {
    return .single (self.mSymbolInstance_property.propval)
  }

  //····················································································································

  var mSymbolInstance : SymbolInstanceInDevice? {
    get {
      return self.mSymbolInstance_property.propval
    }
    set {
      if self.mSymbolInstance_property.propval != nil {
        self.mSymbolInstance_property.setProp (nil)
      }
      if newValue != nil {
        self.mSymbolInstance_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  var mSymbolInstance_none : StoredObject_SymbolInstanceInDevice { return self.mSymbolInstance_property }

  //····················································································································

  var mSymbolInstance_none_selection : EBSelection <Bool> {
    return .single (self.mSymbolInstance_property.propval == nil)
  }

  //····················································································································
  //   To one property: mType
  //····················································································································

   let mType_property = StoredObject_SymbolPinTypeInDevice ()

  //····················································································································

  var mType_property_selection : EBSelection <SymbolPinTypeInDevice?> {
    return .single (self.mType_property.propval)
  }

  //····················································································································

  var mType : SymbolPinTypeInDevice? {
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

  var mType_none : StoredObject_SymbolPinTypeInDevice { return self.mType_property }

  //····················································································································

  var mType_none_selection : EBSelection <Bool> {
    return .single (self.mType_property.propval == nil)
  }

  //····················································································································
  //   To one property: mPadProxy
  //····················································································································

   let mPadProxy_property = StoredObject_PadProxyInDevice ()

  //····················································································································

  var mPadProxy_property_selection : EBSelection <PadProxyInDevice?> {
    return .single (self.mPadProxy_property.propval)
  }

  //····················································································································

  var mPadProxy : PadProxyInDevice? {
    get {
      return self.mPadProxy_property.propval
    }
    set {
      if self.mPadProxy_property.propval != nil {
        self.mPadProxy_property.setProp (nil)
      }
      if newValue != nil {
        self.mPadProxy_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  var mPadProxy_none : StoredObject_PadProxyInDevice { return self.mPadProxy_property }

  //····················································································································

  var mPadProxy_none_selection : EBSelection <Bool> {
    return .single (self.mPadProxy_property.propval == nil)
  }

  //····················································································································
  //   Transient property: pinName
  //····················································································································

  let pinName_property = EBTransientProperty_String ()

  //····················································································································

  var pinName_property_selection : EBSelection <String> {
    return self.pinName_property.prop
  }

  //····················································································································

  var pinName : String? {
    switch self.pinName_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: symbolName
  //····················································································································

  let symbolName_property = EBTransientProperty_String ()

  //····················································································································

  var symbolName_property_selection : EBSelection <String> {
    return self.symbolName_property.prop
  }

  //····················································································································

  var symbolName : String? {
    switch self.symbolName_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: pinQualifiedName
  //····················································································································

  let pinQualifiedName_property = EBTransientProperty_PinQualifiedNameStruct ()

  //····················································································································

  var pinQualifiedName_property_selection : EBSelection <PinQualifiedNameStruct> {
    return self.pinQualifiedName_property.prop
  }

  //····················································································································

  var pinQualifiedName : PinQualifiedNameStruct? {
    switch self.pinQualifiedName_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: isConnected
  //····················································································································

  let isConnected_property = EBTransientProperty_Bool ()

  //····················································································································

  var isConnected_property_selection : EBSelection <Bool> {
    return self.isConnected_property.prop
  }

  //····················································································································

  var isConnected : Bool? {
    switch self.isConnected_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: numberShape
  //····················································································································

  let numberShape_property = EBTransientProperty_EBShape ()

  //····················································································································

  var numberShape_property_selection : EBSelection <EBShape> {
    return self.numberShape_property.prop
  }

  //····················································································································

  var numberShape : EBShape? {
    switch self.numberShape_property_selection {
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
  //--- To one property: mSymbolInstance (has opposite to many relationship: mPinInstances) §
    self.mSymbolInstance_property.ebUndoManager = self.ebUndoManager
    self.mSymbolInstance_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mPinInstances_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mPinInstances_property.remove (me) } }
    )
  //--- To one property: mType (has opposite to many relationship: mInstances) §
    self.mType_property.ebUndoManager = self.ebUndoManager
    self.mType_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mInstances_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mInstances_property.remove (me) } }
    )
  //--- To one property: mPadProxy (has opposite to one relationship: mPinInstance) §
    self.mPadProxy_property.ebUndoManager = self.ebUndoManager
    self.mPadProxy_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mPinInstance_property.setProp (me) } },
      resetter: { inObject in inObject.mPinInstance_property.setProp (nil) }
    )
  //--- Atomic property: pinName
    self.pinName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mType_property.mName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mType_property.mName_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SymbolPinInstanceInDevice_pinName (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mType_property.addEBObserverOf_mName (self.pinName_property)
  //--- Atomic property: symbolName
    self.symbolName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mSymbolInstance_property.mInstanceName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mSymbolInstance_property.mInstanceName_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SymbolPinInstanceInDevice_symbolName (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mSymbolInstance_property.addEBObserverOf_mInstanceName (self.symbolName_property)
  //--- Atomic property: pinQualifiedName
    self.pinQualifiedName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.symbolName_property_selection.kind ()
        kind &= unwSelf.pinName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.symbolName_property_selection, unwSelf.pinName_property_selection) {
          case (.single (let v0), .single (let v1)) :
            return .single (transient_SymbolPinInstanceInDevice_pinQualifiedName (v0, v1))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.symbolName_property.addEBObserver (self.pinQualifiedName_property)
    self.pinName_property.addEBObserver (self.pinQualifiedName_property)
  //--- Atomic property: isConnected
    self.isConnected_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mPadProxy_none_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPadProxy_none_selection) {
          case (.single (let v0)) :
            return .single (transient_SymbolPinInstanceInDevice_isConnected (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPadProxy_property.addEBObserver (self.isConnected_property)
  //--- Atomic property: numberShape
    self.numberShape_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mType_property.mXNumber_property_selection.kind ()
        kind &= unwSelf.mType_property.mYNumber_property_selection.kind ()
        kind &= unwSelf.mType_property.mNumberHorizontalAlignment_property_selection.kind ()
        kind &= unwSelf.mPadProxy_property.mPadName_property_selection.kind ()
        kind &= g_Preferences!.pinNameFont_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mType_property.mXNumber_property_selection, unwSelf.mType_property.mYNumber_property_selection, unwSelf.mType_property.mNumberHorizontalAlignment_property_selection, unwSelf.mPadProxy_property.mPadName_property_selection, g_Preferences!.pinNameFont_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_SymbolPinInstanceInDevice_numberShape (v0, v1, v2, v3, v4))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mType_property.addEBObserverOf_mXNumber (self.numberShape_property)
    self.mType_property.addEBObserverOf_mYNumber (self.numberShape_property)
    self.mType_property.addEBObserverOf_mNumberHorizontalAlignment (self.numberShape_property)
    self.mPadProxy_property.addEBObserverOf_mPadName (self.numberShape_property)
    g_Preferences?.pinNameFont_property.addEBObserver (self.numberShape_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mType_property.removeEBObserverOf_mName (self.pinName_property)
    self.mSymbolInstance_property.removeEBObserverOf_mInstanceName (self.symbolName_property)
    self.symbolName_property.removeEBObserver (self.pinQualifiedName_property)
    self.pinName_property.removeEBObserver (self.pinQualifiedName_property)
    self.mPadProxy_property.removeEBObserver (self.isConnected_property)
    self.mType_property.removeEBObserverOf_mXNumber (self.numberShape_property)
    self.mType_property.removeEBObserverOf_mYNumber (self.numberShape_property)
    self.mType_property.removeEBObserverOf_mNumberHorizontalAlignment (self.numberShape_property)
    self.mPadProxy_property.removeEBObserverOf_mPadName (self.numberShape_property)
    g_Preferences?.pinNameFont_property.removeEBObserver (self.numberShape_property)
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
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "pinName",
      idx: self.pinName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.pinName_property.mObserverExplorer,
      valueExplorer: &self.pinName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "symbolName",
      idx: self.symbolName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.symbolName_property.mObserverExplorer,
      valueExplorer: &self.symbolName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "pinQualifiedName",
      idx: self.pinQualifiedName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.pinQualifiedName_property.mObserverExplorer,
      valueExplorer: &self.pinQualifiedName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "isConnected",
      idx: self.isConnected_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.isConnected_property.mObserverExplorer,
      valueExplorer: &self.isConnected_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "numberShape",
      idx: self.numberShape_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.numberShape_property.mObserverExplorer,
      valueExplorer: &self.numberShape_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mSymbolInstance",
      idx:self.mSymbolInstance_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mSymbolInstance_property.mValueExplorer
    )
    createEntryForToOneRelationshipNamed (
      "mType",
      idx:self.mType_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mType_property.mValueExplorer
    )
    createEntryForToOneRelationshipNamed (
      "mPadProxy",
      idx:self.mPadProxy_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mPadProxy_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- To one property: mSymbolInstance
    self.mSymbolInstance_property.mObserverExplorer = nil
    self.mSymbolInstance_property.mValueExplorer = nil
  //--- To one property: mType
    self.mType_property.mObserverExplorer = nil
    self.mType_property.mValueExplorer = nil
  //--- To one property: mPadProxy
    self.mPadProxy_property.mObserverExplorer = nil
    self.mPadProxy_property.mValueExplorer = nil
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
    self.mSymbolInstance = nil
    self.mType = nil
    self.mPadProxy = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- To one property: mPadProxy // Opposite is toOne mPinInstance
    self.store (managedObject:self.mPadProxy_property.propval,
      relationshipName: "mPadProxy",
      intoDictionary: ioDictionary)
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To one property: mSymbolInstance
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mSymbolInstance",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? SymbolInstanceInDevice {
        self.mSymbolInstance_property.setProp (entity)
      }
    }
  //--- To one property: mType
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mType",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? SymbolPinTypeInDevice {
        self.mType_property.setProp (entity)
      }
    }
  //--- To one property: mPadProxy
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mPadProxy",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? PadProxyInDevice {
        self.mPadProxy_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To one property: mSymbolInstance
    if let object = self.mSymbolInstance {
      objects.append (object)
    }
  //--- To one property: mType
    if let object = self.mType {
      objects.append (object)
    }
  //--- To one property: mPadProxy
    if let object = self.mPadProxy {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To one property: mSymbolInstance
    if let object = self.mSymbolInstance {
      objects.append (object)
    }
  //--- To one property: mType
    if let object = self.mType {
      objects.append (object)
    }
  //--- To one property: mPadProxy
    if let object = self.mPadProxy {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


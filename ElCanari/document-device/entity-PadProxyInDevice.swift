//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol PadProxyInDevice_mPinInstanceName : AnyObject {
  var mPinInstanceName : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PadProxyInDevice_mPadName : AnyObject {
  var mPadName : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PadProxyInDevice_mIsNC : AnyObject {
  var mIsNC : Bool { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PadProxyInDevice_isConnected : AnyObject {
  var isConnected : Bool? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PadProxyInDevice_symbolName : AnyObject {
  var symbolName : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: PadProxyInDevice
//----------------------------------------------------------------------------------------------------------------------

class PadProxyInDevice : EBManagedObject,
         PadProxyInDevice_mPinInstanceName,
         PadProxyInDevice_mPadName,
         PadProxyInDevice_mIsNC,
         PadProxyInDevice_isConnected,
         PadProxyInDevice_symbolName {

  //····················································································································
  //   Atomic property: mPinInstanceName
  //····················································································································

  final let mPinInstanceName_property : EBStoredProperty_String

  //····················································································································

  final func reset_mPinInstanceName_toDefaultValue () {
    self.mPinInstanceName = ""
  }

  //····················································································································

  final var mPinInstanceName : String {
    get { return self.mPinInstanceName_property.propval }
    set { self.mPinInstanceName_property.setProp (newValue) }
  }

  //····················································································································

  final var mPinInstanceName_property_selection : EBSelection <String> { return self.mPinInstanceName_property.selection }

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

  final var mPadName_property_selection : EBSelection <String> { return self.mPadName_property.selection }

  //····················································································································
  //   Atomic property: mIsNC
  //····················································································································

  final let mIsNC_property : EBStoredProperty_Bool

  //····················································································································

  final func reset_mIsNC_toDefaultValue () {
    self.mIsNC = false
  }

  //····················································································································

  final var mIsNC : Bool {
    get { return self.mIsNC_property.propval }
    set { self.mIsNC_property.setProp (newValue) }
  }

  //····················································································································

  final var mIsNC_property_selection : EBSelection <Bool> { return self.mIsNC_property.selection }

  //····················································································································
  //   To one property: mPinInstance
  //····················································································································

  final let mPinInstance_property = StoredObject_SymbolPinInstanceInDevice (usedForSignature: false)

  //····················································································································

  final var mPinInstance_property_selection : EBSelection <SymbolPinInstanceInDevice?> {
    return .single (self.mPinInstance_property.propval)
  }

  //····················································································································

  final var mPinInstance : SymbolPinInstanceInDevice? {
    get {
      return self.mPinInstance_property.propval
    }
    set {
      if self.mPinInstance_property.propval != nil {
        self.mPinInstance_property.setProp (nil)
      }
      if newValue != nil {
        self.mPinInstance_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  final var mPinInstance_none : StoredObject_SymbolPinInstanceInDevice { return self.mPinInstance_property }

  //····················································································································

  final var mPinInstance_none_selection : EBSelection <Bool> {
    return .single (self.mPinInstance_property.propval == nil)
  }

  //····················································································································
  //   Transient property: isConnected
  //····················································································································

  final let isConnected_property = EBTransientProperty_Bool ()

  //····················································································································

  final var isConnected_property_selection : EBSelection <Bool> {
    return self.isConnected_property.selection
  }

  //····················································································································

  final var isConnected : Bool? {
    switch self.isConnected_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: symbolName
  //····················································································································

  final let symbolName_property = EBTransientProperty_String ()

  //····················································································································

  final var symbolName_property_selection : EBSelection <String> {
    return self.symbolName_property.selection
  }

  //····················································································································

  final var symbolName : String? {
    switch self.symbolName_property_selection {
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
    self.mPinInstanceName_property = EBStoredProperty_String (defaultValue: "", undoManager: ebUndoManager)
    self.mPadName_property = EBStoredProperty_String (defaultValue: "", undoManager: ebUndoManager)
    self.mIsNC_property = EBStoredProperty_Bool (defaultValue: false, undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- To one property: mPinInstance (has opposite to one relationship: mPadProxy)
    self.mPinInstance_property.ebUndoManager = self.ebUndoManager
    self.mPinInstance_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mPadProxy_property.setProp (me) } },
      resetter: { inObject in inObject.mPadProxy_property.setProp (nil) }
    )
  //--- Atomic property: isConnected
    self.isConnected_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mIsNC_property_selection.kind ()
        kind &= unwSelf.mPinInstance_none_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mIsNC_property_selection, unwSelf.mPinInstance_none_selection) {
          case (.single (let v0), .single (let v1)) :
            return .single (transient_PadProxyInDevice_isConnected (v0, v1))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mIsNC_property.addEBObserver (self.isConnected_property)
    self.mPinInstance_property.addEBObserver (self.isConnected_property)
  //--- Atomic property: symbolName
    self.symbolName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mPinInstance_property.symbolName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPinInstance_property.symbolName_property_selection) {
          case (.single (let v0)) :
            return .single (transient_PadProxyInDevice_symbolName (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPinInstance_property.addEBObserverOf_symbolName (self.symbolName_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
    self.mIsNC_property.setSignatureObserver (observer: self)
    self.mPadName_property.setSignatureObserver (observer: self)
    self.mPinInstanceName_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.mIsNC_property.removeEBObserver (self.isConnected_property)
    // self.mPinInstance_property.removeEBObserver (self.isConnected_property)
    // self.mPinInstance_property.symbolName_property.removeEBObserver (self.symbolName_property)
  //--- Unregister properties for handling signature
    self.mIsNC_property.setSignatureObserver (observer: nil)
    self.mPadName_property.setSignatureObserver (observer: nil)
    self.mPinInstanceName_property.setSignatureObserver (observer: nil)
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
      "mPinInstanceName",
      idx: self.mPinInstanceName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPinInstanceName_property.mObserverExplorer,
      valueExplorer: &self.mPinInstanceName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mPadName",
      idx: self.mPadName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPadName_property.mObserverExplorer,
      valueExplorer: &self.mPadName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mIsNC",
      idx: self.mIsNC_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mIsNC_property.mObserverExplorer,
      valueExplorer: &self.mIsNC_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "isConnected",
      idx: self.isConnected_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.isConnected_property.mObserverExplorer,
      valueExplorer: &self.isConnected_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "symbolName",
      idx: self.symbolName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.symbolName_property.mObserverExplorer,
      valueExplorer: &self.symbolName_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mPinInstance",
      idx:self.mPinInstance_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mPinInstance_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mPinInstanceName
    self.mPinInstanceName_property.mObserverExplorer = nil
    self.mPinInstanceName_property.mValueExplorer = nil
  //--- Atomic property: mPadName
    self.mPadName_property.mObserverExplorer = nil
    self.mPadName_property.mValueExplorer = nil
  //--- Atomic property: mIsNC
    self.mIsNC_property.mObserverExplorer = nil
    self.mIsNC_property.mValueExplorer = nil
  //--- To one property: mPinInstance
    self.mPinInstance_property.mObserverExplorer = nil
    self.mPinInstance_property.mValueExplorer = nil
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
    self.mPinInstance = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: mPinInstanceName
    self.mPinInstanceName_property.storeIn (dictionary: ioDictionary, forKey: "mPinInstanceName")
  //--- Atomic property: mPadName
    self.mPadName_property.storeIn (dictionary: ioDictionary, forKey: "mPadName")
  //--- Atomic property: mIsNC
    self.mIsNC_property.storeIn (dictionary: ioDictionary, forKey: "mIsNC")
  //--- To one property: mPinInstance // Opposite is toOne mPadProxy
    self.store (managedObject:self.mPinInstance_property.propval,
      relationshipName: "mPinInstance",
      intoDictionary: ioDictionary)
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  //--- To one property: mPinInstance
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mPinInstance",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? SymbolPinInstanceInDevice {
        self.mPinInstance_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mPinInstanceName
    self.mPinInstanceName_property.readFrom (dictionary: inDictionary, forKey: "mPinInstanceName")
  //--- Atomic property: mPadName
    self.mPadName_property.readFrom (dictionary: inDictionary, forKey: "mPadName")
  //--- Atomic property: mIsNC
    self.mIsNC_property.readFrom (dictionary: inDictionary, forKey: "mIsNC")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mPinInstanceName\n"
    ioString += "mPadName\n"
    ioString += "mIsNC\n"
  //--- To one relationships
    ioString += "mPinInstance\n"
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mPinInstanceName.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mPadName.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mIsNC.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
    if let object = self.mPinInstance {
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
    inParallelObjectSetupContext.mOperationQueue.addOperation {
    //--- Atomic properties
      if let range = inDictionary ["mPinInstanceName"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mPinInstanceName = value
      }
      if let range = inDictionary ["mPadName"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mPadName = value
      }
      if let range = inDictionary ["mIsNC"], let value = Bool.unarchiveFromDataRange (inData, range) {
        self.mIsNC = value
      }
    //--- To one relationships
      if let range = inDictionary ["mPinInstance"], let objectIndex = inData.base62EncodedInt (range: range) {
        inParallelObjectSetupContext.mMutex.wait ()
        inParallelObjectSetupContext.mToOneSetUpOperationList.append ({ self.mPinInstance = inObjectArray [objectIndex] as? SymbolPinInstanceInDevice })
        inParallelObjectSetupContext.mMutex.signal ()
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
  //--- To one property: mPinInstance
    if let object = self.mPinInstance {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To one property: mPinInstance
    if let object = self.mPinInstance {
      objects.append (object)
    }
  }

  //····················································································································
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.mIsNC_property.signature ())
    crc.accumulateUInt32 (self.mPadName_property.signature ())
    crc.accumulateUInt32 (self.mPinInstanceName_property.signature ())
    return crc
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


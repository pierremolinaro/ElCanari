//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mPinName : class {
  var mPinName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mSymbolInstanceName : class {
  var mSymbolInstanceName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mSymbolTypeName : class {
  var mSymbolTypeName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mPinX : class {
  var mPinX : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mPinY : class {
  var mPinY : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mXName : class {
  var mXName : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mYName : class {
  var mYName : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mNameHorizontalAlignment : class {
  var mNameHorizontalAlignment : HorizontalAlignment { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mPinNameIsDisplayedInSchematic : class {
  var mPinNameIsDisplayedInSchematic : Bool { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mXNumber : class {
  var mXNumber : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mYNumber : class {
  var mYNumber : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_mNumberHorizontalAlignment : class {
  var mNumberHorizontalAlignment : HorizontalAlignment { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_pinQualifiedName : class {
  var pinQualifiedName : PinQualifiedNameStruct? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DevicePinInProject_descriptor : class {
  var descriptor : PinInProjectDescriptor? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: DevicePinInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class DevicePinInProject : EBManagedObject,
         DevicePinInProject_mPinName,
         DevicePinInProject_mSymbolInstanceName,
         DevicePinInProject_mSymbolTypeName,
         DevicePinInProject_mPinX,
         DevicePinInProject_mPinY,
         DevicePinInProject_mXName,
         DevicePinInProject_mYName,
         DevicePinInProject_mNameHorizontalAlignment,
         DevicePinInProject_mPinNameIsDisplayedInSchematic,
         DevicePinInProject_mXNumber,
         DevicePinInProject_mYNumber,
         DevicePinInProject_mNumberHorizontalAlignment,
         DevicePinInProject_pinQualifiedName,
         DevicePinInProject_descriptor {

  //····················································································································
  //   Atomic property: mPinName
  //····················································································································

  let mPinName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mPinName : String {
    get { return self.mPinName_property.propval }
    set { self.mPinName_property.setProp (newValue) }
  }

  //····················································································································

  var mPinName_property_selection : EBSelection <String> { return self.mPinName_property.prop }

  //····················································································································
  //   Atomic property: mSymbolInstanceName
  //····················································································································

  let mSymbolInstanceName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mSymbolInstanceName : String {
    get { return self.mSymbolInstanceName_property.propval }
    set { self.mSymbolInstanceName_property.setProp (newValue) }
  }

  //····················································································································

  var mSymbolInstanceName_property_selection : EBSelection <String> { return self.mSymbolInstanceName_property.prop }

  //····················································································································
  //   Atomic property: mSymbolTypeName
  //····················································································································

  let mSymbolTypeName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mSymbolTypeName : String {
    get { return self.mSymbolTypeName_property.propval }
    set { self.mSymbolTypeName_property.setProp (newValue) }
  }

  //····················································································································

  var mSymbolTypeName_property_selection : EBSelection <String> { return self.mSymbolTypeName_property.prop }

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
  //   Atomic property: mPinNameIsDisplayedInSchematic
  //····················································································································

  let mPinNameIsDisplayedInSchematic_property = EBStoredProperty_Bool (defaultValue: true)

  //····················································································································

  var mPinNameIsDisplayedInSchematic : Bool {
    get { return self.mPinNameIsDisplayedInSchematic_property.propval }
    set { self.mPinNameIsDisplayedInSchematic_property.setProp (newValue) }
  }

  //····················································································································

  var mPinNameIsDisplayedInSchematic_property_selection : EBSelection <Bool> { return self.mPinNameIsDisplayedInSchematic_property.prop }

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
  //   Transient property: descriptor
  //····················································································································

  let descriptor_property = EBTransientProperty_PinInProjectDescriptor ()

  //····················································································································

  var descriptor_property_selection : EBSelection <PinInProjectDescriptor> {
    return self.descriptor_property.prop
  }

  //····················································································································

  var descriptor : PinInProjectDescriptor? {
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
  //--- Atomic property: mPinName
    self.mPinName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mSymbolInstanceName
    self.mSymbolInstanceName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mSymbolTypeName
    self.mSymbolTypeName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mPinX
    self.mPinX_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mPinY
    self.mPinY_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mXName
    self.mXName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mYName
    self.mYName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mNameHorizontalAlignment
    self.mNameHorizontalAlignment_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mPinNameIsDisplayedInSchematic
    self.mPinNameIsDisplayedInSchematic_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mXNumber
    self.mXNumber_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mYNumber
    self.mYNumber_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mNumberHorizontalAlignment
    self.mNumberHorizontalAlignment_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: pinQualifiedName
    self.pinQualifiedName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mSymbolInstanceName_property_selection.kind ()
        kind &= unwSelf.mPinName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mSymbolInstanceName_property_selection, unwSelf.mPinName_property_selection) {
          case (.single (let v0), .single (let v1)) :
            return .single (transient_DevicePinInProject_pinQualifiedName (v0, v1))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mSymbolInstanceName_property.addEBObserver (self.pinQualifiedName_property)
    self.mPinName_property.addEBObserver (self.pinQualifiedName_property)
  //--- Atomic property: descriptor
    self.descriptor_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mPinName_property_selection.kind ()
        kind &= unwSelf.mSymbolInstanceName_property_selection.kind ()
        kind &= unwSelf.mSymbolTypeName_property_selection.kind ()
        kind &= unwSelf.mPinX_property_selection.kind ()
        kind &= unwSelf.mPinY_property_selection.kind ()
        kind &= unwSelf.mXName_property_selection.kind ()
        kind &= unwSelf.mYName_property_selection.kind ()
        kind &= unwSelf.mNameHorizontalAlignment_property_selection.kind ()
        kind &= unwSelf.mPinNameIsDisplayedInSchematic_property_selection.kind ()
        kind &= unwSelf.mXNumber_property_selection.kind ()
        kind &= unwSelf.mYNumber_property_selection.kind ()
        kind &= unwSelf.mNumberHorizontalAlignment_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mPinName_property_selection, unwSelf.mSymbolInstanceName_property_selection, unwSelf.mSymbolTypeName_property_selection, unwSelf.mPinX_property_selection, unwSelf.mPinY_property_selection, unwSelf.mXName_property_selection, unwSelf.mYName_property_selection, unwSelf.mNameHorizontalAlignment_property_selection, unwSelf.mPinNameIsDisplayedInSchematic_property_selection, unwSelf.mXNumber_property_selection, unwSelf.mYNumber_property_selection, unwSelf.mNumberHorizontalAlignment_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7), .single (let v8), .single (let v9), .single (let v10), .single (let v11)) :
            return .single (transient_DevicePinInProject_descriptor (v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mPinName_property.addEBObserver (self.descriptor_property)
    self.mSymbolInstanceName_property.addEBObserver (self.descriptor_property)
    self.mSymbolTypeName_property.addEBObserver (self.descriptor_property)
    self.mPinX_property.addEBObserver (self.descriptor_property)
    self.mPinY_property.addEBObserver (self.descriptor_property)
    self.mXName_property.addEBObserver (self.descriptor_property)
    self.mYName_property.addEBObserver (self.descriptor_property)
    self.mNameHorizontalAlignment_property.addEBObserver (self.descriptor_property)
    self.mPinNameIsDisplayedInSchematic_property.addEBObserver (self.descriptor_property)
    self.mXNumber_property.addEBObserver (self.descriptor_property)
    self.mYNumber_property.addEBObserver (self.descriptor_property)
    self.mNumberHorizontalAlignment_property.addEBObserver (self.descriptor_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mSymbolInstanceName_property.removeEBObserver (self.pinQualifiedName_property)
    self.mPinName_property.removeEBObserver (self.pinQualifiedName_property)
    self.mPinName_property.removeEBObserver (self.descriptor_property)
    self.mSymbolInstanceName_property.removeEBObserver (self.descriptor_property)
    self.mSymbolTypeName_property.removeEBObserver (self.descriptor_property)
    self.mPinX_property.removeEBObserver (self.descriptor_property)
    self.mPinY_property.removeEBObserver (self.descriptor_property)
    self.mXName_property.removeEBObserver (self.descriptor_property)
    self.mYName_property.removeEBObserver (self.descriptor_property)
    self.mNameHorizontalAlignment_property.removeEBObserver (self.descriptor_property)
    self.mPinNameIsDisplayedInSchematic_property.removeEBObserver (self.descriptor_property)
    self.mXNumber_property.removeEBObserver (self.descriptor_property)
    self.mYNumber_property.removeEBObserver (self.descriptor_property)
    self.mNumberHorizontalAlignment_property.removeEBObserver (self.descriptor_property)
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
      "mPinName",
      idx: self.mPinName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPinName_property.mObserverExplorer,
      valueExplorer: &self.mPinName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mSymbolInstanceName",
      idx: self.mSymbolInstanceName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mSymbolInstanceName_property.mObserverExplorer,
      valueExplorer: &self.mSymbolInstanceName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mSymbolTypeName",
      idx: self.mSymbolTypeName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mSymbolTypeName_property.mObserverExplorer,
      valueExplorer: &self.mSymbolTypeName_property.mValueExplorer
    )
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
      "mNameHorizontalAlignment",
      idx: self.mNameHorizontalAlignment_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mNameHorizontalAlignment_property.mObserverExplorer,
      valueExplorer: &self.mNameHorizontalAlignment_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mPinNameIsDisplayedInSchematic",
      idx: self.mPinNameIsDisplayedInSchematic_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mPinNameIsDisplayedInSchematic_property.mObserverExplorer,
      valueExplorer: &self.mPinNameIsDisplayedInSchematic_property.mValueExplorer
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
      "pinQualifiedName",
      idx: self.pinQualifiedName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.pinQualifiedName_property.mObserverExplorer,
      valueExplorer: &self.pinQualifiedName_property.mValueExplorer
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
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mPinName
    self.mPinName_property.mObserverExplorer = nil
    self.mPinName_property.mValueExplorer = nil
  //--- Atomic property: mSymbolInstanceName
    self.mSymbolInstanceName_property.mObserverExplorer = nil
    self.mSymbolInstanceName_property.mValueExplorer = nil
  //--- Atomic property: mSymbolTypeName
    self.mSymbolTypeName_property.mObserverExplorer = nil
    self.mSymbolTypeName_property.mValueExplorer = nil
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
  //--- Atomic property: mNameHorizontalAlignment
    self.mNameHorizontalAlignment_property.mObserverExplorer = nil
    self.mNameHorizontalAlignment_property.mValueExplorer = nil
  //--- Atomic property: mPinNameIsDisplayedInSchematic
    self.mPinNameIsDisplayedInSchematic_property.mObserverExplorer = nil
    self.mPinNameIsDisplayedInSchematic_property.mValueExplorer = nil
  //--- Atomic property: mXNumber
    self.mXNumber_property.mObserverExplorer = nil
    self.mXNumber_property.mValueExplorer = nil
  //--- Atomic property: mYNumber
    self.mYNumber_property.mObserverExplorer = nil
    self.mYNumber_property.mValueExplorer = nil
  //--- Atomic property: mNumberHorizontalAlignment
    self.mNumberHorizontalAlignment_property.mObserverExplorer = nil
    self.mNumberHorizontalAlignment_property.mValueExplorer = nil
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
  //--- Atomic property: mPinName
    self.mPinName_property.storeIn (dictionary: ioDictionary, forKey:"mPinName")
  //--- Atomic property: mSymbolInstanceName
    self.mSymbolInstanceName_property.storeIn (dictionary: ioDictionary, forKey:"mSymbolInstanceName")
  //--- Atomic property: mSymbolTypeName
    self.mSymbolTypeName_property.storeIn (dictionary: ioDictionary, forKey:"mSymbolTypeName")
  //--- Atomic property: mPinX
    self.mPinX_property.storeIn (dictionary: ioDictionary, forKey:"mPinX")
  //--- Atomic property: mPinY
    self.mPinY_property.storeIn (dictionary: ioDictionary, forKey:"mPinY")
  //--- Atomic property: mXName
    self.mXName_property.storeIn (dictionary: ioDictionary, forKey:"mXName")
  //--- Atomic property: mYName
    self.mYName_property.storeIn (dictionary: ioDictionary, forKey:"mYName")
  //--- Atomic property: mNameHorizontalAlignment
    self.mNameHorizontalAlignment_property.storeIn (dictionary: ioDictionary, forKey:"mNameHorizontalAlignment")
  //--- Atomic property: mPinNameIsDisplayedInSchematic
    self.mPinNameIsDisplayedInSchematic_property.storeIn (dictionary: ioDictionary, forKey:"mPinNameIsDisplayedInSchematic")
  //--- Atomic property: mXNumber
    self.mXNumber_property.storeIn (dictionary: ioDictionary, forKey:"mXNumber")
  //--- Atomic property: mYNumber
    self.mYNumber_property.storeIn (dictionary: ioDictionary, forKey:"mYNumber")
  //--- Atomic property: mNumberHorizontalAlignment
    self.mNumberHorizontalAlignment_property.storeIn (dictionary: ioDictionary, forKey:"mNumberHorizontalAlignment")
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
  //--- Atomic property: mPinName
    self.mPinName_property.readFrom (dictionary: inDictionary, forKey:"mPinName")
  //--- Atomic property: mSymbolInstanceName
    self.mSymbolInstanceName_property.readFrom (dictionary: inDictionary, forKey:"mSymbolInstanceName")
  //--- Atomic property: mSymbolTypeName
    self.mSymbolTypeName_property.readFrom (dictionary: inDictionary, forKey:"mSymbolTypeName")
  //--- Atomic property: mPinX
    self.mPinX_property.readFrom (dictionary: inDictionary, forKey:"mPinX")
  //--- Atomic property: mPinY
    self.mPinY_property.readFrom (dictionary: inDictionary, forKey:"mPinY")
  //--- Atomic property: mXName
    self.mXName_property.readFrom (dictionary: inDictionary, forKey:"mXName")
  //--- Atomic property: mYName
    self.mYName_property.readFrom (dictionary: inDictionary, forKey:"mYName")
  //--- Atomic property: mNameHorizontalAlignment
    self.mNameHorizontalAlignment_property.readFrom (dictionary: inDictionary, forKey:"mNameHorizontalAlignment")
  //--- Atomic property: mPinNameIsDisplayedInSchematic
    self.mPinNameIsDisplayedInSchematic_property.readFrom (dictionary: inDictionary, forKey:"mPinNameIsDisplayedInSchematic")
  //--- Atomic property: mXNumber
    self.mXNumber_property.readFrom (dictionary: inDictionary, forKey:"mXNumber")
  //--- Atomic property: mYNumber
    self.mYNumber_property.readFrom (dictionary: inDictionary, forKey:"mYNumber")
  //--- Atomic property: mNumberHorizontalAlignment
    self.mNumberHorizontalAlignment_property.readFrom (dictionary: inDictionary, forKey:"mNumberHorizontalAlignment")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mPinName\n"
    ioString += "mSymbolInstanceName\n"
    ioString += "mSymbolTypeName\n"
    ioString += "mPinX\n"
    ioString += "mPinY\n"
    ioString += "mXName\n"
    ioString += "mYName\n"
    ioString += "mNameHorizontalAlignment\n"
    ioString += "mPinNameIsDisplayedInSchematic\n"
    ioString += "mXNumber\n"
    ioString += "mYNumber\n"
    ioString += "mNumberHorizontalAlignment\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioString : inout String) {
    super.appendPropertyValuesTo (&ioString)
  //--- Atomic properties
    ioString += self.mPinName.stringPropertyValue ()
    ioString += self.mSymbolInstanceName.stringPropertyValue ()
    ioString += self.mSymbolTypeName.stringPropertyValue ()
    ioString += self.mPinX.stringPropertyValue ()
    ioString += self.mPinY.stringPropertyValue ()
    ioString += self.mXName.stringPropertyValue ()
    ioString += self.mYName.stringPropertyValue ()
    ioString += self.mNameHorizontalAlignment.stringPropertyValue ()
    ioString += self.mPinNameIsDisplayedInSchematic.stringPropertyValue ()
    ioString += self.mXNumber.stringPropertyValue ()
    ioString += self.mYNumber.stringPropertyValue ()
    ioString += self.mNumberHorizontalAlignment.stringPropertyValue ()
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


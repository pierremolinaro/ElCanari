//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_mNetClassName : class {
  var mNetClassName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_mNetClassColor : class {
  var mNetClassColor : NSColor { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_mNetWidth : class {
  var mNetWidth : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_mNetWidthUnit : class {
  var mNetWidthUnit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_mViaHoleDiameter : class {
  var mViaHoleDiameter : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_mViaHoleDiameterUnit : class {
  var mViaHoleDiameterUnit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_mViaPadDiameter : class {
  var mViaPadDiameter : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_mViaPadDiameterUnit : class {
  var mViaPadDiameterUnit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_netWidth : class {
  var netWidth : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_viaHoleDiameter : class {
  var viaHoleDiameter : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_viaPadDiameter : class {
  var viaPadDiameter : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_canRemove : class {
  var canRemove : Bool? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_netUsage : class {
  var netUsage : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol NetClassInProject_netsDescription : class {
  var netsDescription : NetInfoArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: NetClassInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class NetClassInProject : EBManagedObject,
         NetClassInProject_mNetClassName,
         NetClassInProject_mNetClassColor,
         NetClassInProject_mNetWidth,
         NetClassInProject_mNetWidthUnit,
         NetClassInProject_mViaHoleDiameter,
         NetClassInProject_mViaHoleDiameterUnit,
         NetClassInProject_mViaPadDiameter,
         NetClassInProject_mViaPadDiameterUnit,
         NetClassInProject_netWidth,
         NetClassInProject_viaHoleDiameter,
         NetClassInProject_viaPadDiameter,
         NetClassInProject_canRemove,
         NetClassInProject_netUsage,
         NetClassInProject_netsDescription {

  //····················································································································
  //   Atomic property: mNetClassName
  //····················································································································

  let mNetClassName_property = EBStoredProperty_String (defaultValue: "Default")

  //····················································································································

  var mNetClassName : String {
    get { return self.mNetClassName_property.propval }
    set { self.mNetClassName_property.setProp (newValue) }
  }

  //····················································································································

  var mNetClassName_property_selection : EBSelection <String> { return self.mNetClassName_property.prop }

  //····················································································································
  //   Atomic property: mNetClassColor
  //····················································································································

  let mNetClassColor_property = EBStoredProperty_NSColor (defaultValue: NSColor.blue)

  //····················································································································

  var mNetClassColor : NSColor {
    get { return self.mNetClassColor_property.propval }
    set { self.mNetClassColor_property.setProp (newValue) }
  }

  //····················································································································

  var mNetClassColor_property_selection : EBSelection <NSColor> { return self.mNetClassColor_property.prop }

  //····················································································································
  //   Atomic property: mNetWidth
  //····················································································································

  let mNetWidth_property = EBStoredProperty_Int (defaultValue: 45720)

  //····················································································································

  var mNetWidth : Int {
    get { return self.mNetWidth_property.propval }
    set { self.mNetWidth_property.setProp (newValue) }
  }

  //····················································································································

  var mNetWidth_property_selection : EBSelection <Int> { return self.mNetWidth_property.prop }

  //····················································································································
  //   Atomic property: mNetWidthUnit
  //····················································································································

  let mNetWidthUnit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  var mNetWidthUnit : Int {
    get { return self.mNetWidthUnit_property.propval }
    set { self.mNetWidthUnit_property.setProp (newValue) }
  }

  //····················································································································

  var mNetWidthUnit_property_selection : EBSelection <Int> { return self.mNetWidthUnit_property.prop }

  //····················································································································
  //   Atomic property: mViaHoleDiameter
  //····················································································································

  let mViaHoleDiameter_property = EBStoredProperty_Int (defaultValue: 45720)

  //····················································································································

  var mViaHoleDiameter : Int {
    get { return self.mViaHoleDiameter_property.propval }
    set { self.mViaHoleDiameter_property.setProp (newValue) }
  }

  //····················································································································

  var mViaHoleDiameter_property_selection : EBSelection <Int> { return self.mViaHoleDiameter_property.prop }

  //····················································································································
  //   Atomic property: mViaHoleDiameterUnit
  //····················································································································

  let mViaHoleDiameterUnit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  var mViaHoleDiameterUnit : Int {
    get { return self.mViaHoleDiameterUnit_property.propval }
    set { self.mViaHoleDiameterUnit_property.setProp (newValue) }
  }

  //····················································································································

  var mViaHoleDiameterUnit_property_selection : EBSelection <Int> { return self.mViaHoleDiameterUnit_property.prop }

  //····················································································································
  //   Atomic property: mViaPadDiameter
  //····················································································································

  let mViaPadDiameter_property = EBStoredProperty_Int (defaultValue: 91440)

  //····················································································································

  var mViaPadDiameter : Int {
    get { return self.mViaPadDiameter_property.propval }
    set { self.mViaPadDiameter_property.setProp (newValue) }
  }

  //····················································································································

  var mViaPadDiameter_property_selection : EBSelection <Int> { return self.mViaPadDiameter_property.prop }

  //····················································································································
  //   Atomic property: mViaPadDiameterUnit
  //····················································································································

  let mViaPadDiameterUnit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  var mViaPadDiameterUnit : Int {
    get { return self.mViaPadDiameterUnit_property.propval }
    set { self.mViaPadDiameterUnit_property.setProp (newValue) }
  }

  //····················································································································

  var mViaPadDiameterUnit_property_selection : EBSelection <Int> { return self.mViaPadDiameterUnit_property.prop }

  //····················································································································
  //   To many property: mNets
  //····················································································································

  let mNets_property = StoredArrayOf_NetInProject ()

  //····················································································································

  var mNets_property_selection : EBSelection < [NetInProject] > {
    return self.mNets_property.prop
  }

  //····················································································································

  var mNets : [NetInProject] {
    get { return self.mNets_property.propval }
    set { self.mNets_property.setProp (newValue) }
  }

  //····················································································································
  //   Transient property: netWidth
  //····················································································································

  let netWidth_property = EBTransientProperty_String ()

  //····················································································································

  var netWidth_property_selection : EBSelection <String> {
    return self.netWidth_property.prop
  }

  //····················································································································

  var netWidth : String? {
    switch self.netWidth_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: viaHoleDiameter
  //····················································································································

  let viaHoleDiameter_property = EBTransientProperty_String ()

  //····················································································································

  var viaHoleDiameter_property_selection : EBSelection <String> {
    return self.viaHoleDiameter_property.prop
  }

  //····················································································································

  var viaHoleDiameter : String? {
    switch self.viaHoleDiameter_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: viaPadDiameter
  //····················································································································

  let viaPadDiameter_property = EBTransientProperty_String ()

  //····················································································································

  var viaPadDiameter_property_selection : EBSelection <String> {
    return self.viaPadDiameter_property.prop
  }

  //····················································································································

  var viaPadDiameter : String? {
    switch self.viaPadDiameter_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: canRemove
  //····················································································································

  let canRemove_property = EBTransientProperty_Bool ()

  //····················································································································

  var canRemove_property_selection : EBSelection <Bool> {
    return self.canRemove_property.prop
  }

  //····················································································································

  var canRemove : Bool? {
    switch self.canRemove_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netUsage
  //····················································································································

  let netUsage_property = EBTransientProperty_String ()

  //····················································································································

  var netUsage_property_selection : EBSelection <String> {
    return self.netUsage_property.prop
  }

  //····················································································································

  var netUsage : String? {
    switch self.netUsage_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netsDescription
  //····················································································································

  let netsDescription_property = EBTransientProperty_NetInfoArray ()

  //····················································································································

  var netsDescription_property_selection : EBSelection <NetInfoArray> {
    return self.netsDescription_property.prop
  }

  //····················································································································

  var netsDescription : NetInfoArray? {
    switch self.netsDescription_property_selection {
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
  //--- Atomic property: mNetClassName
    self.mNetClassName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mNetClassColor
    self.mNetClassColor_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mNetWidth
    self.mNetWidth_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mNetWidthUnit
    self.mNetWidthUnit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mViaHoleDiameter
    self.mViaHoleDiameter_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mViaHoleDiameterUnit
    self.mViaHoleDiameterUnit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mViaPadDiameter
    self.mViaPadDiameter_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mViaPadDiameterUnit
    self.mViaPadDiameterUnit_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mNets (has opposite relationship)
    self.mNets_property.ebUndoManager = self.ebUndoManager
    self.mNets_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNetClass_property.setProp (me) } },
      resetter: { inObject in inObject.mNetClass_property.setProp (nil) }
    )
  //--- Atomic property: netWidth
    self.netWidth_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mNetWidth_property_selection.kind ()
        kind &= unwSelf.mNetWidthUnit_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mNetWidth_property_selection, unwSelf.mNetWidthUnit_property_selection) {
          case (.single (let v0), .single (let v1)) :
            return .single (transient_NetClassInProject_netWidth (v0, v1))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mNetWidth_property.addEBObserver (self.netWidth_property)
    self.mNetWidthUnit_property.addEBObserver (self.netWidth_property)
  //--- Atomic property: viaHoleDiameter
    self.viaHoleDiameter_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mViaHoleDiameter_property_selection.kind ()
        kind &= unwSelf.mViaHoleDiameterUnit_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mViaHoleDiameter_property_selection, unwSelf.mViaHoleDiameterUnit_property_selection) {
          case (.single (let v0), .single (let v1)) :
            return .single (transient_NetClassInProject_viaHoleDiameter (v0, v1))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mViaHoleDiameter_property.addEBObserver (self.viaHoleDiameter_property)
    self.mViaHoleDiameterUnit_property.addEBObserver (self.viaHoleDiameter_property)
  //--- Atomic property: viaPadDiameter
    self.viaPadDiameter_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mViaPadDiameter_property_selection.kind ()
        kind &= unwSelf.mViaPadDiameterUnit_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mViaPadDiameter_property_selection, unwSelf.mViaPadDiameterUnit_property_selection) {
          case (.single (let v0), .single (let v1)) :
            return .single (transient_NetClassInProject_viaPadDiameter (v0, v1))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mViaPadDiameter_property.addEBObserver (self.viaPadDiameter_property)
    self.mViaPadDiameterUnit_property.addEBObserver (self.viaPadDiameter_property)
  //--- Atomic property: canRemove
    self.canRemove_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mNets_property.count_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mNets_property.count_property_selection) {
          case (.single (let v0)) :
            return .single (transient_NetClassInProject_canRemove (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mNets_property.addEBObserver (self.canRemove_property)
  //--- Atomic property: netUsage
    self.netUsage_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mNets_property.count_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mNets_property.count_property_selection) {
          case (.single (let v0)) :
            return .single (transient_NetClassInProject_netUsage (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mNets_property.addEBObserver (self.netUsage_property)
  //--- Atomic property: netsDescription
    self.netsDescription_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mNets_property_selection.kind ()
        kind &= unwSelf.mNets_property_selection.kind ()
        kind &= unwSelf.mNetClassName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mNets_property_selection, unwSelf.mNets_property_selection, unwSelf.mNetClassName_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2)) :
            return .single (transient_NetClassInProject_netsDescription (v0, v1, v2))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mNets_property.addEBObserverOf_mNetName (self.netsDescription_property)
    self.mNets_property.addEBObserverOf_netPointsInfo (self.netsDescription_property)
    self.mNetClassName_property.addEBObserver (self.netsDescription_property)
  //--- Install undoers and opposite setter for relationships
    self.mNets_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNetClass_property.setProp (me) } },
      resetter: { inObject in inObject.mNetClass_property.setProp (nil) }
    )
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mNetWidth_property.removeEBObserver (self.netWidth_property)
    self.mNetWidthUnit_property.removeEBObserver (self.netWidth_property)
    self.mViaHoleDiameter_property.removeEBObserver (self.viaHoleDiameter_property)
    self.mViaHoleDiameterUnit_property.removeEBObserver (self.viaHoleDiameter_property)
    self.mViaPadDiameter_property.removeEBObserver (self.viaPadDiameter_property)
    self.mViaPadDiameterUnit_property.removeEBObserver (self.viaPadDiameter_property)
    self.mNets_property.removeEBObserver (self.canRemove_property)
    self.mNets_property.removeEBObserver (self.netUsage_property)
    self.mNets_property.removeEBObserverOf_mNetName (self.netsDescription_property)
    self.mNets_property.removeEBObserverOf_netPointsInfo (self.netsDescription_property)
    self.mNetClassName_property.removeEBObserver (self.netsDescription_property)
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
      "mNetClassName",
      idx: self.mNetClassName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mNetClassName_property.mObserverExplorer,
      valueExplorer: &self.mNetClassName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mNetClassColor",
      idx: self.mNetClassColor_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mNetClassColor_property.mObserverExplorer,
      valueExplorer: &self.mNetClassColor_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mNetWidth",
      idx: self.mNetWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mNetWidth_property.mObserverExplorer,
      valueExplorer: &self.mNetWidth_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mNetWidthUnit",
      idx: self.mNetWidthUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mNetWidthUnit_property.mObserverExplorer,
      valueExplorer: &self.mNetWidthUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mViaHoleDiameter",
      idx: self.mViaHoleDiameter_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mViaHoleDiameter_property.mObserverExplorer,
      valueExplorer: &self.mViaHoleDiameter_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mViaHoleDiameterUnit",
      idx: self.mViaHoleDiameterUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mViaHoleDiameterUnit_property.mObserverExplorer,
      valueExplorer: &self.mViaHoleDiameterUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mViaPadDiameter",
      idx: self.mViaPadDiameter_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mViaPadDiameter_property.mObserverExplorer,
      valueExplorer: &self.mViaPadDiameter_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mViaPadDiameterUnit",
      idx: self.mViaPadDiameterUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mViaPadDiameterUnit_property.mObserverExplorer,
      valueExplorer: &self.mViaPadDiameterUnit_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "netWidth",
      idx: self.netWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netWidth_property.mObserverExplorer,
      valueExplorer: &self.netWidth_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "viaHoleDiameter",
      idx: self.viaHoleDiameter_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.viaHoleDiameter_property.mObserverExplorer,
      valueExplorer: &self.viaHoleDiameter_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "viaPadDiameter",
      idx: self.viaPadDiameter_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.viaPadDiameter_property.mObserverExplorer,
      valueExplorer: &self.viaPadDiameter_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "canRemove",
      idx: self.canRemove_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.canRemove_property.mObserverExplorer,
      valueExplorer: &self.canRemove_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netUsage",
      idx: self.netUsage_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netUsage_property.mObserverExplorer,
      valueExplorer: &self.netUsage_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netsDescription",
      idx: self.netsDescription_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netsDescription_property.mObserverExplorer,
      valueExplorer: &self.netsDescription_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "mNets",
      idx:mNets_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mNets_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mNetClassName
    self.mNetClassName_property.mObserverExplorer = nil
    self.mNetClassName_property.mValueExplorer = nil
  //--- Atomic property: mNetClassColor
    self.mNetClassColor_property.mObserverExplorer = nil
    self.mNetClassColor_property.mValueExplorer = nil
  //--- Atomic property: mNetWidth
    self.mNetWidth_property.mObserverExplorer = nil
    self.mNetWidth_property.mValueExplorer = nil
  //--- Atomic property: mNetWidthUnit
    self.mNetWidthUnit_property.mObserverExplorer = nil
    self.mNetWidthUnit_property.mValueExplorer = nil
  //--- Atomic property: mViaHoleDiameter
    self.mViaHoleDiameter_property.mObserverExplorer = nil
    self.mViaHoleDiameter_property.mValueExplorer = nil
  //--- Atomic property: mViaHoleDiameterUnit
    self.mViaHoleDiameterUnit_property.mObserverExplorer = nil
    self.mViaHoleDiameterUnit_property.mValueExplorer = nil
  //--- Atomic property: mViaPadDiameter
    self.mViaPadDiameter_property.mObserverExplorer = nil
    self.mViaPadDiameter_property.mValueExplorer = nil
  //--- Atomic property: mViaPadDiameterUnit
    self.mViaPadDiameterUnit_property.mObserverExplorer = nil
    self.mViaPadDiameterUnit_property.mValueExplorer = nil
  //--- To many property: mNets
    self.mNets_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mNets = []
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
  //--- Atomic property: mNetClassName
    self.mNetClassName_property.storeIn (dictionary: ioDictionary, forKey:"mNetClassName")
  //--- Atomic property: mNetClassColor
    self.mNetClassColor_property.storeIn (dictionary: ioDictionary, forKey:"mNetClassColor")
  //--- Atomic property: mNetWidth
    self.mNetWidth_property.storeIn (dictionary: ioDictionary, forKey:"mNetWidth")
  //--- Atomic property: mNetWidthUnit
    self.mNetWidthUnit_property.storeIn (dictionary: ioDictionary, forKey:"mNetWidthUnit")
  //--- Atomic property: mViaHoleDiameter
    self.mViaHoleDiameter_property.storeIn (dictionary: ioDictionary, forKey:"mViaHoleDiameter")
  //--- Atomic property: mViaHoleDiameterUnit
    self.mViaHoleDiameterUnit_property.storeIn (dictionary: ioDictionary, forKey:"mViaHoleDiameterUnit")
  //--- Atomic property: mViaPadDiameter
    self.mViaPadDiameter_property.storeIn (dictionary: ioDictionary, forKey:"mViaPadDiameter")
  //--- Atomic property: mViaPadDiameterUnit
    self.mViaPadDiameterUnit_property.storeIn (dictionary: ioDictionary, forKey:"mViaPadDiameterUnit")
  //--- To many property: mNets
    self.store (
      managedObjectArray: self.mNets_property.propval,
      relationshipName: "mNets",
      intoDictionary: ioDictionary
    )
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: mNets
    self.mNets_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mNets",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [NetInProject])
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mNetClassName
    self.mNetClassName_property.readFrom (dictionary: inDictionary, forKey:"mNetClassName")
  //--- Atomic property: mNetClassColor
    self.mNetClassColor_property.readFrom (dictionary: inDictionary, forKey:"mNetClassColor")
  //--- Atomic property: mNetWidth
    self.mNetWidth_property.readFrom (dictionary: inDictionary, forKey:"mNetWidth")
  //--- Atomic property: mNetWidthUnit
    self.mNetWidthUnit_property.readFrom (dictionary: inDictionary, forKey:"mNetWidthUnit")
  //--- Atomic property: mViaHoleDiameter
    self.mViaHoleDiameter_property.readFrom (dictionary: inDictionary, forKey:"mViaHoleDiameter")
  //--- Atomic property: mViaHoleDiameterUnit
    self.mViaHoleDiameterUnit_property.readFrom (dictionary: inDictionary, forKey:"mViaHoleDiameterUnit")
  //--- Atomic property: mViaPadDiameter
    self.mViaPadDiameter_property.readFrom (dictionary: inDictionary, forKey:"mViaPadDiameter")
  //--- Atomic property: mViaPadDiameterUnit
    self.mViaPadDiameterUnit_property.readFrom (dictionary: inDictionary, forKey:"mViaPadDiameterUnit")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: mNets
    for managedObject in self.mNets {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: mNets
    for managedObject in self.mNets {
      objects.append (managedObject)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SlavePadInDevice_mCenterX : class {
  var mCenterX : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SlavePadInDevice_mCenterY : class {
  var mCenterY : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SlavePadInDevice_mWidth : class {
  var mWidth : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SlavePadInDevice_mHeight : class {
  var mHeight : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SlavePadInDevice_mHoleWidth : class {
  var mHoleWidth : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SlavePadInDevice_mHoleHeight : class {
  var mHoleHeight : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SlavePadInDevice_mShape : class {
  var mShape : PadShape { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SlavePadInDevice_mStyle : class {
  var mStyle : SlavePadStyle { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SlavePadInDevice_frontSideFilledBezierPath : class {
  var frontSideFilledBezierPath : EBBezierPath? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SlavePadInDevice_backSideFilledBezierPath : class {
  var backSideFilledBezierPath : EBBezierPath? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SlavePadInDevice_padNumberDisplay : class {
  var padNumberDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SlavePadInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SlavePadInDevice : EBManagedObject,
         SlavePadInDevice_mCenterX,
         SlavePadInDevice_mCenterY,
         SlavePadInDevice_mWidth,
         SlavePadInDevice_mHeight,
         SlavePadInDevice_mHoleWidth,
         SlavePadInDevice_mHoleHeight,
         SlavePadInDevice_mShape,
         SlavePadInDevice_mStyle,
         SlavePadInDevice_frontSideFilledBezierPath,
         SlavePadInDevice_backSideFilledBezierPath,
         SlavePadInDevice_padNumberDisplay {

  //····················································································································
  //   Atomic property: mCenterX
  //····················································································································

  let mCenterX_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mCenterX : Int {
    get { return self.mCenterX_property.propval }
    set { self.mCenterX_property.setProp (newValue) }
  }

  //····················································································································

  var mCenterX_property_selection : EBSelection <Int> { return self.mCenterX_property.prop }

  //····················································································································
  //   Atomic property: mCenterY
  //····················································································································

  let mCenterY_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mCenterY : Int {
    get { return self.mCenterY_property.propval }
    set { self.mCenterY_property.setProp (newValue) }
  }

  //····················································································································

  var mCenterY_property_selection : EBSelection <Int> { return self.mCenterY_property.prop }

  //····················································································································
  //   Atomic property: mWidth
  //····················································································································

  let mWidth_property = EBStoredProperty_Int (defaultValue: 114300)

  //····················································································································

  var mWidth : Int {
    get { return self.mWidth_property.propval }
    set { self.mWidth_property.setProp (newValue) }
  }

  //····················································································································

  var mWidth_property_selection : EBSelection <Int> { return self.mWidth_property.prop }

  //····················································································································
  //   Atomic property: mHeight
  //····················································································································

  let mHeight_property = EBStoredProperty_Int (defaultValue: 228600)

  //····················································································································

  var mHeight : Int {
    get { return self.mHeight_property.propval }
    set { self.mHeight_property.setProp (newValue) }
  }

  //····················································································································

  var mHeight_property_selection : EBSelection <Int> { return self.mHeight_property.prop }

  //····················································································································
  //   Atomic property: mHoleWidth
  //····················································································································

  let mHoleWidth_property = EBStoredProperty_Int (defaultValue: 57150)

  //····················································································································

  var mHoleWidth : Int {
    get { return self.mHoleWidth_property.propval }
    set { self.mHoleWidth_property.setProp (newValue) }
  }

  //····················································································································

  var mHoleWidth_property_selection : EBSelection <Int> { return self.mHoleWidth_property.prop }

  //····················································································································
  //   Atomic property: mHoleHeight
  //····················································································································

  let mHoleHeight_property = EBStoredProperty_Int (defaultValue: 57150)

  //····················································································································

  var mHoleHeight : Int {
    get { return self.mHoleHeight_property.propval }
    set { self.mHoleHeight_property.setProp (newValue) }
  }

  //····················································································································

  var mHoleHeight_property_selection : EBSelection <Int> { return self.mHoleHeight_property.prop }

  //····················································································································
  //   Atomic property: mShape
  //····················································································································

  let mShape_property = EBStoredProperty_PadShape (defaultValue: PadShape.octo)

  //····················································································································

  var mShape : PadShape {
    get { return self.mShape_property.propval }
    set { self.mShape_property.setProp (newValue) }
  }

  //····················································································································

  var mShape_property_selection : EBSelection <PadShape> { return self.mShape_property.prop }

  //····················································································································
  //   Atomic property: mStyle
  //····················································································································

  let mStyle_property = EBStoredProperty_SlavePadStyle (defaultValue: SlavePadStyle.traversing)

  //····················································································································

  var mStyle : SlavePadStyle {
    get { return self.mStyle_property.propval }
    set { self.mStyle_property.setProp (newValue) }
  }

  //····················································································································

  var mStyle_property_selection : EBSelection <SlavePadStyle> { return self.mStyle_property.prop }

  //····················································································································
  //   To one property: mMasterPad
  //····················································································································

   let mMasterPad_property = StoredObject_MasterPadInDevice (usedForSignature: false)

  //····················································································································

  var mMasterPad_property_selection : EBSelection <MasterPadInDevice?> {
    return .single (self.mMasterPad_property.propval)
  }

  //····················································································································

  var mMasterPad : MasterPadInDevice? {
    get {
      return self.mMasterPad_property.propval
    }
    set {
      if self.mMasterPad_property.propval != nil {
        self.mMasterPad_property.setProp (nil)
      }
      if newValue != nil {
        self.mMasterPad_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  var mMasterPad_none : StoredObject_MasterPadInDevice { return self.mMasterPad_property }

  //····················································································································

  var mMasterPad_none_selection : EBSelection <Bool> {
    return .single (self.mMasterPad_property.propval == nil)
  }

  //····················································································································
  //   Transient property: frontSideFilledBezierPath
  //····················································································································

  let frontSideFilledBezierPath_property = EBTransientProperty_EBBezierPath ()

  //····················································································································

  var frontSideFilledBezierPath_property_selection : EBSelection <EBBezierPath> {
    return self.frontSideFilledBezierPath_property.prop
  }

  //····················································································································

  var frontSideFilledBezierPath : EBBezierPath? {
    switch self.frontSideFilledBezierPath_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: backSideFilledBezierPath
  //····················································································································

  let backSideFilledBezierPath_property = EBTransientProperty_EBBezierPath ()

  //····················································································································

  var backSideFilledBezierPath_property_selection : EBSelection <EBBezierPath> {
    return self.backSideFilledBezierPath_property.prop
  }

  //····················································································································

  var backSideFilledBezierPath : EBBezierPath? {
    switch self.backSideFilledBezierPath_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: padNumberDisplay
  //····················································································································

  let padNumberDisplay_property = EBTransientProperty_EBShape ()

  //····················································································································

  var padNumberDisplay_property_selection : EBSelection <EBShape> {
    return self.padNumberDisplay_property.prop
  }

  //····················································································································

  var padNumberDisplay : EBShape? {
    switch self.padNumberDisplay_property_selection {
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
  //--- Atomic property: mCenterX
    self.mCenterX_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mCenterY
    self.mCenterY_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mWidth
    self.mWidth_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mHeight
    self.mHeight_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mHoleWidth
    self.mHoleWidth_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mHoleHeight
    self.mHoleHeight_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mShape
    self.mShape_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mStyle
    self.mStyle_property.ebUndoManager = self.ebUndoManager
  //--- To one property: mMasterPad (has opposite to many relationship: mSlavePads)
    self.mMasterPad_property.ebUndoManager = self.ebUndoManager
    self.mMasterPad_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mSlavePads_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mSlavePads_property.remove (me) } }
    )
  //--- Atomic property: frontSideFilledBezierPath
    self.frontSideFilledBezierPath_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mCenterX_property_selection.kind ()
        kind &= unwSelf.mCenterY_property_selection.kind ()
        kind &= unwSelf.mWidth_property_selection.kind ()
        kind &= unwSelf.mHeight_property_selection.kind ()
        kind &= unwSelf.mHoleWidth_property_selection.kind ()
        kind &= unwSelf.mHoleHeight_property_selection.kind ()
        kind &= unwSelf.mShape_property_selection.kind ()
        kind &= unwSelf.mStyle_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mCenterX_property_selection, unwSelf.mCenterY_property_selection, unwSelf.mWidth_property_selection, unwSelf.mHeight_property_selection, unwSelf.mHoleWidth_property_selection, unwSelf.mHoleHeight_property_selection, unwSelf.mShape_property_selection, unwSelf.mStyle_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7)) :
            return .single (transient_SlavePadInDevice_frontSideFilledBezierPath (v0, v1, v2, v3, v4, v5, v6, v7))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mCenterX_property.addEBObserver (self.frontSideFilledBezierPath_property, postEvent: false)
    self.mCenterY_property.addEBObserver (self.frontSideFilledBezierPath_property, postEvent: false)
    self.mWidth_property.addEBObserver (self.frontSideFilledBezierPath_property, postEvent: false)
    self.mHeight_property.addEBObserver (self.frontSideFilledBezierPath_property, postEvent: false)
    self.mHoleWidth_property.addEBObserver (self.frontSideFilledBezierPath_property, postEvent: false)
    self.mHoleHeight_property.addEBObserver (self.frontSideFilledBezierPath_property, postEvent: false)
    self.mShape_property.addEBObserver (self.frontSideFilledBezierPath_property, postEvent: false)
    self.mStyle_property.addEBObserver (self.frontSideFilledBezierPath_property, postEvent: false)
    self.frontSideFilledBezierPath_property.postEvent ()
  //--- Atomic property: backSideFilledBezierPath
    self.backSideFilledBezierPath_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mCenterX_property_selection.kind ()
        kind &= unwSelf.mCenterY_property_selection.kind ()
        kind &= unwSelf.mWidth_property_selection.kind ()
        kind &= unwSelf.mHeight_property_selection.kind ()
        kind &= unwSelf.mHoleWidth_property_selection.kind ()
        kind &= unwSelf.mHoleHeight_property_selection.kind ()
        kind &= unwSelf.mShape_property_selection.kind ()
        kind &= unwSelf.mStyle_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mCenterX_property_selection, unwSelf.mCenterY_property_selection, unwSelf.mWidth_property_selection, unwSelf.mHeight_property_selection, unwSelf.mHoleWidth_property_selection, unwSelf.mHoleHeight_property_selection, unwSelf.mShape_property_selection, unwSelf.mStyle_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7)) :
            return .single (transient_SlavePadInDevice_backSideFilledBezierPath (v0, v1, v2, v3, v4, v5, v6, v7))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mCenterX_property.addEBObserver (self.backSideFilledBezierPath_property, postEvent: false)
    self.mCenterY_property.addEBObserver (self.backSideFilledBezierPath_property, postEvent: false)
    self.mWidth_property.addEBObserver (self.backSideFilledBezierPath_property, postEvent: false)
    self.mHeight_property.addEBObserver (self.backSideFilledBezierPath_property, postEvent: false)
    self.mHoleWidth_property.addEBObserver (self.backSideFilledBezierPath_property, postEvent: false)
    self.mHoleHeight_property.addEBObserver (self.backSideFilledBezierPath_property, postEvent: false)
    self.mShape_property.addEBObserver (self.backSideFilledBezierPath_property, postEvent: false)
    self.mStyle_property.addEBObserver (self.backSideFilledBezierPath_property, postEvent: false)
    self.backSideFilledBezierPath_property.postEvent ()
  //--- Atomic property: padNumberDisplay
    self.padNumberDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mCenterX_property_selection.kind ()
        kind &= unwSelf.mCenterY_property_selection.kind ()
        kind &= g_Preferences!.padNumberFont_property_selection.kind ()
        kind &= g_Preferences!.padNumberColor_property_selection.kind ()
        kind &= unwSelf.mMasterPad_property.mName_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mCenterX_property_selection, unwSelf.mCenterY_property_selection, g_Preferences!.padNumberFont_property_selection, g_Preferences!.padNumberColor_property_selection, unwSelf.mMasterPad_property.mName_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_SlavePadInDevice_padNumberDisplay (v0, v1, v2, v3, v4))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mCenterX_property.addEBObserver (self.padNumberDisplay_property, postEvent: false)
    self.mCenterY_property.addEBObserver (self.padNumberDisplay_property, postEvent: false)
    g_Preferences?.padNumberFont_property.addEBObserver (self.padNumberDisplay_property, postEvent: false)
    g_Preferences?.padNumberColor_property.addEBObserver (self.padNumberDisplay_property, postEvent: false)
    self.mMasterPad_property.addEBObserverOf_mName (self.padNumberDisplay_property, postEvent: false)
    self.padNumberDisplay_property.postEvent ()
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
    self.mCenterX_property.setSignatureObserver (observer: self)
    self.mCenterY_property.setSignatureObserver (observer: self)
    self.mHeight_property.setSignatureObserver (observer: self)
    self.mHoleHeight_property.setSignatureObserver (observer: self)
    self.mHoleWidth_property.setSignatureObserver (observer: self)
    self.mShape_property.setSignatureObserver (observer: self)
    self.mStyle_property.setSignatureObserver (observer: self)
    self.mWidth_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mCenterX_property.removeEBObserver (self.frontSideFilledBezierPath_property)
    self.mCenterY_property.removeEBObserver (self.frontSideFilledBezierPath_property)
    self.mWidth_property.removeEBObserver (self.frontSideFilledBezierPath_property)
    self.mHeight_property.removeEBObserver (self.frontSideFilledBezierPath_property)
    self.mHoleWidth_property.removeEBObserver (self.frontSideFilledBezierPath_property)
    self.mHoleHeight_property.removeEBObserver (self.frontSideFilledBezierPath_property)
    self.mShape_property.removeEBObserver (self.frontSideFilledBezierPath_property)
    self.mStyle_property.removeEBObserver (self.frontSideFilledBezierPath_property)
    self.mCenterX_property.removeEBObserver (self.backSideFilledBezierPath_property)
    self.mCenterY_property.removeEBObserver (self.backSideFilledBezierPath_property)
    self.mWidth_property.removeEBObserver (self.backSideFilledBezierPath_property)
    self.mHeight_property.removeEBObserver (self.backSideFilledBezierPath_property)
    self.mHoleWidth_property.removeEBObserver (self.backSideFilledBezierPath_property)
    self.mHoleHeight_property.removeEBObserver (self.backSideFilledBezierPath_property)
    self.mShape_property.removeEBObserver (self.backSideFilledBezierPath_property)
    self.mStyle_property.removeEBObserver (self.backSideFilledBezierPath_property)
    self.mCenterX_property.removeEBObserver (self.padNumberDisplay_property)
    self.mCenterY_property.removeEBObserver (self.padNumberDisplay_property)
    g_Preferences?.padNumberFont_property.removeEBObserver (self.padNumberDisplay_property)
    g_Preferences?.padNumberColor_property.removeEBObserver (self.padNumberDisplay_property)
    self.mMasterPad_property.removeEBObserverOf_mName (self.padNumberDisplay_property)
  //--- Unregister properties for handling signature
    self.mCenterX_property.setSignatureObserver (observer: nil)
    self.mCenterY_property.setSignatureObserver (observer: nil)
    self.mHeight_property.setSignatureObserver (observer: nil)
    self.mHoleHeight_property.setSignatureObserver (observer: nil)
    self.mHoleWidth_property.setSignatureObserver (observer: nil)
    self.mShape_property.setSignatureObserver (observer: nil)
    self.mStyle_property.setSignatureObserver (observer: nil)
    self.mWidth_property.setSignatureObserver (observer: nil)
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
      "mCenterX",
      idx: self.mCenterX_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mCenterX_property.mObserverExplorer,
      valueExplorer: &self.mCenterX_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mCenterY",
      idx: self.mCenterY_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mCenterY_property.mObserverExplorer,
      valueExplorer: &self.mCenterY_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mWidth",
      idx: self.mWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mWidth_property.mObserverExplorer,
      valueExplorer: &self.mWidth_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mHeight",
      idx: self.mHeight_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mHeight_property.mObserverExplorer,
      valueExplorer: &self.mHeight_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mHoleWidth",
      idx: self.mHoleWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mHoleWidth_property.mObserverExplorer,
      valueExplorer: &self.mHoleWidth_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mHoleHeight",
      idx: self.mHoleHeight_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mHoleHeight_property.mObserverExplorer,
      valueExplorer: &self.mHoleHeight_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mShape",
      idx: self.mShape_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mShape_property.mObserverExplorer,
      valueExplorer: &self.mShape_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mStyle",
      idx: self.mStyle_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mStyle_property.mObserverExplorer,
      valueExplorer: &self.mStyle_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "frontSideFilledBezierPath",
      idx: self.frontSideFilledBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.frontSideFilledBezierPath_property.mObserverExplorer,
      valueExplorer: &self.frontSideFilledBezierPath_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "backSideFilledBezierPath",
      idx: self.backSideFilledBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.backSideFilledBezierPath_property.mObserverExplorer,
      valueExplorer: &self.backSideFilledBezierPath_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "padNumberDisplay",
      idx: self.padNumberDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.padNumberDisplay_property.mObserverExplorer,
      valueExplorer: &self.padNumberDisplay_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mMasterPad",
      idx:self.mMasterPad_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mMasterPad_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mCenterX
    self.mCenterX_property.mObserverExplorer = nil
    self.mCenterX_property.mValueExplorer = nil
  //--- Atomic property: mCenterY
    self.mCenterY_property.mObserverExplorer = nil
    self.mCenterY_property.mValueExplorer = nil
  //--- Atomic property: mWidth
    self.mWidth_property.mObserverExplorer = nil
    self.mWidth_property.mValueExplorer = nil
  //--- Atomic property: mHeight
    self.mHeight_property.mObserverExplorer = nil
    self.mHeight_property.mValueExplorer = nil
  //--- Atomic property: mHoleWidth
    self.mHoleWidth_property.mObserverExplorer = nil
    self.mHoleWidth_property.mValueExplorer = nil
  //--- Atomic property: mHoleHeight
    self.mHoleHeight_property.mObserverExplorer = nil
    self.mHoleHeight_property.mValueExplorer = nil
  //--- Atomic property: mShape
    self.mShape_property.mObserverExplorer = nil
    self.mShape_property.mValueExplorer = nil
  //--- Atomic property: mStyle
    self.mStyle_property.mObserverExplorer = nil
    self.mStyle_property.mValueExplorer = nil
  //--- To one property: mMasterPad
    self.mMasterPad_property.mObserverExplorer = nil
    self.mMasterPad_property.mValueExplorer = nil
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
    self.mMasterPad = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: mCenterX
    self.mCenterX_property.storeIn (dictionary: ioDictionary, forKey:"mCenterX")
  //--- Atomic property: mCenterY
    self.mCenterY_property.storeIn (dictionary: ioDictionary, forKey:"mCenterY")
  //--- Atomic property: mWidth
    self.mWidth_property.storeIn (dictionary: ioDictionary, forKey:"mWidth")
  //--- Atomic property: mHeight
    self.mHeight_property.storeIn (dictionary: ioDictionary, forKey:"mHeight")
  //--- Atomic property: mHoleWidth
    self.mHoleWidth_property.storeIn (dictionary: ioDictionary, forKey:"mHoleWidth")
  //--- Atomic property: mHoleHeight
    self.mHoleHeight_property.storeIn (dictionary: ioDictionary, forKey:"mHoleHeight")
  //--- Atomic property: mShape
    self.mShape_property.storeIn (dictionary: ioDictionary, forKey:"mShape")
  //--- Atomic property: mStyle
    self.mStyle_property.storeIn (dictionary: ioDictionary, forKey:"mStyle")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To one property: mMasterPad
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mMasterPad",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? MasterPadInDevice {
        self.mMasterPad_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mCenterX
    self.mCenterX_property.readFrom (dictionary: inDictionary, forKey:"mCenterX")
  //--- Atomic property: mCenterY
    self.mCenterY_property.readFrom (dictionary: inDictionary, forKey:"mCenterY")
  //--- Atomic property: mWidth
    self.mWidth_property.readFrom (dictionary: inDictionary, forKey:"mWidth")
  //--- Atomic property: mHeight
    self.mHeight_property.readFrom (dictionary: inDictionary, forKey:"mHeight")
  //--- Atomic property: mHoleWidth
    self.mHoleWidth_property.readFrom (dictionary: inDictionary, forKey:"mHoleWidth")
  //--- Atomic property: mHoleHeight
    self.mHoleHeight_property.readFrom (dictionary: inDictionary, forKey:"mHoleHeight")
  //--- Atomic property: mShape
    self.mShape_property.readFrom (dictionary: inDictionary, forKey:"mShape")
  //--- Atomic property: mStyle
    self.mStyle_property.readFrom (dictionary: inDictionary, forKey:"mStyle")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To one property: mMasterPad
    if let object = self.mMasterPad {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To one property: mMasterPad
    if let object = self.mMasterPad {
      objects.append (object)
    }
  }

  //····················································································································
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.mCenterX_property.signature ())
    crc.accumulateUInt32 (self.mCenterY_property.signature ())
    crc.accumulateUInt32 (self.mHeight_property.signature ())
    crc.accumulateUInt32 (self.mHoleHeight_property.signature ())
    crc.accumulateUInt32 (self.mHoleWidth_property.signature ())
    crc.accumulateUInt32 (self.mShape_property.signature ())
    crc.accumulateUInt32 (self.mStyle_property.signature ())
    crc.accumulateUInt32 (self.mWidth_property.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


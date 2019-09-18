//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_mCenterX : class {
  var mCenterX : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_mCenterY : class {
  var mCenterY : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_mWidth : class {
  var mWidth : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_mHeight : class {
  var mHeight : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_mHoleWidth : class {
  var mHoleWidth : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_mHoleHeight : class {
  var mHoleHeight : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_mShape : class {
  var mShape : PadShape { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_mStyle : class {
  var mStyle : PadStyle { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_mName : class {
  var mName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_padNumberDisplay : class {
  var padNumberDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_frontSideFilledBezierPathArray : class {
  var frontSideFilledBezierPathArray : BezierPathArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol MasterPadInDevice_backSideFilledBezierPathArray : class {
  var backSideFilledBezierPathArray : BezierPathArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: MasterPadInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class MasterPadInDevice : EBManagedObject,
         MasterPadInDevice_mCenterX,
         MasterPadInDevice_mCenterY,
         MasterPadInDevice_mWidth,
         MasterPadInDevice_mHeight,
         MasterPadInDevice_mHoleWidth,
         MasterPadInDevice_mHoleHeight,
         MasterPadInDevice_mShape,
         MasterPadInDevice_mStyle,
         MasterPadInDevice_mName,
         MasterPadInDevice_padNumberDisplay,
         MasterPadInDevice_frontSideFilledBezierPathArray,
         MasterPadInDevice_backSideFilledBezierPathArray {

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

  let mStyle_property = EBStoredProperty_PadStyle (defaultValue: PadStyle.traversing)

  //····················································································································

  var mStyle : PadStyle {
    get { return self.mStyle_property.propval }
    set { self.mStyle_property.setProp (newValue) }
  }

  //····················································································································

  var mStyle_property_selection : EBSelection <PadStyle> { return self.mStyle_property.prop }

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
  //   To many property: mSlavePads
  //····················································································································

  let mSlavePads_property = StoredArrayOf_SlavePadInDevice (usedForSignature: true)

  //····················································································································

  var mSlavePads_property_selection : EBSelection < [SlavePadInDevice] > {
    return self.mSlavePads_property.prop
  }

  //····················································································································

  var mSlavePads : [SlavePadInDevice] {
    get { return self.mSlavePads_property.propval }
    set { self.mSlavePads_property.setProp (newValue) }
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
  //   Transient property: frontSideFilledBezierPathArray
  //····················································································································

  let frontSideFilledBezierPathArray_property = EBTransientProperty_BezierPathArray ()

  //····················································································································

  var frontSideFilledBezierPathArray_property_selection : EBSelection <BezierPathArray> {
    return self.frontSideFilledBezierPathArray_property.prop
  }

  //····················································································································

  var frontSideFilledBezierPathArray : BezierPathArray? {
    switch self.frontSideFilledBezierPathArray_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: backSideFilledBezierPathArray
  //····················································································································

  let backSideFilledBezierPathArray_property = EBTransientProperty_BezierPathArray ()

  //····················································································································

  var backSideFilledBezierPathArray_property_selection : EBSelection <BezierPathArray> {
    return self.backSideFilledBezierPathArray_property.prop
  }

  //····················································································································

  var backSideFilledBezierPathArray : BezierPathArray? {
    switch self.backSideFilledBezierPathArray_property_selection {
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
  //--- Atomic property: mName
    self.mName_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mSlavePads (has opposite relationship)
    self.mSlavePads_property.ebUndoManager = self.ebUndoManager
    self.mSlavePads_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mMasterPad_property.setProp (me) } },
      resetter: { inObject in inObject.mMasterPad_property.setProp (nil) }
    )
  //--- Atomic property: padNumberDisplay
    self.padNumberDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mCenterX_property_selection.kind ()
        kind &= unwSelf.mCenterY_property_selection.kind ()
        kind &= g_Preferences!.padNumberColor_property_selection.kind ()
        kind &= unwSelf.mName_property_selection.kind ()
        kind &= g_Preferences!.padNumberFont_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mCenterX_property_selection, unwSelf.mCenterY_property_selection, g_Preferences!.padNumberColor_property_selection, unwSelf.mName_property_selection, g_Preferences!.padNumberFont_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_MasterPadInDevice_padNumberDisplay (v0, v1, v2, v3, v4))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mCenterX_property.addEBObserver (self.padNumberDisplay_property)
    self.mCenterY_property.addEBObserver (self.padNumberDisplay_property)
    g_Preferences?.padNumberColor_property.addEBObserver (self.padNumberDisplay_property)
    self.mName_property.addEBObserver (self.padNumberDisplay_property)
    g_Preferences?.padNumberFont_property.addEBObserver (self.padNumberDisplay_property)
  //--- Atomic property: frontSideFilledBezierPathArray
    self.frontSideFilledBezierPathArray_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mCenterX_property_selection.kind ()
        kind &= unwSelf.mCenterY_property_selection.kind ()
        kind &= unwSelf.mWidth_property_selection.kind ()
        kind &= unwSelf.mHeight_property_selection.kind ()
        kind &= unwSelf.mHoleWidth_property_selection.kind ()
        kind &= unwSelf.mHoleHeight_property_selection.kind ()
        kind &= unwSelf.mShape_property_selection.kind ()
        kind &= unwSelf.mStyle_property_selection.kind ()
        kind &= unwSelf.mSlavePads_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mCenterX_property_selection, unwSelf.mCenterY_property_selection, unwSelf.mWidth_property_selection, unwSelf.mHeight_property_selection, unwSelf.mHoleWidth_property_selection, unwSelf.mHoleHeight_property_selection, unwSelf.mShape_property_selection, unwSelf.mStyle_property_selection, unwSelf.mSlavePads_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7), .single (let v8)) :
            return .single (transient_MasterPadInDevice_frontSideFilledBezierPathArray (v0, v1, v2, v3, v4, v5, v6, v7, v8))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mCenterX_property.addEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mCenterY_property.addEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mWidth_property.addEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mHeight_property.addEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mHoleWidth_property.addEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mHoleHeight_property.addEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mShape_property.addEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mStyle_property.addEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mSlavePads_property.addEBObserverOf_frontSideFilledBezierPath (self.frontSideFilledBezierPathArray_property)
  //--- Atomic property: backSideFilledBezierPathArray
    self.backSideFilledBezierPathArray_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mCenterX_property_selection.kind ()
        kind &= unwSelf.mCenterY_property_selection.kind ()
        kind &= unwSelf.mWidth_property_selection.kind ()
        kind &= unwSelf.mHeight_property_selection.kind ()
        kind &= unwSelf.mHoleWidth_property_selection.kind ()
        kind &= unwSelf.mHoleHeight_property_selection.kind ()
        kind &= unwSelf.mShape_property_selection.kind ()
        kind &= unwSelf.mStyle_property_selection.kind ()
        kind &= unwSelf.mSlavePads_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mCenterX_property_selection, unwSelf.mCenterY_property_selection, unwSelf.mWidth_property_selection, unwSelf.mHeight_property_selection, unwSelf.mHoleWidth_property_selection, unwSelf.mHoleHeight_property_selection, unwSelf.mShape_property_selection, unwSelf.mStyle_property_selection, unwSelf.mSlavePads_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7), .single (let v8)) :
            return .single (transient_MasterPadInDevice_backSideFilledBezierPathArray (v0, v1, v2, v3, v4, v5, v6, v7, v8))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mCenterX_property.addEBObserver (self.backSideFilledBezierPathArray_property)
    self.mCenterY_property.addEBObserver (self.backSideFilledBezierPathArray_property)
    self.mWidth_property.addEBObserver (self.backSideFilledBezierPathArray_property)
    self.mHeight_property.addEBObserver (self.backSideFilledBezierPathArray_property)
    self.mHoleWidth_property.addEBObserver (self.backSideFilledBezierPathArray_property)
    self.mHoleHeight_property.addEBObserver (self.backSideFilledBezierPathArray_property)
    self.mShape_property.addEBObserver (self.backSideFilledBezierPathArray_property)
    self.mStyle_property.addEBObserver (self.backSideFilledBezierPathArray_property)
    self.mSlavePads_property.addEBObserverOf_backSideFilledBezierPath (self.backSideFilledBezierPathArray_property)
  //--- Install undoers and opposite setter for relationships
    self.mSlavePads_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mMasterPad_property.setProp (me) } },
      resetter: { inObject in inObject.mMasterPad_property.setProp (nil) }
    )
  //--- Register properties for handling signature
    self.mCenterX_property.setSignatureObserver (observer: self)
    self.mCenterY_property.setSignatureObserver (observer: self)
    self.mHeight_property.setSignatureObserver (observer: self)
    self.mHoleHeight_property.setSignatureObserver (observer: self)
    self.mHoleWidth_property.setSignatureObserver (observer: self)
    self.mName_property.setSignatureObserver (observer: self)
    self.mShape_property.setSignatureObserver (observer: self)
    self.mSlavePads_property.setSignatureObserver (observer: self)
    self.mStyle_property.setSignatureObserver (observer: self)
    self.mWidth_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mCenterX_property.removeEBObserver (self.padNumberDisplay_property)
    self.mCenterY_property.removeEBObserver (self.padNumberDisplay_property)
    g_Preferences?.padNumberColor_property.removeEBObserver (self.padNumberDisplay_property)
    self.mName_property.removeEBObserver (self.padNumberDisplay_property)
    g_Preferences?.padNumberFont_property.removeEBObserver (self.padNumberDisplay_property)
    self.mCenterX_property.removeEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mCenterY_property.removeEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mWidth_property.removeEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mHeight_property.removeEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mHoleWidth_property.removeEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mHoleHeight_property.removeEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mShape_property.removeEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mStyle_property.removeEBObserver (self.frontSideFilledBezierPathArray_property)
    self.mSlavePads_property.removeEBObserverOf_frontSideFilledBezierPath (self.frontSideFilledBezierPathArray_property)
    self.mCenterX_property.removeEBObserver (self.backSideFilledBezierPathArray_property)
    self.mCenterY_property.removeEBObserver (self.backSideFilledBezierPathArray_property)
    self.mWidth_property.removeEBObserver (self.backSideFilledBezierPathArray_property)
    self.mHeight_property.removeEBObserver (self.backSideFilledBezierPathArray_property)
    self.mHoleWidth_property.removeEBObserver (self.backSideFilledBezierPathArray_property)
    self.mHoleHeight_property.removeEBObserver (self.backSideFilledBezierPathArray_property)
    self.mShape_property.removeEBObserver (self.backSideFilledBezierPathArray_property)
    self.mStyle_property.removeEBObserver (self.backSideFilledBezierPathArray_property)
    self.mSlavePads_property.removeEBObserverOf_backSideFilledBezierPath (self.backSideFilledBezierPathArray_property)
  //--- Unregister properties for handling signature
    self.mCenterX_property.setSignatureObserver (observer: nil)
    self.mCenterY_property.setSignatureObserver (observer: nil)
    self.mHeight_property.setSignatureObserver (observer: nil)
    self.mHoleHeight_property.setSignatureObserver (observer: nil)
    self.mHoleWidth_property.setSignatureObserver (observer: nil)
    self.mName_property.setSignatureObserver (observer: nil)
    self.mShape_property.setSignatureObserver (observer: nil)
    self.mSlavePads_property.setSignatureObserver (observer: nil)
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
    createEntryForPropertyNamed (
      "mName",
      idx: self.mName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mName_property.mObserverExplorer,
      valueExplorer: &self.mName_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "padNumberDisplay",
      idx: self.padNumberDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.padNumberDisplay_property.mObserverExplorer,
      valueExplorer: &self.padNumberDisplay_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "frontSideFilledBezierPathArray",
      idx: self.frontSideFilledBezierPathArray_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.frontSideFilledBezierPathArray_property.mObserverExplorer,
      valueExplorer: &self.frontSideFilledBezierPathArray_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "backSideFilledBezierPathArray",
      idx: self.backSideFilledBezierPathArray_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.backSideFilledBezierPathArray_property.mObserverExplorer,
      valueExplorer: &self.backSideFilledBezierPathArray_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "mSlavePads",
      idx:mSlavePads_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mSlavePads_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
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
  //--- Atomic property: mName
    self.mName_property.mObserverExplorer = nil
    self.mName_property.mValueExplorer = nil
  //--- To many property: mSlavePads
    self.mSlavePads_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mSlavePads = []
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
  //--- Atomic property: mName
    self.mName_property.storeIn (dictionary: ioDictionary, forKey:"mName")
  //--- To many property: mSlavePads
    self.store (
      managedObjectArray: self.mSlavePads_property.propval,
      relationshipName: "mSlavePads",
      intoDictionary: ioDictionary
    )
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: mSlavePads
    self.mSlavePads_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mSlavePads",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [SlavePadInDevice])
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
  //--- Atomic property: mName
    self.mName_property.readFrom (dictionary: inDictionary, forKey:"mName")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: mSlavePads
    for managedObject in self.mSlavePads {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: mSlavePads
    for managedObject in self.mSlavePads {
      objects.append (managedObject)
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
    crc.accumulateUInt32 (self.mName_property.signature ())
    crc.accumulateUInt32 (self.mShape_property.signature ())
    crc.accumulateUInt32 (self.mSlavePads_property.signature ())
    crc.accumulateUInt32 (self.mStyle_property.signature ())
    crc.accumulateUInt32 (self.mWidth_property.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


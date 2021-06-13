//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1

let BOARD_RESTRICT_RECT_BOTTOM = 1
let BOARD_RESTRICT_RECT_RIGHT  = 2
let BOARD_RESTRICT_RECT_TOP    = 3
let BOARD_RESTRICT_RECT_LEFT   = 4


//--- END OF USER ZONE 1
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol BoardRestrictRectangle_mY : AnyObject {
  var mY : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardRestrictRectangle_mWidth : AnyObject {
  var mWidth : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardRestrictRectangle_mHeight : AnyObject {
  var mHeight : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardRestrictRectangle_mIsInFrontLayer : AnyObject {
  var mIsInFrontLayer : Bool { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardRestrictRectangle_mIsInBackLayer : AnyObject {
  var mIsInBackLayer : Bool { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardRestrictRectangle_mX : AnyObject {
  var mX : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardRestrictRectangle_objectDisplay : AnyObject {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardRestrictRectangle_selectionDisplay : AnyObject {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardRestrictRectangle_signatureForERCChecking : AnyObject {
  var signatureForERCChecking : UInt32? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: BoardRestrictRectangle
//----------------------------------------------------------------------------------------------------------------------

final class BoardRestrictRectangle : BoardObject,
         BoardRestrictRectangle_mY,
         BoardRestrictRectangle_mWidth,
         BoardRestrictRectangle_mHeight,
         BoardRestrictRectangle_mIsInFrontLayer,
         BoardRestrictRectangle_mIsInBackLayer,
         BoardRestrictRectangle_mX,
         BoardRestrictRectangle_objectDisplay,
         BoardRestrictRectangle_selectionDisplay,
         BoardRestrictRectangle_signatureForERCChecking {

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
  //   Atomic property: mWidth
  //····················································································································

  final let mWidth_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mWidth_toDefaultValue () {
    self.mWidth = 2286000
  }

  //····················································································································

  final var mWidth : Int {
    get { return self.mWidth_property.propval }
    set { self.mWidth_property.setProp (newValue) }
  }

  //····················································································································

  final var mWidth_property_selection : EBSelection <Int> { return self.mWidth_property.selection }

  //····················································································································
  //   Atomic property: mHeight
  //····················································································································

  final let mHeight_property : EBStoredProperty_Int

  //····················································································································

  final func reset_mHeight_toDefaultValue () {
    self.mHeight = 2286000
  }

  //····················································································································

  final var mHeight : Int {
    get { return self.mHeight_property.propval }
    set { self.mHeight_property.setProp (newValue) }
  }

  //····················································································································

  final var mHeight_property_selection : EBSelection <Int> { return self.mHeight_property.selection }

  //····················································································································
  //   Atomic property: mIsInFrontLayer
  //····················································································································

  final let mIsInFrontLayer_property : EBStoredProperty_Bool

  //····················································································································

  final func reset_mIsInFrontLayer_toDefaultValue () {
    self.mIsInFrontLayer = true
  }

  //····················································································································

  final var mIsInFrontLayer : Bool {
    get { return self.mIsInFrontLayer_property.propval }
    set { self.mIsInFrontLayer_property.setProp (newValue) }
  }

  //····················································································································

  final var mIsInFrontLayer_property_selection : EBSelection <Bool> { return self.mIsInFrontLayer_property.selection }

  //····················································································································
  //   Atomic property: mIsInBackLayer
  //····················································································································

  final let mIsInBackLayer_property : EBStoredProperty_Bool

  //····················································································································

  final func reset_mIsInBackLayer_toDefaultValue () {
    self.mIsInBackLayer = true
  }

  //····················································································································

  final var mIsInBackLayer : Bool {
    get { return self.mIsInBackLayer_property.propval }
    set { self.mIsInBackLayer_property.setProp (newValue) }
  }

  //····················································································································

  final var mIsInBackLayer_property_selection : EBSelection <Bool> { return self.mIsInBackLayer_property.selection }

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
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    self.mY_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.mWidth_property = EBStoredProperty_Int (defaultValue: 2286000, undoManager: ebUndoManager)
    self.mHeight_property = EBStoredProperty_Int (defaultValue: 2286000, undoManager: ebUndoManager)
    self.mIsInFrontLayer_property = EBStoredProperty_Bool (defaultValue: true, undoManager: ebUndoManager)
    self.mIsInBackLayer_property = EBStoredProperty_Bool (defaultValue: true, undoManager: ebUndoManager)
    self.mX_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mX_property_selection.kind ()
        kind &= unwSelf.mY_property_selection.kind ()
        kind &= unwSelf.mWidth_property_selection.kind ()
        kind &= unwSelf.mHeight_property_selection.kind ()
        kind &= unwSelf.mIsInFrontLayer_property_selection.kind ()
        kind &= unwSelf.mIsInBackLayer_property_selection.kind ()
        kind &= preferences_displayFrontRestrictRectangles_property_selection.kind ()
        kind &= preferences_displayBackRestrictRectangles_property_selection.kind ()
        kind &= preferences_frontSideRestrictRectangleColorForBoard_property_selection.kind ()
        kind &= preferences_backSideRestrictRectangleColorForBoard_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mX_property_selection, unwSelf.mY_property_selection, unwSelf.mWidth_property_selection, unwSelf.mHeight_property_selection, unwSelf.mIsInFrontLayer_property_selection, unwSelf.mIsInBackLayer_property_selection, preferences_displayFrontRestrictRectangles_property_selection, preferences_displayBackRestrictRectangles_property_selection, preferences_frontSideRestrictRectangleColorForBoard_property_selection, preferences_backSideRestrictRectangleColorForBoard_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7), .single (let v8), .single (let v9)) :
            return .single (transient_BoardRestrictRectangle_objectDisplay (v0, v1, v2, v3, v4, v5, v6, v7, v8, v9))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mX_property.addEBObserver (self.objectDisplay_property)
    self.mY_property.addEBObserver (self.objectDisplay_property)
    self.mWidth_property.addEBObserver (self.objectDisplay_property)
    self.mHeight_property.addEBObserver (self.objectDisplay_property)
    self.mIsInFrontLayer_property.addEBObserver (self.objectDisplay_property)
    self.mIsInBackLayer_property.addEBObserver (self.objectDisplay_property)
    preferences_displayFrontRestrictRectangles_property.addEBObserver (self.objectDisplay_property)
    preferences_displayBackRestrictRectangles_property.addEBObserver (self.objectDisplay_property)
    preferences_frontSideRestrictRectangleColorForBoard_property.addEBObserver (self.objectDisplay_property)
    preferences_backSideRestrictRectangleColorForBoard_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mX_property_selection.kind ()
        kind &= unwSelf.mY_property_selection.kind ()
        kind &= unwSelf.mWidth_property_selection.kind ()
        kind &= unwSelf.mHeight_property_selection.kind ()
        kind &= unwSelf.mIsInFrontLayer_property_selection.kind ()
        kind &= unwSelf.mIsInBackLayer_property_selection.kind ()
        kind &= preferences_hiliteWidthMultipliedByTen_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mX_property_selection, unwSelf.mY_property_selection, unwSelf.mWidth_property_selection, unwSelf.mHeight_property_selection, unwSelf.mIsInFrontLayer_property_selection, unwSelf.mIsInBackLayer_property_selection, preferences_hiliteWidthMultipliedByTen_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6)) :
            return .single (transient_BoardRestrictRectangle_selectionDisplay (v0, v1, v2, v3, v4, v5, v6))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mX_property.addEBObserver (self.selectionDisplay_property)
    self.mY_property.addEBObserver (self.selectionDisplay_property)
    self.mWidth_property.addEBObserver (self.selectionDisplay_property)
    self.mHeight_property.addEBObserver (self.selectionDisplay_property)
    self.mIsInFrontLayer_property.addEBObserver (self.selectionDisplay_property)
    self.mIsInBackLayer_property.addEBObserver (self.selectionDisplay_property)
    preferences_hiliteWidthMultipliedByTen_property.addEBObserver (self.selectionDisplay_property)
  //--- Atomic property: signatureForERCChecking
    self.signatureForERCChecking_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mX_property_selection.kind ()
        kind &= unwSelf.mY_property_selection.kind ()
        kind &= unwSelf.mWidth_property_selection.kind ()
        kind &= unwSelf.mHeight_property_selection.kind ()
        kind &= unwSelf.mIsInFrontLayer_property_selection.kind ()
        kind &= unwSelf.mIsInBackLayer_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mX_property_selection, unwSelf.mY_property_selection, unwSelf.mWidth_property_selection, unwSelf.mHeight_property_selection, unwSelf.mIsInFrontLayer_property_selection, unwSelf.mIsInBackLayer_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5)) :
            return .single (transient_BoardRestrictRectangle_signatureForERCChecking (v0, v1, v2, v3, v4, v5))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mX_property.addEBObserver (self.signatureForERCChecking_property)
    self.mY_property.addEBObserver (self.signatureForERCChecking_property)
    self.mWidth_property.addEBObserver (self.signatureForERCChecking_property)
    self.mHeight_property.addEBObserver (self.signatureForERCChecking_property)
    self.mIsInFrontLayer_property.addEBObserver (self.signatureForERCChecking_property)
    self.mIsInBackLayer_property.addEBObserver (self.signatureForERCChecking_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.mX_property.removeEBObserver (self.objectDisplay_property)
    // self.mY_property.removeEBObserver (self.objectDisplay_property)
    // self.mWidth_property.removeEBObserver (self.objectDisplay_property)
    // self.mHeight_property.removeEBObserver (self.objectDisplay_property)
    // self.mIsInFrontLayer_property.removeEBObserver (self.objectDisplay_property)
    // self.mIsInBackLayer_property.removeEBObserver (self.objectDisplay_property)
    // preferences_displayFrontRestrictRectangles_property.removeEBObserver (self.objectDisplay_property)
    // preferences_displayBackRestrictRectangles_property.removeEBObserver (self.objectDisplay_property)
    // preferences_frontSideRestrictRectangleColorForBoard_property.removeEBObserver (self.objectDisplay_property)
    // preferences_backSideRestrictRectangleColorForBoard_property.removeEBObserver (self.objectDisplay_property)
    // self.mX_property.removeEBObserver (self.selectionDisplay_property)
    // self.mY_property.removeEBObserver (self.selectionDisplay_property)
    // self.mWidth_property.removeEBObserver (self.selectionDisplay_property)
    // self.mHeight_property.removeEBObserver (self.selectionDisplay_property)
    // self.mIsInFrontLayer_property.removeEBObserver (self.selectionDisplay_property)
    // self.mIsInBackLayer_property.removeEBObserver (self.selectionDisplay_property)
    // preferences_hiliteWidthMultipliedByTen_property.removeEBObserver (self.selectionDisplay_property)
    // self.mX_property.removeEBObserver (self.signatureForERCChecking_property)
    // self.mY_property.removeEBObserver (self.signatureForERCChecking_property)
    // self.mWidth_property.removeEBObserver (self.signatureForERCChecking_property)
    // self.mHeight_property.removeEBObserver (self.signatureForERCChecking_property)
    // self.mIsInFrontLayer_property.removeEBObserver (self.signatureForERCChecking_property)
    // self.mIsInBackLayer_property.removeEBObserver (self.signatureForERCChecking_property)
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
      "mY",
      idx: self.mY_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mY_property.mObserverExplorer,
      valueExplorer: &self.mY_property.mValueExplorer
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
      "mIsInFrontLayer",
      idx: self.mIsInFrontLayer_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mIsInFrontLayer_property.mObserverExplorer,
      valueExplorer: &self.mIsInFrontLayer_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mIsInBackLayer",
      idx: self.mIsInBackLayer_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mIsInBackLayer_property.mObserverExplorer,
      valueExplorer: &self.mIsInBackLayer_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mX",
      idx: self.mX_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mX_property.mObserverExplorer,
      valueExplorer: &self.mX_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "objectDisplay",
      idx: self.objectDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.objectDisplay_property.mObserverExplorer,
      valueExplorer: &self.objectDisplay_property.mValueExplorer
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
      "signatureForERCChecking",
      idx: self.signatureForERCChecking_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.signatureForERCChecking_property.mObserverExplorer,
      valueExplorer: &self.signatureForERCChecking_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mY
    self.mY_property.mObserverExplorer = nil
    self.mY_property.mValueExplorer = nil
  //--- Atomic property: mWidth
    self.mWidth_property.mObserverExplorer = nil
    self.mWidth_property.mValueExplorer = nil
  //--- Atomic property: mHeight
    self.mHeight_property.mObserverExplorer = nil
    self.mHeight_property.mValueExplorer = nil
  //--- Atomic property: mIsInFrontLayer
    self.mIsInFrontLayer_property.mObserverExplorer = nil
    self.mIsInFrontLayer_property.mValueExplorer = nil
  //--- Atomic property: mIsInBackLayer
    self.mIsInBackLayer_property.mObserverExplorer = nil
    self.mIsInBackLayer_property.mValueExplorer = nil
  //--- Atomic property: mX
    self.mX_property.mObserverExplorer = nil
    self.mX_property.mValueExplorer = nil
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
  //--- Atomic property: mY
    self.mY_property.storeIn (dictionary: ioDictionary, forKey: "mY")
  //--- Atomic property: mWidth
    self.mWidth_property.storeIn (dictionary: ioDictionary, forKey: "mWidth")
  //--- Atomic property: mHeight
    self.mHeight_property.storeIn (dictionary: ioDictionary, forKey: "mHeight")
  //--- Atomic property: mIsInFrontLayer
    self.mIsInFrontLayer_property.storeIn (dictionary: ioDictionary, forKey: "mIsInFrontLayer")
  //--- Atomic property: mIsInBackLayer
    self.mIsInBackLayer_property.storeIn (dictionary: ioDictionary, forKey: "mIsInBackLayer")
  //--- Atomic property: mX
    self.mX_property.storeIn (dictionary: ioDictionary, forKey: "mX")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mY
    self.mY_property.readFrom (dictionary: inDictionary, forKey: "mY")
  //--- Atomic property: mWidth
    self.mWidth_property.readFrom (dictionary: inDictionary, forKey: "mWidth")
  //--- Atomic property: mHeight
    self.mHeight_property.readFrom (dictionary: inDictionary, forKey: "mHeight")
  //--- Atomic property: mIsInFrontLayer
    self.mIsInFrontLayer_property.readFrom (dictionary: inDictionary, forKey: "mIsInFrontLayer")
  //--- Atomic property: mIsInBackLayer
    self.mIsInBackLayer_property.readFrom (dictionary: inDictionary, forKey: "mIsInBackLayer")
  //--- Atomic property: mX
    self.mX_property.readFrom (dictionary: inDictionary, forKey: "mX")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mY\n"
    ioString += "mWidth\n"
    ioString += "mHeight\n"
    ioString += "mIsInFrontLayer\n"
    ioString += "mIsInBackLayer\n"
    ioString += "mX\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mY.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mWidth.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mHeight.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mIsInFrontLayer.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mIsInBackLayer.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mX.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
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
    inParallelObjectSetupContext.addOperation {
    //--- Atomic properties
      if let range = inDictionary ["mY"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mY = value
      }
      if let range = inDictionary ["mWidth"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mWidth = value
      }
      if let range = inDictionary ["mHeight"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mHeight = value
      }
      if let range = inDictionary ["mIsInFrontLayer"], let value = Bool.unarchiveFromDataRange (inData, range) {
        self.mIsInFrontLayer = value
      }
      if let range = inDictionary ["mIsInBackLayer"], let value = Bool.unarchiveFromDataRange (inData, range) {
        self.mIsInBackLayer = value
      }
      if let range = inDictionary ["mX"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mX = value
      }
    //--- To one relationships
    //--- To many relationships
    }
  //--- End of addOperation
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
  //  USER ZONE 2
  //····················································································································
//--- START OF USER ZONE 2

  override func cursorForKnob (knob inKnobIndex: Int) -> NSCursor? {
    if (inKnobIndex == BOARD_RESTRICT_RECT_RIGHT) && (inKnobIndex == BOARD_RESTRICT_RECT_LEFT) {
      return NSCursor.resizeLeftRight
    }else if (inKnobIndex == BOARD_RESTRICT_RECT_BOTTOM) && (inKnobIndex == BOARD_RESTRICT_RECT_TOP) {
      return NSCursor.resizeUpDown
    }else{
      return nil
    }
  }

  //····················································································································

  override func acceptedTranslation (xBy inDx: Int, yBy inDy: Int) -> CanariPoint {
    var acceptedX = inDx
    let newX = self.mX + acceptedX
    if newX < 0 {
      acceptedX = -self.mX
    }
    var acceptedY = inDy
    let newY = self.mY + acceptedY
    if newY < 0 {
      acceptedY = -self.mY
    }
    return CanariPoint (x: acceptedX, y: acceptedY)
  }

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
//    let newX = self.mX + inDx
//    let newY = self.mY + inDy
    return true
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int, userSet ioSet : ObjcObjectSet) {
    self.mX += inDx
    self.mY += inDy
  }

  //····················································································································
  //  Knob
  //····················································································································

  override func canMove (knob inKnobIndex : Int,
                         proposedUnalignedAlignedTranslation inProposedUnalignedTranslation : CanariPoint,
                         proposedAlignedTranslation inProposedAlignedTranslation : CanariPoint,
                         unalignedMouseDraggedLocation inUnalignedMouseDraggedLocation : CanariPoint,
                         shift inShift : Bool) -> CanariPoint {
    var dx = inProposedAlignedTranslation.x
    var dy = inProposedAlignedTranslation.y
    if inKnobIndex == BOARD_RESTRICT_RECT_LEFT {
      if (self.mX + dx) < 0 {
        dx = -self.mX
      }
      if (self.mWidth - dx) < SYMBOL_GRID_IN_CANARI_UNIT {
        dx = SYMBOL_GRID_IN_CANARI_UNIT - self.mWidth
      }
    }else if inKnobIndex == BOARD_RESTRICT_RECT_RIGHT {
      if (self.mWidth + dx) < SYMBOL_GRID_IN_CANARI_UNIT {
        dx = -(SYMBOL_GRID_IN_CANARI_UNIT - self.mWidth)
      }
    }else if inKnobIndex == BOARD_RESTRICT_RECT_BOTTOM {
      if (self.mY + dy) < 0 {
        dy = -self.mY
      }
      if (self.mHeight - dy) < SYMBOL_GRID_IN_CANARI_UNIT {
        dy = SYMBOL_GRID_IN_CANARI_UNIT - self.mHeight
      }
    }else if inKnobIndex == BOARD_RESTRICT_RECT_TOP {
      if (self.mHeight + dy) < SYMBOL_GRID_IN_CANARI_UNIT {
        dy = -(SYMBOL_GRID_IN_CANARI_UNIT - self.mHeight)
      }
    }
    return CanariPoint (x: dx, y: dy)
 }

  //····················································································································

  override func move (knob inKnobIndex: Int,
                      proposedDx inDx: Int,
                      proposedDy inDy: Int,
                      unalignedMouseLocationX inUnlignedMouseLocationX : Int,
                      unalignedMouseLocationY inUnlignedMouseLocationY : Int,
                      alignedMouseLocationX inAlignedMouseLocationX : Int,
                      alignedMouseLocationY inAlignedMouseLocationY : Int,
                      shift inShift : Bool) {
    if inKnobIndex == BOARD_RESTRICT_RECT_RIGHT {
      self.mWidth += inDx
    }else if inKnobIndex == BOARD_RESTRICT_RECT_LEFT {
      self.mX += inDx
      self.mWidth -= inDx
    }else if inKnobIndex == BOARD_RESTRICT_RECT_TOP {
      self.mHeight += inDy
    }else if inKnobIndex == BOARD_RESTRICT_RECT_BOTTOM {
      self.mY += inDy
      self.mHeight -= inDy
    }
  }

  //····················································································································
  //  COPY AND PASTE
  //····················································································································

  override func canCopyAndPaste () -> Bool {
    return true
  }

  //····················································································································
  //  SNAP TO GRID
  //····················································································································

  override func canSnapToGrid (_ inGrid : Int) -> Bool {
    var result = (self.mX % inGrid) != 0
    if !result {
      result = (self.mY % inGrid) != 0
    }
    if !result {
      result = (self.mWidth % inGrid) != 0
    }
    if !result {
      result = (self.mHeight % inGrid) != 0
    }
    return result
  }

  //····················································································································

  override func snapToGrid (_ inGrid : Int) {
    self.mX = ((self.mX + inGrid / 2) / inGrid) * inGrid
    self.mY = ((self.mY + inGrid / 2) / inGrid) * inGrid
    self.mWidth = ((self.mWidth + inGrid / 2) / inGrid) * inGrid
    self.mHeight = ((self.mHeight + inGrid / 2) / inGrid) * inGrid
  }

  //····················································································································

  override func alignmentPoints () -> ObjcCanariPointSet {
    let result = ObjcCanariPointSet ()
    result.insert (CanariPoint (x: self.mX, y: self.mY))
    result.insert (CanariPoint (x: self.mX + self.mWidth, y: self.mY + self.mHeight))
    return result
  }

  //····················································································································
  //  Rotate 90°
  //····················································································································

  override func canRotate90 (accumulatedPoints : ObjcCanariPointSet) -> Bool {
    accumulatedPoints.insert (CanariPoint (x: self.mX + self.mWidth / 2, y: self.mY + self.mHeight / 2))
    return true
  }

  //····················································································································

  override func rotate90Clockwise (from inRotationCenter : CanariPoint, userSet ioSet : ObjcObjectSet) {
    let p = inRotationCenter.rotated90Clockwise (x: self.mX, y: self.mY)
    self.mX = p.x
    self.mY = p.y
    swap (&self.mWidth, &self.mHeight)
    ioSet.insert (self)
  }

  //····················································································································

  override func rotate90CounterClockwise (from inRotationCenter : CanariPoint, userSet ioSet : ObjcObjectSet) {
    let p = inRotationCenter.rotated90CounterClockwise (x: self.mX, y: self.mY)
    self.mX = p.x
    self.mY = p.y
    swap (&self.mWidth, &self.mHeight)
    ioSet.insert (self)
  }

  //····················································································································

//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------

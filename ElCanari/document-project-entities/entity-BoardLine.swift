//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_mWidthUnit : class {
  var mWidthUnit : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_mX1 : class {
  var mX1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_mX1Unit : class {
  var mX1Unit : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_mY1 : class {
  var mY1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_mY1Unit : class {
  var mY1Unit : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_mX2 : class {
  var mX2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_mX2Unit : class {
  var mX2Unit : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_mY2 : class {
  var mY2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_mY2Unit : class {
  var mY2Unit : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_mLayer : class {
  var mLayer : BoardLineLayer { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_mWidth : class {
  var mWidth : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol BoardLine_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: BoardLine
//----------------------------------------------------------------------------------------------------------------------

class BoardLine : BoardObject,
         BoardLine_mWidthUnit,
         BoardLine_mX1,
         BoardLine_mX1Unit,
         BoardLine_mY1,
         BoardLine_mY1Unit,
         BoardLine_mX2,
         BoardLine_mX2Unit,
         BoardLine_mY2,
         BoardLine_mY2Unit,
         BoardLine_mLayer,
         BoardLine_mWidth,
         BoardLine_objectDisplay,
         BoardLine_selectionDisplay {

  //····················································································································
  //   Atomic property: mWidthUnit
  //····················································································································

  final let mWidthUnit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  final func reset_mWidthUnit_toDefaultValue () {
    self.mWidthUnit = 2286
  }

  //····················································································································

  final var mWidthUnit : Int {
    get { return self.mWidthUnit_property.propval }
    set { self.mWidthUnit_property.setProp (newValue) }
  }

  //····················································································································

  final var mWidthUnit_property_selection : EBSelection <Int> { return self.mWidthUnit_property.prop }

  //····················································································································
  //   Atomic property: mX1
  //····················································································································

  final let mX1_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_mX1_toDefaultValue () {
    self.mX1 = 0
  }

  //····················································································································

  final var mX1 : Int {
    get { return self.mX1_property.propval }
    set { self.mX1_property.setProp (newValue) }
  }

  //····················································································································

  final var mX1_property_selection : EBSelection <Int> { return self.mX1_property.prop }

  //····················································································································
  //   Atomic property: mX1Unit
  //····················································································································

  final let mX1Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  final func reset_mX1Unit_toDefaultValue () {
    self.mX1Unit = 2286
  }

  //····················································································································

  final var mX1Unit : Int {
    get { return self.mX1Unit_property.propval }
    set { self.mX1Unit_property.setProp (newValue) }
  }

  //····················································································································

  final var mX1Unit_property_selection : EBSelection <Int> { return self.mX1Unit_property.prop }

  //····················································································································
  //   Atomic property: mY1
  //····················································································································

  final let mY1_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_mY1_toDefaultValue () {
    self.mY1 = 0
  }

  //····················································································································

  final var mY1 : Int {
    get { return self.mY1_property.propval }
    set { self.mY1_property.setProp (newValue) }
  }

  //····················································································································

  final var mY1_property_selection : EBSelection <Int> { return self.mY1_property.prop }

  //····················································································································
  //   Atomic property: mY1Unit
  //····················································································································

  final let mY1Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  final func reset_mY1Unit_toDefaultValue () {
    self.mY1Unit = 2286
  }

  //····················································································································

  final var mY1Unit : Int {
    get { return self.mY1Unit_property.propval }
    set { self.mY1Unit_property.setProp (newValue) }
  }

  //····················································································································

  final var mY1Unit_property_selection : EBSelection <Int> { return self.mY1Unit_property.prop }

  //····················································································································
  //   Atomic property: mX2
  //····················································································································

  final let mX2_property = EBStoredProperty_Int (defaultValue: 457200)

  //····················································································································

  final func reset_mX2_toDefaultValue () {
    self.mX2 = 457200
  }

  //····················································································································

  final var mX2 : Int {
    get { return self.mX2_property.propval }
    set { self.mX2_property.setProp (newValue) }
  }

  //····················································································································

  final var mX2_property_selection : EBSelection <Int> { return self.mX2_property.prop }

  //····················································································································
  //   Atomic property: mX2Unit
  //····················································································································

  final let mX2Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  final func reset_mX2Unit_toDefaultValue () {
    self.mX2Unit = 2286
  }

  //····················································································································

  final var mX2Unit : Int {
    get { return self.mX2Unit_property.propval }
    set { self.mX2Unit_property.setProp (newValue) }
  }

  //····················································································································

  final var mX2Unit_property_selection : EBSelection <Int> { return self.mX2Unit_property.prop }

  //····················································································································
  //   Atomic property: mY2
  //····················································································································

  final let mY2_property = EBStoredProperty_Int (defaultValue: 457200)

  //····················································································································

  final func reset_mY2_toDefaultValue () {
    self.mY2 = 457200
  }

  //····················································································································

  final var mY2 : Int {
    get { return self.mY2_property.propval }
    set { self.mY2_property.setProp (newValue) }
  }

  //····················································································································

  final var mY2_property_selection : EBSelection <Int> { return self.mY2_property.prop }

  //····················································································································
  //   Atomic property: mY2Unit
  //····················································································································

  final let mY2Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  final func reset_mY2Unit_toDefaultValue () {
    self.mY2Unit = 2286
  }

  //····················································································································

  final var mY2Unit : Int {
    get { return self.mY2Unit_property.propval }
    set { self.mY2Unit_property.setProp (newValue) }
  }

  //····················································································································

  final var mY2Unit_property_selection : EBSelection <Int> { return self.mY2Unit_property.prop }

  //····················································································································
  //   Atomic property: mLayer
  //····················································································································

  final let mLayer_property = EBStoredProperty_BoardLineLayer (defaultValue: BoardLineLayer.legendFront)

  //····················································································································

  final func reset_mLayer_toDefaultValue () {
    self.mLayer = BoardLineLayer.legendFront
  }

  //····················································································································

  final var mLayer : BoardLineLayer {
    get { return self.mLayer_property.propval }
    set { self.mLayer_property.setProp (newValue) }
  }

  //····················································································································

  final var mLayer_property_selection : EBSelection <BoardLineLayer> { return self.mLayer_property.prop }

  //····················································································································
  //   Atomic property: mWidth
  //····················································································································

  final let mWidth_property = EBStoredProperty_Int (defaultValue: 57150)

  //····················································································································

  final func reset_mWidth_toDefaultValue () {
    self.mWidth = 57150
  }

  //····················································································································

  final var mWidth : Int {
    get { return self.mWidth_property.propval }
    set { self.mWidth_property.setProp (newValue) }
  }

  //····················································································································

  final var mWidth_property_selection : EBSelection <Int> { return self.mWidth_property.prop }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
    self.configureObject ()
  }
  
  //····················································································································

  private final func configureObject () {
  //--- Atomic property: mWidthUnit
    self.mWidthUnit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mX1
    self.mX1_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mX1Unit
    self.mX1Unit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mY1
    self.mY1_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mY1Unit
    self.mY1Unit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mX2
    self.mX2_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mX2Unit
    self.mX2Unit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mY2
    self.mY2_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mY2Unit
    self.mY2Unit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mLayer
    self.mLayer_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mWidth
    self.mWidth_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mX1_property_selection.kind ()
        kind &= unwSelf.mY1_property_selection.kind ()
        kind &= unwSelf.mX2_property_selection.kind ()
        kind &= unwSelf.mY2_property_selection.kind ()
        kind &= unwSelf.mWidth_property_selection.kind ()
        kind &= unwSelf.mLayer_property_selection.kind ()
        kind &= g_Preferences!.frontSideLegendColorForBoard_property_selection.kind ()
        kind &= g_Preferences!.backSideLegendColorForBoard_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mX1_property_selection, unwSelf.mY1_property_selection, unwSelf.mX2_property_selection, unwSelf.mY2_property_selection, unwSelf.mWidth_property_selection, unwSelf.mLayer_property_selection, g_Preferences!.frontSideLegendColorForBoard_property_selection, g_Preferences!.backSideLegendColorForBoard_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7)) :
            return .single (transient_BoardLine_objectDisplay (v0, v1, v2, v3, v4, v5, v6, v7))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mX1_property.addEBObserver (self.objectDisplay_property)
    self.mY1_property.addEBObserver (self.objectDisplay_property)
    self.mX2_property.addEBObserver (self.objectDisplay_property)
    self.mY2_property.addEBObserver (self.objectDisplay_property)
    self.mWidth_property.addEBObserver (self.objectDisplay_property)
    self.mLayer_property.addEBObserver (self.objectDisplay_property)
    g_Preferences?.frontSideLegendColorForBoard_property.addEBObserver (self.objectDisplay_property)
    g_Preferences?.backSideLegendColorForBoard_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mX1_property_selection.kind ()
        kind &= unwSelf.mY1_property_selection.kind ()
        kind &= unwSelf.mX2_property_selection.kind ()
        kind &= unwSelf.mY2_property_selection.kind ()
        kind &= unwSelf.mWidth_property_selection.kind ()
        kind &= unwSelf.mLayer_property_selection.kind ()
        kind &= g_Preferences!.hiliteWidthMultipliedByTen_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mX1_property_selection, unwSelf.mY1_property_selection, unwSelf.mX2_property_selection, unwSelf.mY2_property_selection, unwSelf.mWidth_property_selection, unwSelf.mLayer_property_selection, g_Preferences!.hiliteWidthMultipliedByTen_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6)) :
            return .single (transient_BoardLine_selectionDisplay (v0, v1, v2, v3, v4, v5, v6))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mX1_property.addEBObserver (self.selectionDisplay_property)
    self.mY1_property.addEBObserver (self.selectionDisplay_property)
    self.mX2_property.addEBObserver (self.selectionDisplay_property)
    self.mY2_property.addEBObserver (self.selectionDisplay_property)
    self.mWidth_property.addEBObserver (self.selectionDisplay_property)
    self.mLayer_property.addEBObserver (self.selectionDisplay_property)
    g_Preferences?.hiliteWidthMultipliedByTen_property.addEBObserver (self.selectionDisplay_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mX1_property.removeEBObserver (self.objectDisplay_property)
    self.mY1_property.removeEBObserver (self.objectDisplay_property)
    self.mX2_property.removeEBObserver (self.objectDisplay_property)
    self.mY2_property.removeEBObserver (self.objectDisplay_property)
    self.mWidth_property.removeEBObserver (self.objectDisplay_property)
    self.mLayer_property.removeEBObserver (self.objectDisplay_property)
    g_Preferences?.frontSideLegendColorForBoard_property.removeEBObserver (self.objectDisplay_property)
    g_Preferences?.backSideLegendColorForBoard_property.removeEBObserver (self.objectDisplay_property)
    self.mX1_property.removeEBObserver (self.selectionDisplay_property)
    self.mY1_property.removeEBObserver (self.selectionDisplay_property)
    self.mX2_property.removeEBObserver (self.selectionDisplay_property)
    self.mY2_property.removeEBObserver (self.selectionDisplay_property)
    self.mWidth_property.removeEBObserver (self.selectionDisplay_property)
    self.mLayer_property.removeEBObserver (self.selectionDisplay_property)
    g_Preferences?.hiliteWidthMultipliedByTen_property.removeEBObserver (self.selectionDisplay_property)
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
      "mWidthUnit",
      idx: self.mWidthUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mWidthUnit_property.mObserverExplorer,
      valueExplorer: &self.mWidthUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mX1",
      idx: self.mX1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mX1_property.mObserverExplorer,
      valueExplorer: &self.mX1_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mX1Unit",
      idx: self.mX1Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mX1Unit_property.mObserverExplorer,
      valueExplorer: &self.mX1Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mY1",
      idx: self.mY1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mY1_property.mObserverExplorer,
      valueExplorer: &self.mY1_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mY1Unit",
      idx: self.mY1Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mY1Unit_property.mObserverExplorer,
      valueExplorer: &self.mY1Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mX2",
      idx: self.mX2_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mX2_property.mObserverExplorer,
      valueExplorer: &self.mX2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mX2Unit",
      idx: self.mX2Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mX2Unit_property.mObserverExplorer,
      valueExplorer: &self.mX2Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mY2",
      idx: self.mY2_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mY2_property.mObserverExplorer,
      valueExplorer: &self.mY2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mY2Unit",
      idx: self.mY2Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mY2Unit_property.mObserverExplorer,
      valueExplorer: &self.mY2Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mLayer",
      idx: self.mLayer_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mLayer_property.mObserverExplorer,
      valueExplorer: &self.mLayer_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mWidth",
      idx: self.mWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mWidth_property.mObserverExplorer,
      valueExplorer: &self.mWidth_property.mValueExplorer
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
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mWidthUnit
    self.mWidthUnit_property.mObserverExplorer = nil
    self.mWidthUnit_property.mValueExplorer = nil
  //--- Atomic property: mX1
    self.mX1_property.mObserverExplorer = nil
    self.mX1_property.mValueExplorer = nil
  //--- Atomic property: mX1Unit
    self.mX1Unit_property.mObserverExplorer = nil
    self.mX1Unit_property.mValueExplorer = nil
  //--- Atomic property: mY1
    self.mY1_property.mObserverExplorer = nil
    self.mY1_property.mValueExplorer = nil
  //--- Atomic property: mY1Unit
    self.mY1Unit_property.mObserverExplorer = nil
    self.mY1Unit_property.mValueExplorer = nil
  //--- Atomic property: mX2
    self.mX2_property.mObserverExplorer = nil
    self.mX2_property.mValueExplorer = nil
  //--- Atomic property: mX2Unit
    self.mX2Unit_property.mObserverExplorer = nil
    self.mX2Unit_property.mValueExplorer = nil
  //--- Atomic property: mY2
    self.mY2_property.mObserverExplorer = nil
    self.mY2_property.mValueExplorer = nil
  //--- Atomic property: mY2Unit
    self.mY2Unit_property.mObserverExplorer = nil
    self.mY2Unit_property.mValueExplorer = nil
  //--- Atomic property: mLayer
    self.mLayer_property.mObserverExplorer = nil
    self.mLayer_property.mValueExplorer = nil
  //--- Atomic property: mWidth
    self.mWidth_property.mObserverExplorer = nil
    self.mWidth_property.mValueExplorer = nil
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
  //--- Atomic property: mWidthUnit
    self.mWidthUnit_property.storeIn (dictionary: ioDictionary, forKey: "mWidthUnit")
  //--- Atomic property: mX1
    self.mX1_property.storeIn (dictionary: ioDictionary, forKey: "mX1")
  //--- Atomic property: mX1Unit
    self.mX1Unit_property.storeIn (dictionary: ioDictionary, forKey: "mX1Unit")
  //--- Atomic property: mY1
    self.mY1_property.storeIn (dictionary: ioDictionary, forKey: "mY1")
  //--- Atomic property: mY1Unit
    self.mY1Unit_property.storeIn (dictionary: ioDictionary, forKey: "mY1Unit")
  //--- Atomic property: mX2
    self.mX2_property.storeIn (dictionary: ioDictionary, forKey: "mX2")
  //--- Atomic property: mX2Unit
    self.mX2Unit_property.storeIn (dictionary: ioDictionary, forKey: "mX2Unit")
  //--- Atomic property: mY2
    self.mY2_property.storeIn (dictionary: ioDictionary, forKey: "mY2")
  //--- Atomic property: mY2Unit
    self.mY2Unit_property.storeIn (dictionary: ioDictionary, forKey: "mY2Unit")
  //--- Atomic property: mLayer
    self.mLayer_property.storeIn (dictionary: ioDictionary, forKey: "mLayer")
  //--- Atomic property: mWidth
    self.mWidth_property.storeIn (dictionary: ioDictionary, forKey: "mWidth")
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
  //--- Atomic property: mWidthUnit
    self.mWidthUnit_property.readFrom (dictionary: inDictionary, forKey: "mWidthUnit")
  //--- Atomic property: mX1
    self.mX1_property.readFrom (dictionary: inDictionary, forKey: "mX1")
  //--- Atomic property: mX1Unit
    self.mX1Unit_property.readFrom (dictionary: inDictionary, forKey: "mX1Unit")
  //--- Atomic property: mY1
    self.mY1_property.readFrom (dictionary: inDictionary, forKey: "mY1")
  //--- Atomic property: mY1Unit
    self.mY1Unit_property.readFrom (dictionary: inDictionary, forKey: "mY1Unit")
  //--- Atomic property: mX2
    self.mX2_property.readFrom (dictionary: inDictionary, forKey: "mX2")
  //--- Atomic property: mX2Unit
    self.mX2Unit_property.readFrom (dictionary: inDictionary, forKey: "mX2Unit")
  //--- Atomic property: mY2
    self.mY2_property.readFrom (dictionary: inDictionary, forKey: "mY2")
  //--- Atomic property: mY2Unit
    self.mY2Unit_property.readFrom (dictionary: inDictionary, forKey: "mY2Unit")
  //--- Atomic property: mLayer
    self.mLayer_property.readFrom (dictionary: inDictionary, forKey: "mLayer")
  //--- Atomic property: mWidth
    self.mWidth_property.readFrom (dictionary: inDictionary, forKey: "mWidth")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mWidthUnit\n"
    ioString += "mX1\n"
    ioString += "mX1Unit\n"
    ioString += "mY1\n"
    ioString += "mY1Unit\n"
    ioString += "mX2\n"
    ioString += "mX2Unit\n"
    ioString += "mY2\n"
    ioString += "mY2Unit\n"
    ioString += "mLayer\n"
    ioString += "mWidth\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mWidthUnit.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mX1.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mX1Unit.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mY1.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mY1Unit.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mX2.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mX2Unit.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mY2.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mY2Unit.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mLayer.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mWidth.appendPropertyValueTo (&ioData)
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
    inParallelObjectSetupContext.mOperationQueue.addOperation {
    //--- Atomic properties
      if let range = inDictionary ["mWidthUnit"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mWidthUnit = value
      }
      if let range = inDictionary ["mX1"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mX1 = value
      }
      if let range = inDictionary ["mX1Unit"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mX1Unit = value
      }
      if let range = inDictionary ["mY1"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mY1 = value
      }
      if let range = inDictionary ["mY1Unit"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mY1Unit = value
      }
      if let range = inDictionary ["mX2"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mX2 = value
      }
      if let range = inDictionary ["mX2Unit"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mX2Unit = value
      }
      if let range = inDictionary ["mY2"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mY2 = value
      }
      if let range = inDictionary ["mY2Unit"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mY2Unit = value
      }
      if let range = inDictionary ["mLayer"], let value = BoardLineLayer.unarchiveFromDataRange (inData, range) {
        self.mLayer = value
      }
      if let range = inDictionary ["mWidth"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mWidth = value
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

}

//----------------------------------------------------------------------------------------------------------------------


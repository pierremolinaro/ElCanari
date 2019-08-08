//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_selectedInspector : class {
  var selectedInspector : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_comments : class {
  var comments : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_horizontalFlip : class {
  var horizontalFlip : Bool { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_verticalFlip : class {
  var verticalFlip : Bool { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_gridStyle : class {
  var gridStyle : GridStyle { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_gridDisplay : class {
  var gridDisplay : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_zoom : class {
  var zoom : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_xPlacardUnit : class {
  var xPlacardUnit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_yPlacardUnit : class {
  var yPlacardUnit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_selectedPageIndex : class {
  var selectedPageIndex : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_issues : class {
  var issues : CanariIssueArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolRoot_noIssue : class {
  var noIssue : Bool? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SymbolRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SymbolRoot : EBManagedObject,
         SymbolRoot_selectedInspector,
         SymbolRoot_comments,
         SymbolRoot_horizontalFlip,
         SymbolRoot_verticalFlip,
         SymbolRoot_gridStyle,
         SymbolRoot_gridDisplay,
         SymbolRoot_zoom,
         SymbolRoot_xPlacardUnit,
         SymbolRoot_yPlacardUnit,
         SymbolRoot_selectedPageIndex,
         SymbolRoot_issues,
         SymbolRoot_noIssue {

  //····················································································································
  //   Atomic property: selectedInspector
  //····················································································································

  let selectedInspector_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var selectedInspector : Int {
    get { return self.selectedInspector_property.propval }
    set { self.selectedInspector_property.setProp (newValue) }
  }

  //····················································································································

  var selectedInspector_property_selection : EBSelection <Int> { return self.selectedInspector_property.prop }

  //····················································································································
  //   Atomic property: comments
  //····················································································································

  let comments_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var comments : String {
    get { return self.comments_property.propval }
    set { self.comments_property.setProp (newValue) }
  }

  //····················································································································

  var comments_property_selection : EBSelection <String> { return self.comments_property.prop }

  //····················································································································
  //   Atomic property: horizontalFlip
  //····················································································································

  let horizontalFlip_property = EBStoredProperty_Bool (defaultValue: false)

  //····················································································································

  var horizontalFlip : Bool {
    get { return self.horizontalFlip_property.propval }
    set { self.horizontalFlip_property.setProp (newValue) }
  }

  //····················································································································

  var horizontalFlip_property_selection : EBSelection <Bool> { return self.horizontalFlip_property.prop }

  //····················································································································
  //   Atomic property: verticalFlip
  //····················································································································

  let verticalFlip_property = EBStoredProperty_Bool (defaultValue: false)

  //····················································································································

  var verticalFlip : Bool {
    get { return self.verticalFlip_property.propval }
    set { self.verticalFlip_property.setProp (newValue) }
  }

  //····················································································································

  var verticalFlip_property_selection : EBSelection <Bool> { return self.verticalFlip_property.prop }

  //····················································································································
  //   Atomic property: gridStyle
  //····················································································································

  let gridStyle_property = EBStoredProperty_GridStyle (defaultValue: GridStyle.line)

  //····················································································································

  var gridStyle : GridStyle {
    get { return self.gridStyle_property.propval }
    set { self.gridStyle_property.setProp (newValue) }
  }

  //····················································································································

  var gridStyle_property_selection : EBSelection <GridStyle> { return self.gridStyle_property.prop }

  //····················································································································
  //   Atomic property: gridDisplay
  //····················································································································

  let gridDisplay_property = EBStoredProperty_Int (defaultValue: 4)

  //····················································································································

  var gridDisplay : Int {
    get { return self.gridDisplay_property.propval }
    set { self.gridDisplay_property.setProp (newValue) }
  }

  //····················································································································

  var gridDisplay_property_selection : EBSelection <Int> { return self.gridDisplay_property.prop }

  //····················································································································
  //   Atomic property: zoom
  //····················································································································

  let zoom_property = EBStoredProperty_Int (defaultValue: 600)

  //····················································································································

  var zoom : Int {
    get { return self.zoom_property.propval }
    set { self.zoom_property.setProp (newValue) }
  }

  //····················································································································

  var zoom_property_selection : EBSelection <Int> { return self.zoom_property.prop }

  //····················································································································
  //   Atomic property: xPlacardUnit
  //····················································································································

  let xPlacardUnit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  var xPlacardUnit : Int {
    get { return self.xPlacardUnit_property.propval }
    set { self.xPlacardUnit_property.setProp (newValue) }
  }

  //····················································································································

  var xPlacardUnit_property_selection : EBSelection <Int> { return self.xPlacardUnit_property.prop }

  //····················································································································
  //   Atomic property: yPlacardUnit
  //····················································································································

  let yPlacardUnit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  var yPlacardUnit : Int {
    get { return self.yPlacardUnit_property.propval }
    set { self.yPlacardUnit_property.setProp (newValue) }
  }

  //····················································································································

  var yPlacardUnit_property_selection : EBSelection <Int> { return self.yPlacardUnit_property.prop }

  //····················································································································
  //   To many property: symbolObjects
  //····················································································································

  let symbolObjects_property = StoredArrayOf_SymbolObject ()

  //····················································································································

  var symbolObjects_property_selection : EBSelection < [SymbolObject] > {
    return self.symbolObjects_property.prop
  }

  //····················································································································

  var symbolObjects : [SymbolObject] {
    get { return self.symbolObjects_property.propval }
    set { self.symbolObjects_property.setProp (newValue) }
  }

  //····················································································································
  //   To many property: symbolPins
  //····················································································································

  let symbolPins_property = TransientArrayOfSuperOf_SymbolPin <SymbolObject> ()

  //····················································································································

  var symbolPins_property_selection : EBSelection < [SymbolPin] > {
    return self.symbolPins_property.prop
  }

  //····················································································································

  var symbolPins : [SymbolPin] {
    get { return self.symbolPins_property.propval }
  }

  //····················································································································
  //   Atomic property: selectedPageIndex
  //····················································································································

  let selectedPageIndex_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var selectedPageIndex : Int {
    get { return self.selectedPageIndex_property.propval }
    set { self.selectedPageIndex_property.setProp (newValue) }
  }

  //····················································································································

  var selectedPageIndex_property_selection : EBSelection <Int> { return self.selectedPageIndex_property.prop }

  //····················································································································
  //   Transient property: issues
  //····················································································································

  let issues_property = EBTransientProperty_CanariIssueArray ()

  //····················································································································

  var issues_property_selection : EBSelection <CanariIssueArray> {
    return self.issues_property.prop
  }

  //····················································································································

  var issues : CanariIssueArray? {
    switch self.issues_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: noIssue
  //····················································································································

  let noIssue_property = EBTransientProperty_Bool ()

  //····················································································································

  var noIssue_property_selection : EBSelection <Bool> {
    return self.noIssue_property.prop
  }

  //····················································································································

  var noIssue : Bool? {
    switch self.noIssue_property_selection {
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
  //--- Atomic property: selectedInspector
    self.selectedInspector_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: comments
    self.comments_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: horizontalFlip
    self.horizontalFlip_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: verticalFlip
    self.verticalFlip_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: gridStyle
    self.gridStyle_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: gridDisplay
    self.gridDisplay_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: zoom
    self.zoom_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: xPlacardUnit
    self.xPlacardUnit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: yPlacardUnit
    self.yPlacardUnit_property.ebUndoManager = self.ebUndoManager
  //--- To many property: symbolObjects (no option)
    self.symbolObjects_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: selectedPageIndex
    self.selectedPageIndex_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: issues
    self.issues_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.symbolObjects_property_selection.kind ()
        kind &= unwSelf.symbolPins_property_selection.kind ()
        kind &= unwSelf.symbolPins_property_selection.kind ()
        kind &= unwSelf.symbolPins_property_selection.kind ()
        kind &= unwSelf.symbolPins_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.symbolObjects_property_selection, unwSelf.symbolPins_property_selection, unwSelf.symbolPins_property_selection, unwSelf.symbolPins_property_selection, unwSelf.symbolPins_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_SymbolRoot_issues (v0, v1, v2, v3, v4))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.symbolObjects_property.addEBObserverOf_issues (self.issues_property)
    self.symbolPins_property.addEBObserverOf_name (self.issues_property)
    self.symbolPins_property.addEBObserverOf_nameRect (self.issues_property)
    self.symbolPins_property.addEBObserverOf_xPin (self.issues_property)
    self.symbolPins_property.addEBObserverOf_yPin (self.issues_property)
  //--- Atomic property: noIssue
    self.noIssue_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.issues_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.issues_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SymbolRoot_noIssue (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.issues_property.addEBObserver (self.noIssue_property)
  //--- Install undoers and opposite setter for relationships
    self.symbolPins_property.setDataProvider (self.symbolObjects_property)
  //--- Register properties for handling signature
    self.comments_property.setSignatureObserver (observer: self)
    self.symbolObjects_property.setSignatureObserver (observer: self)
    self.xPlacardUnit_property.setSignatureObserver (observer: self)
    self.yPlacardUnit_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
  //--- To many property: symbolPins
    self.symbolObjects_property.removeEBObserver (self.symbolPins_property)
    self.symbolObjects_property.removeEBObserverOf_issues (self.issues_property)
    self.symbolPins_property.removeEBObserverOf_name (self.issues_property)
    self.symbolPins_property.removeEBObserverOf_nameRect (self.issues_property)
    self.symbolPins_property.removeEBObserverOf_xPin (self.issues_property)
    self.symbolPins_property.removeEBObserverOf_yPin (self.issues_property)
    self.issues_property.removeEBObserver (self.noIssue_property)
    self.symbolPins_property.setDataProvider (nil)
  //--- Unregister properties for handling signature
    self.comments_property.setSignatureObserver (observer: nil)
    self.symbolObjects_property.setSignatureObserver (observer: nil)
    self.xPlacardUnit_property.setSignatureObserver (observer: nil)
    self.yPlacardUnit_property.setSignatureObserver (observer: nil)
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
      "selectedInspector",
      idx: self.selectedInspector_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.selectedInspector_property.mObserverExplorer,
      valueExplorer: &self.selectedInspector_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "comments",
      idx: self.comments_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.comments_property.mObserverExplorer,
      valueExplorer: &self.comments_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "horizontalFlip",
      idx: self.horizontalFlip_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.horizontalFlip_property.mObserverExplorer,
      valueExplorer: &self.horizontalFlip_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "verticalFlip",
      idx: self.verticalFlip_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.verticalFlip_property.mObserverExplorer,
      valueExplorer: &self.verticalFlip_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "gridStyle",
      idx: self.gridStyle_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.gridStyle_property.mObserverExplorer,
      valueExplorer: &self.gridStyle_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "gridDisplay",
      idx: self.gridDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.gridDisplay_property.mObserverExplorer,
      valueExplorer: &self.gridDisplay_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "zoom",
      idx: self.zoom_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.zoom_property.mObserverExplorer,
      valueExplorer: &self.zoom_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "xPlacardUnit",
      idx: self.xPlacardUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.xPlacardUnit_property.mObserverExplorer,
      valueExplorer: &self.xPlacardUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "yPlacardUnit",
      idx: self.yPlacardUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.yPlacardUnit_property.mObserverExplorer,
      valueExplorer: &self.yPlacardUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "selectedPageIndex",
      idx: self.selectedPageIndex_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.selectedPageIndex_property.mObserverExplorer,
      valueExplorer: &self.selectedPageIndex_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "issues",
      idx: self.issues_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.issues_property.mObserverExplorer,
      valueExplorer: &self.issues_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "noIssue",
      idx: self.noIssue_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.noIssue_property.mObserverExplorer,
      valueExplorer: &self.noIssue_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "symbolObjects",
      idx:symbolObjects_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&symbolObjects_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: selectedInspector
    self.selectedInspector_property.mObserverExplorer = nil
    self.selectedInspector_property.mValueExplorer = nil
  //--- Atomic property: comments
    self.comments_property.mObserverExplorer = nil
    self.comments_property.mValueExplorer = nil
  //--- Atomic property: horizontalFlip
    self.horizontalFlip_property.mObserverExplorer = nil
    self.horizontalFlip_property.mValueExplorer = nil
  //--- Atomic property: verticalFlip
    self.verticalFlip_property.mObserverExplorer = nil
    self.verticalFlip_property.mValueExplorer = nil
  //--- Atomic property: gridStyle
    self.gridStyle_property.mObserverExplorer = nil
    self.gridStyle_property.mValueExplorer = nil
  //--- Atomic property: gridDisplay
    self.gridDisplay_property.mObserverExplorer = nil
    self.gridDisplay_property.mValueExplorer = nil
  //--- Atomic property: zoom
    self.zoom_property.mObserverExplorer = nil
    self.zoom_property.mValueExplorer = nil
  //--- Atomic property: xPlacardUnit
    self.xPlacardUnit_property.mObserverExplorer = nil
    self.xPlacardUnit_property.mValueExplorer = nil
  //--- Atomic property: yPlacardUnit
    self.yPlacardUnit_property.mObserverExplorer = nil
    self.yPlacardUnit_property.mValueExplorer = nil
  //--- To many property: symbolObjects
    self.symbolObjects_property.mValueExplorer = nil
  //--- Atomic property: selectedPageIndex
    self.selectedPageIndex_property.mObserverExplorer = nil
    self.selectedPageIndex_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.symbolObjects = []
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
  //--- Atomic property: selectedInspector
    self.selectedInspector_property.storeIn (dictionary: ioDictionary, forKey:"selectedInspector")
  //--- Atomic property: comments
    self.comments_property.storeIn (dictionary: ioDictionary, forKey:"comments")
  //--- Atomic property: horizontalFlip
    self.horizontalFlip_property.storeIn (dictionary: ioDictionary, forKey:"horizontalFlip")
  //--- Atomic property: verticalFlip
    self.verticalFlip_property.storeIn (dictionary: ioDictionary, forKey:"verticalFlip")
  //--- Atomic property: gridStyle
    self.gridStyle_property.storeIn (dictionary: ioDictionary, forKey:"gridStyle")
  //--- Atomic property: gridDisplay
    self.gridDisplay_property.storeIn (dictionary: ioDictionary, forKey:"gridDisplay")
  //--- Atomic property: zoom
    self.zoom_property.storeIn (dictionary: ioDictionary, forKey:"zoom")
  //--- Atomic property: xPlacardUnit
    self.xPlacardUnit_property.storeIn (dictionary: ioDictionary, forKey:"xPlacardUnit")
  //--- Atomic property: yPlacardUnit
    self.yPlacardUnit_property.storeIn (dictionary: ioDictionary, forKey:"yPlacardUnit")
  //--- To many property: symbolObjects
    self.store (
      managedObjectArray: self.symbolObjects_property.propval,
      relationshipName: "symbolObjects",
      intoDictionary: ioDictionary
    )
  //--- Atomic property: selectedPageIndex
    self.selectedPageIndex_property.storeIn (dictionary: ioDictionary, forKey:"selectedPageIndex")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: symbolObjects
    self.symbolObjects_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "symbolObjects",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [SymbolObject])
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: selectedInspector
    self.selectedInspector_property.readFrom (dictionary: inDictionary, forKey:"selectedInspector")
  //--- Atomic property: comments
    self.comments_property.readFrom (dictionary: inDictionary, forKey:"comments")
  //--- Atomic property: horizontalFlip
    self.horizontalFlip_property.readFrom (dictionary: inDictionary, forKey:"horizontalFlip")
  //--- Atomic property: verticalFlip
    self.verticalFlip_property.readFrom (dictionary: inDictionary, forKey:"verticalFlip")
  //--- Atomic property: gridStyle
    self.gridStyle_property.readFrom (dictionary: inDictionary, forKey:"gridStyle")
  //--- Atomic property: gridDisplay
    self.gridDisplay_property.readFrom (dictionary: inDictionary, forKey:"gridDisplay")
  //--- Atomic property: zoom
    self.zoom_property.readFrom (dictionary: inDictionary, forKey:"zoom")
  //--- Atomic property: xPlacardUnit
    self.xPlacardUnit_property.readFrom (dictionary: inDictionary, forKey:"xPlacardUnit")
  //--- Atomic property: yPlacardUnit
    self.yPlacardUnit_property.readFrom (dictionary: inDictionary, forKey:"yPlacardUnit")
  //--- Atomic property: selectedPageIndex
    self.selectedPageIndex_property.readFrom (dictionary: inDictionary, forKey:"selectedPageIndex")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: symbolObjects
    for managedObject in self.symbolObjects {
      objects.append (managedObject)
    }
  //--- To many property: symbolPins
    for managedObject in self.symbolPins {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: symbolObjects
    for managedObject in self.symbolObjects {
      objects.append (managedObject)
    }
  //--- To many property: symbolPins
    for managedObject in self.symbolPins {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.comments_property.signature ())
    crc.accumulateUInt32 (self.symbolObjects_property.signature ())
    crc.accumulateUInt32 (self.xPlacardUnit_property.signature ())
    crc.accumulateUInt32 (self.yPlacardUnit_property.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


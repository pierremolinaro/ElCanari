//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_y1 : class {
  var y1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_x2 : class {
  var x2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_y2 : class {
  var y2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_x1Unit : class {
  var x1Unit : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_y1Unit : class {
  var y1Unit : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_x2Unit : class {
  var x2Unit : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_y2Unit : class {
  var y2Unit : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_lengthUnit : class {
  var lengthUnit : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_x1 : class {
  var x1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_strokeBezierPath : class {
  var strokeBezierPath : NSBezierPath? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_issues : class {
  var issues : CanariIssueArray? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol PackageSegment_lengthInCanariUnit : class {
  var lengthInCanariUnit : Int? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: PackageSegment
//----------------------------------------------------------------------------------------------------------------------

class PackageSegment : PackageObject,
         PackageSegment_y1,
         PackageSegment_x2,
         PackageSegment_y2,
         PackageSegment_x1Unit,
         PackageSegment_y1Unit,
         PackageSegment_x2Unit,
         PackageSegment_y2Unit,
         PackageSegment_lengthUnit,
         PackageSegment_x1,
         PackageSegment_strokeBezierPath,
         PackageSegment_objectDisplay,
         PackageSegment_selectionDisplay,
         PackageSegment_issues,
         PackageSegment_lengthInCanariUnit {

  //····················································································································
  //   Atomic property: y1
  //····················································································································

  let y1_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_y1_toDefaultValue () {
    self.y1 = 0
  }

  //····················································································································

  final var y1 : Int {
    get { return self.y1_property.propval }
    set { self.y1_property.setProp (newValue) }
  }

  //····················································································································

  final var y1_property_selection : EBSelection <Int> { return self.y1_property.prop }

  //····················································································································
  //   Atomic property: x2
  //····················································································································

  let x2_property = EBStoredProperty_Int (defaultValue: 685800)

  //····················································································································

  final func reset_x2_toDefaultValue () {
    self.x2 = 685800
  }

  //····················································································································

  final var x2 : Int {
    get { return self.x2_property.propval }
    set { self.x2_property.setProp (newValue) }
  }

  //····················································································································

  final var x2_property_selection : EBSelection <Int> { return self.x2_property.prop }

  //····················································································································
  //   Atomic property: y2
  //····················································································································

  let y2_property = EBStoredProperty_Int (defaultValue: 685800)

  //····················································································································

  final func reset_y2_toDefaultValue () {
    self.y2 = 685800
  }

  //····················································································································

  final var y2 : Int {
    get { return self.y2_property.propval }
    set { self.y2_property.setProp (newValue) }
  }

  //····················································································································

  final var y2_property_selection : EBSelection <Int> { return self.y2_property.prop }

  //····················································································································
  //   Atomic property: x1Unit
  //····················································································································

  let x1Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  final func reset_x1Unit_toDefaultValue () {
    self.x1Unit = 2286
  }

  //····················································································································

  final var x1Unit : Int {
    get { return self.x1Unit_property.propval }
    set { self.x1Unit_property.setProp (newValue) }
  }

  //····················································································································

  final var x1Unit_property_selection : EBSelection <Int> { return self.x1Unit_property.prop }

  //····················································································································
  //   Atomic property: y1Unit
  //····················································································································

  let y1Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  final func reset_y1Unit_toDefaultValue () {
    self.y1Unit = 2286
  }

  //····················································································································

  final var y1Unit : Int {
    get { return self.y1Unit_property.propval }
    set { self.y1Unit_property.setProp (newValue) }
  }

  //····················································································································

  final var y1Unit_property_selection : EBSelection <Int> { return self.y1Unit_property.prop }

  //····················································································································
  //   Atomic property: x2Unit
  //····················································································································

  let x2Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  final func reset_x2Unit_toDefaultValue () {
    self.x2Unit = 2286
  }

  //····················································································································

  final var x2Unit : Int {
    get { return self.x2Unit_property.propval }
    set { self.x2Unit_property.setProp (newValue) }
  }

  //····················································································································

  final var x2Unit_property_selection : EBSelection <Int> { return self.x2Unit_property.prop }

  //····················································································································
  //   Atomic property: y2Unit
  //····················································································································

  let y2Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  final func reset_y2Unit_toDefaultValue () {
    self.y2Unit = 2286
  }

  //····················································································································

  final var y2Unit : Int {
    get { return self.y2Unit_property.propval }
    set { self.y2Unit_property.setProp (newValue) }
  }

  //····················································································································

  final var y2Unit_property_selection : EBSelection <Int> { return self.y2Unit_property.prop }

  //····················································································································
  //   Atomic property: lengthUnit
  //····················································································································

  let lengthUnit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  final func reset_lengthUnit_toDefaultValue () {
    self.lengthUnit = 2286
  }

  //····················································································································

  final var lengthUnit : Int {
    get { return self.lengthUnit_property.propval }
    set { self.lengthUnit_property.setProp (newValue) }
  }

  //····················································································································

  final var lengthUnit_property_selection : EBSelection <Int> { return self.lengthUnit_property.prop }

  //····················································································································
  //   Atomic property: x1
  //····················································································································

  let x1_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_x1_toDefaultValue () {
    self.x1 = 0
  }

  //····················································································································

  final var x1 : Int {
    get { return self.x1_property.propval }
    set { self.x1_property.setProp (newValue) }
  }

  //····················································································································

  final var x1_property_selection : EBSelection <Int> { return self.x1_property.prop }

  //····················································································································
  //   Transient property: strokeBezierPath
  //····················································································································

  let strokeBezierPath_property = EBTransientProperty_NSBezierPath ()

  //····················································································································

  var strokeBezierPath_property_selection : EBSelection <NSBezierPath> {
    return self.strokeBezierPath_property.prop
  }

  //····················································································································

  var strokeBezierPath : NSBezierPath? {
    switch self.strokeBezierPath_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: lengthInCanariUnit
  //····················································································································

  let lengthInCanariUnit_property = EBTransientProperty_Int ()

  //····················································································································

  var lengthInCanariUnit_property_selection : EBSelection <Int> {
    return self.lengthInCanariUnit_property.prop
  }

  //····················································································································

  var lengthInCanariUnit : Int? {
    switch self.lengthInCanariUnit_property_selection {
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
  //--- Atomic property: y1
    self.y1_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: x2
    self.x2_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: y2
    self.y2_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: x1Unit
    self.x1Unit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: y1Unit
    self.y1Unit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: x2Unit
    self.x2Unit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: y2Unit
    self.y2Unit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: lengthUnit
    self.lengthUnit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: x1
    self.x1_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: strokeBezierPath
    self.strokeBezierPath_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x1_property_selection.kind ()
        kind &= unwSelf.y1_property_selection.kind ()
        kind &= unwSelf.x2_property_selection.kind ()
        kind &= unwSelf.y2_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x1_property_selection, unwSelf.y1_property_selection, unwSelf.x2_property_selection, unwSelf.y2_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_PackageSegment_strokeBezierPath (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.x1_property.addEBObserver (self.strokeBezierPath_property)
    self.y1_property.addEBObserver (self.strokeBezierPath_property)
    self.x2_property.addEBObserver (self.strokeBezierPath_property)
    self.y2_property.addEBObserver (self.strokeBezierPath_property)
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.strokeBezierPath_property_selection.kind ()
        kind &= g_Preferences!.packageColor_property_selection.kind ()
        kind &= g_Preferences!.packageDrawingWidthMultipliedByTen_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.strokeBezierPath_property_selection, g_Preferences!.packageColor_property_selection, g_Preferences!.packageDrawingWidthMultipliedByTen_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2)) :
            return .single (transient_PackageSegment_objectDisplay (v0, v1, v2))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.strokeBezierPath_property.addEBObserver (self.objectDisplay_property)
    g_Preferences?.packageColor_property.addEBObserver (self.objectDisplay_property)
    g_Preferences?.packageDrawingWidthMultipliedByTen_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x1_property_selection.kind ()
        kind &= unwSelf.y1_property_selection.kind ()
        kind &= unwSelf.x2_property_selection.kind ()
        kind &= unwSelf.y2_property_selection.kind ()
        kind &= unwSelf.knobSize_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x1_property_selection, unwSelf.y1_property_selection, unwSelf.x2_property_selection, unwSelf.y2_property_selection, unwSelf.knobSize_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_PackageSegment_selectionDisplay (v0, v1, v2, v3, v4))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.x1_property.addEBObserver (self.selectionDisplay_property)
    self.y1_property.addEBObserver (self.selectionDisplay_property)
    self.x2_property.addEBObserver (self.selectionDisplay_property)
    self.y2_property.addEBObserver (self.selectionDisplay_property)
    self.knobSize_property.addEBObserver (self.selectionDisplay_property)
  //--- Atomic property: issues
    self.issues_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x1_property_selection.kind ()
        kind &= unwSelf.y1_property_selection.kind ()
        kind &= unwSelf.x2_property_selection.kind ()
        kind &= unwSelf.y2_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x1_property_selection, unwSelf.y1_property_selection, unwSelf.x2_property_selection, unwSelf.y2_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_PackageSegment_issues (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.x1_property.addEBObserver (self.issues_property)
    self.y1_property.addEBObserver (self.issues_property)
    self.x2_property.addEBObserver (self.issues_property)
    self.y2_property.addEBObserver (self.issues_property)
  //--- Atomic property: lengthInCanariUnit
    self.lengthInCanariUnit_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x1_property_selection.kind ()
        kind &= unwSelf.y1_property_selection.kind ()
        kind &= unwSelf.x2_property_selection.kind ()
        kind &= unwSelf.y2_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x1_property_selection, unwSelf.y1_property_selection, unwSelf.x2_property_selection, unwSelf.y2_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_PackageSegment_lengthInCanariUnit (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.x1_property.addEBObserver (self.lengthInCanariUnit_property)
    self.y1_property.addEBObserver (self.lengthInCanariUnit_property)
    self.x2_property.addEBObserver (self.lengthInCanariUnit_property)
    self.y2_property.addEBObserver (self.lengthInCanariUnit_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
    self.lengthUnit_property.setSignatureObserver (observer: self)
    self.x1_property.setSignatureObserver (observer: self)
    self.x1Unit_property.setSignatureObserver (observer: self)
    self.x2_property.setSignatureObserver (observer: self)
    self.x2Unit_property.setSignatureObserver (observer: self)
    self.y1_property.setSignatureObserver (observer: self)
    self.y1Unit_property.setSignatureObserver (observer: self)
    self.y2_property.setSignatureObserver (observer: self)
    self.y2Unit_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.x1_property.removeEBObserver (self.strokeBezierPath_property)
    self.y1_property.removeEBObserver (self.strokeBezierPath_property)
    self.x2_property.removeEBObserver (self.strokeBezierPath_property)
    self.y2_property.removeEBObserver (self.strokeBezierPath_property)
    self.strokeBezierPath_property.removeEBObserver (self.objectDisplay_property)
    g_Preferences?.packageColor_property.removeEBObserver (self.objectDisplay_property)
    g_Preferences?.packageDrawingWidthMultipliedByTen_property.removeEBObserver (self.objectDisplay_property)
    self.x1_property.removeEBObserver (self.selectionDisplay_property)
    self.y1_property.removeEBObserver (self.selectionDisplay_property)
    self.x2_property.removeEBObserver (self.selectionDisplay_property)
    self.y2_property.removeEBObserver (self.selectionDisplay_property)
    self.knobSize_property.removeEBObserver (self.selectionDisplay_property)
    self.x1_property.removeEBObserver (self.issues_property)
    self.y1_property.removeEBObserver (self.issues_property)
    self.x2_property.removeEBObserver (self.issues_property)
    self.y2_property.removeEBObserver (self.issues_property)
    self.x1_property.removeEBObserver (self.lengthInCanariUnit_property)
    self.y1_property.removeEBObserver (self.lengthInCanariUnit_property)
    self.x2_property.removeEBObserver (self.lengthInCanariUnit_property)
    self.y2_property.removeEBObserver (self.lengthInCanariUnit_property)
  //--- Unregister properties for handling signature
    self.lengthUnit_property.setSignatureObserver (observer: nil)
    self.x1_property.setSignatureObserver (observer: nil)
    self.x1Unit_property.setSignatureObserver (observer: nil)
    self.x2_property.setSignatureObserver (observer: nil)
    self.x2Unit_property.setSignatureObserver (observer: nil)
    self.y1_property.setSignatureObserver (observer: nil)
    self.y1Unit_property.setSignatureObserver (observer: nil)
    self.y2_property.setSignatureObserver (observer: nil)
    self.y2Unit_property.setSignatureObserver (observer: nil)
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
      "y1",
      idx: self.y1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y1_property.mObserverExplorer,
      valueExplorer: &self.y1_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x2",
      idx: self.x2_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x2_property.mObserverExplorer,
      valueExplorer: &self.x2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y2",
      idx: self.y2_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y2_property.mObserverExplorer,
      valueExplorer: &self.y2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x1Unit",
      idx: self.x1Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x1Unit_property.mObserverExplorer,
      valueExplorer: &self.x1Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y1Unit",
      idx: self.y1Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y1Unit_property.mObserverExplorer,
      valueExplorer: &self.y1Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x2Unit",
      idx: self.x2Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x2Unit_property.mObserverExplorer,
      valueExplorer: &self.x2Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y2Unit",
      idx: self.y2Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y2Unit_property.mObserverExplorer,
      valueExplorer: &self.y2Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "lengthUnit",
      idx: self.lengthUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.lengthUnit_property.mObserverExplorer,
      valueExplorer: &self.lengthUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x1",
      idx: self.x1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x1_property.mObserverExplorer,
      valueExplorer: &self.x1_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "strokeBezierPath",
      idx: self.strokeBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.strokeBezierPath_property.mObserverExplorer,
      valueExplorer: &self.strokeBezierPath_property.mValueExplorer
    )
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
      "issues",
      idx: self.issues_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.issues_property.mObserverExplorer,
      valueExplorer: &self.issues_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "lengthInCanariUnit",
      idx: self.lengthInCanariUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.lengthInCanariUnit_property.mObserverExplorer,
      valueExplorer: &self.lengthInCanariUnit_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: y1
    self.y1_property.mObserverExplorer = nil
    self.y1_property.mValueExplorer = nil
  //--- Atomic property: x2
    self.x2_property.mObserverExplorer = nil
    self.x2_property.mValueExplorer = nil
  //--- Atomic property: y2
    self.y2_property.mObserverExplorer = nil
    self.y2_property.mValueExplorer = nil
  //--- Atomic property: x1Unit
    self.x1Unit_property.mObserverExplorer = nil
    self.x1Unit_property.mValueExplorer = nil
  //--- Atomic property: y1Unit
    self.y1Unit_property.mObserverExplorer = nil
    self.y1Unit_property.mValueExplorer = nil
  //--- Atomic property: x2Unit
    self.x2Unit_property.mObserverExplorer = nil
    self.x2Unit_property.mValueExplorer = nil
  //--- Atomic property: y2Unit
    self.y2Unit_property.mObserverExplorer = nil
    self.y2Unit_property.mValueExplorer = nil
  //--- Atomic property: lengthUnit
    self.lengthUnit_property.mObserverExplorer = nil
    self.lengthUnit_property.mValueExplorer = nil
  //--- Atomic property: x1
    self.x1_property.mObserverExplorer = nil
    self.x1_property.mValueExplorer = nil
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
  //--- Atomic property: y1
    self.y1_property.storeIn (dictionary: ioDictionary, forKey: "y1")
  //--- Atomic property: x2
    self.x2_property.storeIn (dictionary: ioDictionary, forKey: "x2")
  //--- Atomic property: y2
    self.y2_property.storeIn (dictionary: ioDictionary, forKey: "y2")
  //--- Atomic property: x1Unit
    self.x1Unit_property.storeIn (dictionary: ioDictionary, forKey: "x1Unit")
  //--- Atomic property: y1Unit
    self.y1Unit_property.storeIn (dictionary: ioDictionary, forKey: "y1Unit")
  //--- Atomic property: x2Unit
    self.x2Unit_property.storeIn (dictionary: ioDictionary, forKey: "x2Unit")
  //--- Atomic property: y2Unit
    self.y2Unit_property.storeIn (dictionary: ioDictionary, forKey: "y2Unit")
  //--- Atomic property: lengthUnit
    self.lengthUnit_property.storeIn (dictionary: ioDictionary, forKey: "lengthUnit")
  //--- Atomic property: x1
    self.x1_property.storeIn (dictionary: ioDictionary, forKey: "x1")
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
  //--- Atomic property: y1
    self.y1_property.readFrom (dictionary: inDictionary, forKey: "y1")
  //--- Atomic property: x2
    self.x2_property.readFrom (dictionary: inDictionary, forKey: "x2")
  //--- Atomic property: y2
    self.y2_property.readFrom (dictionary: inDictionary, forKey: "y2")
  //--- Atomic property: x1Unit
    self.x1Unit_property.readFrom (dictionary: inDictionary, forKey: "x1Unit")
  //--- Atomic property: y1Unit
    self.y1Unit_property.readFrom (dictionary: inDictionary, forKey: "y1Unit")
  //--- Atomic property: x2Unit
    self.x2Unit_property.readFrom (dictionary: inDictionary, forKey: "x2Unit")
  //--- Atomic property: y2Unit
    self.y2Unit_property.readFrom (dictionary: inDictionary, forKey: "y2Unit")
  //--- Atomic property: lengthUnit
    self.lengthUnit_property.readFrom (dictionary: inDictionary, forKey: "lengthUnit")
  //--- Atomic property: x1
    self.x1_property.readFrom (dictionary: inDictionary, forKey: "x1")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "y1\n"
    ioString += "x2\n"
    ioString += "y2\n"
    ioString += "x1Unit\n"
    ioString += "y1Unit\n"
    ioString += "x2Unit\n"
    ioString += "y2Unit\n"
    ioString += "lengthUnit\n"
    ioString += "x1\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.y1.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.x2.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.y2.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.x1Unit.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.y1Unit.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.x2Unit.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.y2Unit.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.lengthUnit.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.x1.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
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
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.lengthUnit_property.signature ())
    crc.accumulateUInt32 (self.x1_property.signature ())
    crc.accumulateUInt32 (self.x1Unit_property.signature ())
    crc.accumulateUInt32 (self.x2_property.signature ())
    crc.accumulateUInt32 (self.x2Unit_property.signature ())
    crc.accumulateUInt32 (self.y1_property.signature ())
    crc.accumulateUInt32 (self.y1Unit_property.signature ())
    crc.accumulateUInt32 (self.y2_property.signature ())
    crc.accumulateUInt32 (self.y2Unit_property.signature ())
    return crc
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


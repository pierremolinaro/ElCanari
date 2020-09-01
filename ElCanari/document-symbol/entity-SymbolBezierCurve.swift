//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_y1 : class {
  var y1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_x2 : class {
  var x2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_y2 : class {
  var y2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_cpx1 : class {
  var cpx1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_cpy1 : class {
  var cpy1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_cpx2 : class {
  var cpx2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_cpy2 : class {
  var cpy2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_x1 : class {
  var x1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_strokeBezierPath : class {
  var strokeBezierPath : NSBezierPath? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolBezierCurve_issues : class {
  var issues : CanariIssueArray? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: SymbolBezierCurve
//----------------------------------------------------------------------------------------------------------------------

class SymbolBezierCurve : SymbolObject,
         SymbolBezierCurve_y1,
         SymbolBezierCurve_x2,
         SymbolBezierCurve_y2,
         SymbolBezierCurve_cpx1,
         SymbolBezierCurve_cpy1,
         SymbolBezierCurve_cpx2,
         SymbolBezierCurve_cpy2,
         SymbolBezierCurve_x1,
         SymbolBezierCurve_strokeBezierPath,
         SymbolBezierCurve_objectDisplay,
         SymbolBezierCurve_selectionDisplay,
         SymbolBezierCurve_issues {

  //····················································································································
  //   Atomic property: y1
  //····················································································································

  let y1_property = EBStoredProperty_Int (defaultValue: 685800)

  //····················································································································

  final func reset_y1_toDefaultValue () {
    self.y1 = 685800
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

  let x2_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_x2_toDefaultValue () {
    self.x2 = 0
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

  let y2_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_y2_toDefaultValue () {
    self.y2 = 0
  }

  //····················································································································

  final var y2 : Int {
    get { return self.y2_property.propval }
    set { self.y2_property.setProp (newValue) }
  }

  //····················································································································

  final var y2_property_selection : EBSelection <Int> { return self.y2_property.prop }

  //····················································································································
  //   Atomic property: cpx1
  //····················································································································

  let cpx1_property = EBStoredProperty_Int (defaultValue: 685800)

  //····················································································································

  final func reset_cpx1_toDefaultValue () {
    self.cpx1 = 685800
  }

  //····················································································································

  final var cpx1 : Int {
    get { return self.cpx1_property.propval }
    set { self.cpx1_property.setProp (newValue) }
  }

  //····················································································································

  final var cpx1_property_selection : EBSelection <Int> { return self.cpx1_property.prop }

  //····················································································································
  //   Atomic property: cpy1
  //····················································································································

  let cpy1_property = EBStoredProperty_Int (defaultValue: 685800)

  //····················································································································

  final func reset_cpy1_toDefaultValue () {
    self.cpy1 = 685800
  }

  //····················································································································

  final var cpy1 : Int {
    get { return self.cpy1_property.propval }
    set { self.cpy1_property.setProp (newValue) }
  }

  //····················································································································

  final var cpy1_property_selection : EBSelection <Int> { return self.cpy1_property.prop }

  //····················································································································
  //   Atomic property: cpx2
  //····················································································································

  let cpx2_property = EBStoredProperty_Int (defaultValue: 685800)

  //····················································································································

  final func reset_cpx2_toDefaultValue () {
    self.cpx2 = 685800
  }

  //····················································································································

  final var cpx2 : Int {
    get { return self.cpx2_property.propval }
    set { self.cpx2_property.setProp (newValue) }
  }

  //····················································································································

  final var cpx2_property_selection : EBSelection <Int> { return self.cpx2_property.prop }

  //····················································································································
  //   Atomic property: cpy2
  //····················································································································

  let cpy2_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_cpy2_toDefaultValue () {
    self.cpy2 = 0
  }

  //····················································································································

  final var cpy2 : Int {
    get { return self.cpy2_property.propval }
    set { self.cpy2_property.setProp (newValue) }
  }

  //····················································································································

  final var cpy2_property_selection : EBSelection <Int> { return self.cpy2_property.prop }

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
  //--- Atomic property: cpx1
    self.cpx1_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: cpy1
    self.cpy1_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: cpx2
    self.cpx2_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: cpy2
    self.cpy2_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: x1
    self.x1_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: strokeBezierPath
    self.strokeBezierPath_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x1_property_selection.kind ()
        kind &= unwSelf.y1_property_selection.kind ()
        kind &= unwSelf.x2_property_selection.kind ()
        kind &= unwSelf.y2_property_selection.kind ()
        kind &= unwSelf.cpx1_property_selection.kind ()
        kind &= unwSelf.cpy1_property_selection.kind ()
        kind &= unwSelf.cpx2_property_selection.kind ()
        kind &= unwSelf.cpy2_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x1_property_selection, unwSelf.y1_property_selection, unwSelf.x2_property_selection, unwSelf.y2_property_selection, unwSelf.cpx1_property_selection, unwSelf.cpy1_property_selection, unwSelf.cpx2_property_selection, unwSelf.cpy2_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7)) :
            return .single (transient_SymbolBezierCurve_strokeBezierPath (v0, v1, v2, v3, v4, v5, v6, v7))
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
    self.cpx1_property.addEBObserver (self.strokeBezierPath_property)
    self.cpy1_property.addEBObserver (self.strokeBezierPath_property)
    self.cpx2_property.addEBObserver (self.strokeBezierPath_property)
    self.cpy2_property.addEBObserver (self.strokeBezierPath_property)
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x1_property_selection.kind ()
        kind &= unwSelf.y1_property_selection.kind ()
        kind &= unwSelf.x2_property_selection.kind ()
        kind &= unwSelf.y2_property_selection.kind ()
        kind &= unwSelf.cpx1_property_selection.kind ()
        kind &= unwSelf.cpy1_property_selection.kind ()
        kind &= unwSelf.cpx2_property_selection.kind ()
        kind &= unwSelf.cpy2_property_selection.kind ()
        kind &= g_Preferences!.symbolColor_property_selection.kind ()
        kind &= g_Preferences!.symbolDrawingWidthMultipliedByTen_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x1_property_selection, unwSelf.y1_property_selection, unwSelf.x2_property_selection, unwSelf.y2_property_selection, unwSelf.cpx1_property_selection, unwSelf.cpy1_property_selection, unwSelf.cpx2_property_selection, unwSelf.cpy2_property_selection, g_Preferences!.symbolColor_property_selection, g_Preferences!.symbolDrawingWidthMultipliedByTen_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7), .single (let v8), .single (let v9)) :
            return .single (transient_SymbolBezierCurve_objectDisplay (v0, v1, v2, v3, v4, v5, v6, v7, v8, v9))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.x1_property.addEBObserver (self.objectDisplay_property)
    self.y1_property.addEBObserver (self.objectDisplay_property)
    self.x2_property.addEBObserver (self.objectDisplay_property)
    self.y2_property.addEBObserver (self.objectDisplay_property)
    self.cpx1_property.addEBObserver (self.objectDisplay_property)
    self.cpy1_property.addEBObserver (self.objectDisplay_property)
    self.cpx2_property.addEBObserver (self.objectDisplay_property)
    self.cpy2_property.addEBObserver (self.objectDisplay_property)
    g_Preferences?.symbolColor_property.addEBObserver (self.objectDisplay_property)
    g_Preferences?.symbolDrawingWidthMultipliedByTen_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x1_property_selection.kind ()
        kind &= unwSelf.y1_property_selection.kind ()
        kind &= unwSelf.x2_property_selection.kind ()
        kind &= unwSelf.y2_property_selection.kind ()
        kind &= unwSelf.cpx1_property_selection.kind ()
        kind &= unwSelf.cpy1_property_selection.kind ()
        kind &= unwSelf.cpx2_property_selection.kind ()
        kind &= unwSelf.cpy2_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x1_property_selection, unwSelf.y1_property_selection, unwSelf.x2_property_selection, unwSelf.y2_property_selection, unwSelf.cpx1_property_selection, unwSelf.cpy1_property_selection, unwSelf.cpx2_property_selection, unwSelf.cpy2_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7)) :
            return .single (transient_SymbolBezierCurve_selectionDisplay (v0, v1, v2, v3, v4, v5, v6, v7))
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
    self.cpx1_property.addEBObserver (self.selectionDisplay_property)
    self.cpy1_property.addEBObserver (self.selectionDisplay_property)
    self.cpx2_property.addEBObserver (self.selectionDisplay_property)
    self.cpy2_property.addEBObserver (self.selectionDisplay_property)
  //--- Atomic property: issues
    self.issues_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x1_property_selection.kind ()
        kind &= unwSelf.y1_property_selection.kind ()
        kind &= unwSelf.x2_property_selection.kind ()
        kind &= unwSelf.y2_property_selection.kind ()
        kind &= unwSelf.cpx1_property_selection.kind ()
        kind &= unwSelf.cpy1_property_selection.kind ()
        kind &= unwSelf.cpx2_property_selection.kind ()
        kind &= unwSelf.cpy2_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x1_property_selection, unwSelf.y1_property_selection, unwSelf.x2_property_selection, unwSelf.y2_property_selection, unwSelf.cpx1_property_selection, unwSelf.cpy1_property_selection, unwSelf.cpx2_property_selection, unwSelf.cpy2_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7)) :
            return .single (transient_SymbolBezierCurve_issues (v0, v1, v2, v3, v4, v5, v6, v7))
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
    self.cpx1_property.addEBObserver (self.issues_property)
    self.cpy1_property.addEBObserver (self.issues_property)
    self.cpx2_property.addEBObserver (self.issues_property)
    self.cpy2_property.addEBObserver (self.issues_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
    self.cpx1_property.setSignatureObserver (observer: self)
    self.cpx2_property.setSignatureObserver (observer: self)
    self.cpy1_property.setSignatureObserver (observer: self)
    self.cpy2_property.setSignatureObserver (observer: self)
    self.x1_property.setSignatureObserver (observer: self)
    self.x2_property.setSignatureObserver (observer: self)
    self.y1_property.setSignatureObserver (observer: self)
    self.y2_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.x1_property.removeEBObserver (self.strokeBezierPath_property)
    self.y1_property.removeEBObserver (self.strokeBezierPath_property)
    self.x2_property.removeEBObserver (self.strokeBezierPath_property)
    self.y2_property.removeEBObserver (self.strokeBezierPath_property)
    self.cpx1_property.removeEBObserver (self.strokeBezierPath_property)
    self.cpy1_property.removeEBObserver (self.strokeBezierPath_property)
    self.cpx2_property.removeEBObserver (self.strokeBezierPath_property)
    self.cpy2_property.removeEBObserver (self.strokeBezierPath_property)
    self.x1_property.removeEBObserver (self.objectDisplay_property)
    self.y1_property.removeEBObserver (self.objectDisplay_property)
    self.x2_property.removeEBObserver (self.objectDisplay_property)
    self.y2_property.removeEBObserver (self.objectDisplay_property)
    self.cpx1_property.removeEBObserver (self.objectDisplay_property)
    self.cpy1_property.removeEBObserver (self.objectDisplay_property)
    self.cpx2_property.removeEBObserver (self.objectDisplay_property)
    self.cpy2_property.removeEBObserver (self.objectDisplay_property)
    g_Preferences?.symbolColor_property.removeEBObserver (self.objectDisplay_property)
    g_Preferences?.symbolDrawingWidthMultipliedByTen_property.removeEBObserver (self.objectDisplay_property)
    self.x1_property.removeEBObserver (self.selectionDisplay_property)
    self.y1_property.removeEBObserver (self.selectionDisplay_property)
    self.x2_property.removeEBObserver (self.selectionDisplay_property)
    self.y2_property.removeEBObserver (self.selectionDisplay_property)
    self.cpx1_property.removeEBObserver (self.selectionDisplay_property)
    self.cpy1_property.removeEBObserver (self.selectionDisplay_property)
    self.cpx2_property.removeEBObserver (self.selectionDisplay_property)
    self.cpy2_property.removeEBObserver (self.selectionDisplay_property)
    self.x1_property.removeEBObserver (self.issues_property)
    self.y1_property.removeEBObserver (self.issues_property)
    self.x2_property.removeEBObserver (self.issues_property)
    self.y2_property.removeEBObserver (self.issues_property)
    self.cpx1_property.removeEBObserver (self.issues_property)
    self.cpy1_property.removeEBObserver (self.issues_property)
    self.cpx2_property.removeEBObserver (self.issues_property)
    self.cpy2_property.removeEBObserver (self.issues_property)
  //--- Unregister properties for handling signature
    self.cpx1_property.setSignatureObserver (observer: nil)
    self.cpx2_property.setSignatureObserver (observer: nil)
    self.cpy1_property.setSignatureObserver (observer: nil)
    self.cpy2_property.setSignatureObserver (observer: nil)
    self.x1_property.setSignatureObserver (observer: nil)
    self.x2_property.setSignatureObserver (observer: nil)
    self.y1_property.setSignatureObserver (observer: nil)
    self.y2_property.setSignatureObserver (observer: nil)
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
      "cpx1",
      idx: self.cpx1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.cpx1_property.mObserverExplorer,
      valueExplorer: &self.cpx1_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "cpy1",
      idx: self.cpy1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.cpy1_property.mObserverExplorer,
      valueExplorer: &self.cpy1_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "cpx2",
      idx: self.cpx2_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.cpx2_property.mObserverExplorer,
      valueExplorer: &self.cpx2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "cpy2",
      idx: self.cpy2_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.cpy2_property.mObserverExplorer,
      valueExplorer: &self.cpy2_property.mValueExplorer
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
  //--- Atomic property: cpx1
    self.cpx1_property.mObserverExplorer = nil
    self.cpx1_property.mValueExplorer = nil
  //--- Atomic property: cpy1
    self.cpy1_property.mObserverExplorer = nil
    self.cpy1_property.mValueExplorer = nil
  //--- Atomic property: cpx2
    self.cpx2_property.mObserverExplorer = nil
    self.cpx2_property.mValueExplorer = nil
  //--- Atomic property: cpy2
    self.cpy2_property.mObserverExplorer = nil
    self.cpy2_property.mValueExplorer = nil
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
  //--- Atomic property: cpx1
    self.cpx1_property.storeIn (dictionary: ioDictionary, forKey: "cpx1")
  //--- Atomic property: cpy1
    self.cpy1_property.storeIn (dictionary: ioDictionary, forKey: "cpy1")
  //--- Atomic property: cpx2
    self.cpx2_property.storeIn (dictionary: ioDictionary, forKey: "cpx2")
  //--- Atomic property: cpy2
    self.cpy2_property.storeIn (dictionary: ioDictionary, forKey: "cpy2")
  //--- Atomic property: x1
    self.x1_property.storeIn (dictionary: ioDictionary, forKey: "x1")
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
  //--- Atomic property: y1
    self.y1_property.readFrom (dictionary: inDictionary, forKey: "y1")
  //--- Atomic property: x2
    self.x2_property.readFrom (dictionary: inDictionary, forKey: "x2")
  //--- Atomic property: y2
    self.y2_property.readFrom (dictionary: inDictionary, forKey: "y2")
  //--- Atomic property: cpx1
    self.cpx1_property.readFrom (dictionary: inDictionary, forKey: "cpx1")
  //--- Atomic property: cpy1
    self.cpy1_property.readFrom (dictionary: inDictionary, forKey: "cpy1")
  //--- Atomic property: cpx2
    self.cpx2_property.readFrom (dictionary: inDictionary, forKey: "cpx2")
  //--- Atomic property: cpy2
    self.cpy2_property.readFrom (dictionary: inDictionary, forKey: "cpy2")
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
    ioString += "cpx1\n"
    ioString += "cpy1\n"
    ioString += "cpx2\n"
    ioString += "cpy2\n"
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
    self.cpx1.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.cpy1.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.cpx2.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.cpy2.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.x1.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //    setUpWithTextDictionary
  //····················································································································

  override func setUpWithTextDictionary (_ inDictionary : [String : Data], _ inObjectArray : [EBManagedObject]) {
    super.setUpWithTextDictionary (inDictionary, inObjectArray)
  //--- Atomic properties
    if let stringData = inDictionary ["y1"], let value = Int.unarchiveFromStringData (stringData) {
      self.y1 = value
    }
    if let stringData = inDictionary ["x2"], let value = Int.unarchiveFromStringData (stringData) {
      self.x2 = value
    }
    if let stringData = inDictionary ["y2"], let value = Int.unarchiveFromStringData (stringData) {
      self.y2 = value
    }
    if let stringData = inDictionary ["cpx1"], let value = Int.unarchiveFromStringData (stringData) {
      self.cpx1 = value
    }
    if let stringData = inDictionary ["cpy1"], let value = Int.unarchiveFromStringData (stringData) {
      self.cpy1 = value
    }
    if let stringData = inDictionary ["cpx2"], let value = Int.unarchiveFromStringData (stringData) {
      self.cpx2 = value
    }
    if let stringData = inDictionary ["cpy2"], let value = Int.unarchiveFromStringData (stringData) {
      self.cpy2 = value
    }
    if let stringData = inDictionary ["x1"], let value = Int.unarchiveFromStringData (stringData) {
      self.x1 = value
    }
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
    crc.accumulateUInt32 (self.cpx1_property.signature ())
    crc.accumulateUInt32 (self.cpx2_property.signature ())
    crc.accumulateUInt32 (self.cpy1_property.signature ())
    crc.accumulateUInt32 (self.cpy2_property.signature ())
    crc.accumulateUInt32 (self.x1_property.signature ())
    crc.accumulateUInt32 (self.x2_property.signature ())
    crc.accumulateUInt32 (self.y1_property.signature ())
    crc.accumulateUInt32 (self.y2_property.signature ())
    return crc
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


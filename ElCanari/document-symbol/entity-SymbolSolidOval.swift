//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1

let SYMBOL_SOLID_OVAL_BOTTOM = 1
let SYMBOL_SOLID_OVAL_RIGHT  = 2
let SYMBOL_SOLID_OVAL_LEFT   = 3
let SYMBOL_SOLID_OVAL_TOP    = 4

//--- END OF USER ZONE 1
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSolidOval_y : AnyObject {
  var y : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSolidOval_width : AnyObject {
  var width : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSolidOval_height : AnyObject {
  var height : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSolidOval_x : AnyObject {
  var x : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSolidOval_filledBezierPath : AnyObject {
  var filledBezierPath : NSBezierPath? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSolidOval_objectDisplay : AnyObject {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSolidOval_selectionDisplay : AnyObject {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSolidOval_issues : AnyObject {
  var issues : CanariIssueArray? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: SymbolSolidOval
//----------------------------------------------------------------------------------------------------------------------

final class SymbolSolidOval : SymbolObject,
         SymbolSolidOval_y,
         SymbolSolidOval_width,
         SymbolSolidOval_height,
         SymbolSolidOval_x,
         SymbolSolidOval_filledBezierPath,
         SymbolSolidOval_objectDisplay,
         SymbolSolidOval_selectionDisplay,
         SymbolSolidOval_issues {

  //····················································································································
  //   Atomic property: y
  //····················································································································

  final let y_property : EBStoredProperty_Int

  //····················································································································

  final func reset_y_toDefaultValue () {
    self.y = 0
  }

  //····················································································································

  final var y : Int {
    get { return self.y_property.propval }
    set { self.y_property.setProp (newValue) }
  }

  //····················································································································

  final var y_property_selection : EBSelection <Int> { return self.y_property.selection }

  //····················································································································
  //   Atomic property: width
  //····················································································································

  final let width_property : EBStoredProperty_Int

  //····················································································································

  final func reset_width_toDefaultValue () {
    self.width = 685800
  }

  //····················································································································

  final var width : Int {
    get { return self.width_property.propval }
    set { self.width_property.setProp (newValue) }
  }

  //····················································································································

  final var width_property_selection : EBSelection <Int> { return self.width_property.selection }

  //····················································································································
  //   Atomic property: height
  //····················································································································

  final let height_property : EBStoredProperty_Int

  //····················································································································

  final func reset_height_toDefaultValue () {
    self.height = 685800
  }

  //····················································································································

  final var height : Int {
    get { return self.height_property.propval }
    set { self.height_property.setProp (newValue) }
  }

  //····················································································································

  final var height_property_selection : EBSelection <Int> { return self.height_property.selection }

  //····················································································································
  //   Atomic property: x
  //····················································································································

  final let x_property : EBStoredProperty_Int

  //····················································································································

  final func reset_x_toDefaultValue () {
    self.x = 0
  }

  //····················································································································

  final var x : Int {
    get { return self.x_property.propval }
    set { self.x_property.setProp (newValue) }
  }

  //····················································································································

  final var x_property_selection : EBSelection <Int> { return self.x_property.selection }

  //····················································································································
  //   Transient property: filledBezierPath
  //····················································································································

  final let filledBezierPath_property = EBTransientProperty_NSBezierPath ()

  //····················································································································

  final var filledBezierPath_property_selection : EBSelection <NSBezierPath> {
    return self.filledBezierPath_property.selection
  }

  //····················································································································

  final var filledBezierPath : NSBezierPath? {
    switch self.filledBezierPath_property_selection {
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
    self.y_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.width_property = EBStoredProperty_Int (defaultValue: 685800, undoManager: ebUndoManager)
    self.height_property = EBStoredProperty_Int (defaultValue: 685800, undoManager: ebUndoManager)
    self.x_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- Atomic property: filledBezierPath
    self.filledBezierPath_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x_property_selection.kind ()
        kind &= unwSelf.y_property_selection.kind ()
        kind &= unwSelf.width_property_selection.kind ()
        kind &= unwSelf.height_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x_property_selection, unwSelf.y_property_selection, unwSelf.width_property_selection, unwSelf.height_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_SymbolSolidOval_filledBezierPath (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.x_property.addEBObserver (self.filledBezierPath_property)
    self.y_property.addEBObserver (self.filledBezierPath_property)
    self.width_property.addEBObserver (self.filledBezierPath_property)
    self.height_property.addEBObserver (self.filledBezierPath_property)
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x_property_selection.kind ()
        kind &= unwSelf.y_property_selection.kind ()
        kind &= unwSelf.width_property_selection.kind ()
        kind &= unwSelf.height_property_selection.kind ()
        kind &= preferences_symbolColor_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x_property_selection, unwSelf.y_property_selection, unwSelf.width_property_selection, unwSelf.height_property_selection, preferences_symbolColor_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_SymbolSolidOval_objectDisplay (v0, v1, v2, v3, v4))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.x_property.addEBObserver (self.objectDisplay_property)
    self.y_property.addEBObserver (self.objectDisplay_property)
    self.width_property.addEBObserver (self.objectDisplay_property)
    self.height_property.addEBObserver (self.objectDisplay_property)
    preferences_symbolColor_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x_property_selection.kind ()
        kind &= unwSelf.y_property_selection.kind ()
        kind &= unwSelf.width_property_selection.kind ()
        kind &= unwSelf.height_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x_property_selection, unwSelf.y_property_selection, unwSelf.width_property_selection, unwSelf.height_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_SymbolSolidOval_selectionDisplay (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.x_property.addEBObserver (self.selectionDisplay_property)
    self.y_property.addEBObserver (self.selectionDisplay_property)
    self.width_property.addEBObserver (self.selectionDisplay_property)
    self.height_property.addEBObserver (self.selectionDisplay_property)
  //--- Atomic property: issues
    self.issues_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x_property_selection.kind ()
        kind &= unwSelf.y_property_selection.kind ()
        kind &= unwSelf.width_property_selection.kind ()
        kind &= unwSelf.height_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x_property_selection, unwSelf.y_property_selection, unwSelf.width_property_selection, unwSelf.height_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_SymbolSolidOval_issues (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.x_property.addEBObserver (self.issues_property)
    self.y_property.addEBObserver (self.issues_property)
    self.width_property.addEBObserver (self.issues_property)
    self.height_property.addEBObserver (self.issues_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
    self.height_property.setSignatureObserver (observer: self)
    self.width_property.setSignatureObserver (observer: self)
    self.x_property.setSignatureObserver (observer: self)
    self.y_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.x_property.removeEBObserver (self.filledBezierPath_property)
    // self.y_property.removeEBObserver (self.filledBezierPath_property)
    // self.width_property.removeEBObserver (self.filledBezierPath_property)
    // self.height_property.removeEBObserver (self.filledBezierPath_property)
    // self.x_property.removeEBObserver (self.objectDisplay_property)
    // self.y_property.removeEBObserver (self.objectDisplay_property)
    // self.width_property.removeEBObserver (self.objectDisplay_property)
    // self.height_property.removeEBObserver (self.objectDisplay_property)
    // preferences_symbolColor_property.removeEBObserver (self.objectDisplay_property)
    // self.x_property.removeEBObserver (self.selectionDisplay_property)
    // self.y_property.removeEBObserver (self.selectionDisplay_property)
    // self.width_property.removeEBObserver (self.selectionDisplay_property)
    // self.height_property.removeEBObserver (self.selectionDisplay_property)
    // self.x_property.removeEBObserver (self.issues_property)
    // self.y_property.removeEBObserver (self.issues_property)
    // self.width_property.removeEBObserver (self.issues_property)
    // self.height_property.removeEBObserver (self.issues_property)
  //--- Unregister properties for handling signature
    self.height_property.setSignatureObserver (observer: nil)
    self.width_property.setSignatureObserver (observer: nil)
    self.x_property.setSignatureObserver (observer: nil)
    self.y_property.setSignatureObserver (observer: nil)
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
      "y",
      idx: self.y_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y_property.mObserverExplorer,
      valueExplorer: &self.y_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "width",
      idx: self.width_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.width_property.mObserverExplorer,
      valueExplorer: &self.width_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "height",
      idx: self.height_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.height_property.mObserverExplorer,
      valueExplorer: &self.height_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x",
      idx: self.x_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x_property.mObserverExplorer,
      valueExplorer: &self.x_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "filledBezierPath",
      idx: self.filledBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.filledBezierPath_property.mObserverExplorer,
      valueExplorer: &self.filledBezierPath_property.mValueExplorer
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
  //--- Atomic property: y
    self.y_property.mObserverExplorer = nil
    self.y_property.mValueExplorer = nil
  //--- Atomic property: width
    self.width_property.mObserverExplorer = nil
    self.width_property.mValueExplorer = nil
  //--- Atomic property: height
    self.height_property.mObserverExplorer = nil
    self.height_property.mValueExplorer = nil
  //--- Atomic property: x
    self.x_property.mObserverExplorer = nil
    self.x_property.mValueExplorer = nil
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
  //--- Atomic property: y
    self.y_property.storeIn (dictionary: ioDictionary, forKey: "y")
  //--- Atomic property: width
    self.width_property.storeIn (dictionary: ioDictionary, forKey: "width")
  //--- Atomic property: height
    self.height_property.storeIn (dictionary: ioDictionary, forKey: "height")
  //--- Atomic property: x
    self.x_property.storeIn (dictionary: ioDictionary, forKey: "x")
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
  //--- Atomic property: y
    self.y_property.readFrom (dictionary: inDictionary, forKey: "y")
  //--- Atomic property: width
    self.width_property.readFrom (dictionary: inDictionary, forKey: "width")
  //--- Atomic property: height
    self.height_property.readFrom (dictionary: inDictionary, forKey: "height")
  //--- Atomic property: x
    self.x_property.readFrom (dictionary: inDictionary, forKey: "x")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "y\n"
    ioString += "width\n"
    ioString += "height\n"
    ioString += "x\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.y.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.width.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.height.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.x.appendPropertyValueTo (&ioData)
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
      if let range = inDictionary ["y"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.y = value
      }
      if let range = inDictionary ["width"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.width = value
      }
      if let range = inDictionary ["height"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.height = value
      }
      if let range = inDictionary ["x"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.x = value
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
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.height_property.signature ())
    crc.accumulateUInt32 (self.width_property.signature ())
    crc.accumulateUInt32 (self.x_property.signature ())
    crc.accumulateUInt32 (self.y_property.signature ())
    return crc
  }

  //····················································································································
  //  USER ZONE 2
  //····················································································································
//--- START OF USER ZONE 2

  override func cursorForKnob (knob inKnobIndex: Int) -> NSCursor? {
    if (inKnobIndex == SYMBOL_SOLID_OVAL_BOTTOM) || (inKnobIndex == SYMBOL_SOLID_OVAL_TOP) {
      return NSCursor.resizeUpDown
    }else{
      return NSCursor.resizeLeftRight
    }
  }

  //····················································································································

//  override func acceptedTranslation (xBy inDx: Int, yBy inDy: Int) -> CanariPoint {
//    var acceptedX = inDx
//    let newX = self.x + acceptedX
//    if newX < 0 {
//      acceptedX = -self.x
//    }
//    var acceptedY = inDy
//    let newY = self.y + acceptedY
//    if newY < 0 {
//      acceptedY = -self.y
//    }
//    return CanariPoint (x: acceptedX, y: acceptedY)
//  }

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
//    let newX = self.x + inDx
//    let newY = self.y + inDy
//    return (newX >= 0) && (newY >= 0)
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int, userSet ioSet : ObjcObjectSet) {
    self.x += inDx
    self.y += inDy
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
    if inKnobIndex == SYMBOL_SOLID_OVAL_LEFT {
    //  if (self.x + dx) < 0 {
   //     dx = -self.x
  //    }
      if (self.width - dx) < SYMBOL_GRID_IN_CANARI_UNIT {
        dx = SYMBOL_GRID_IN_CANARI_UNIT - self.width
      }
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_RIGHT {
      if (self.width + dx) < SYMBOL_GRID_IN_CANARI_UNIT {
        dx = -(SYMBOL_GRID_IN_CANARI_UNIT - self.width)
      }
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_BOTTOM {
//      if (self.y + dy) < 0 {
  //      dy = -self.y
 //     }
      if (self.height - dy) < SYMBOL_GRID_IN_CANARI_UNIT {
        dy = SYMBOL_GRID_IN_CANARI_UNIT - self.height
      }
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_TOP {
      if (self.height + dy) < SYMBOL_GRID_IN_CANARI_UNIT {
        dy = -(SYMBOL_GRID_IN_CANARI_UNIT - self.height)
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
    if inKnobIndex == SYMBOL_SOLID_OVAL_RIGHT {
      self.width += inDx
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_LEFT {
      self.x += inDx
      self.width -= inDx
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_TOP {
      self.height += inDy
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_BOTTOM {
      self.y += inDy
      self.height -= inDy
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
    var result = (self.x % inGrid) != 0
    if !result {
      result = (self.y % inGrid) != 0
    }
    if !result {
      result = (self.width % inGrid) != 0
    }
    if !result {
      result = (self.height % inGrid) != 0
    }
    return result
  }

  //····················································································································

  override func snapToGrid (_ inGrid : Int) {
    self.x = ((self.x + inGrid / 2) / inGrid) * inGrid
    self.y = ((self.y + inGrid / 2) / inGrid) * inGrid
    self.width = ((self.width + inGrid / 2) / inGrid) * inGrid
    self.height = ((self.height + inGrid / 2) / inGrid) * inGrid
  }

  //····················································································································

  override func alignmentPoints () -> ObjcCanariPointSet {
    let result = ObjcCanariPointSet ()
    result.insert (CanariPoint (x: self.x, y: self.y))
    result.insert (CanariPoint (x: self.x + self.width, y: self.y + self.height))
    return result
  }

  //····················································································································


//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------

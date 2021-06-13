//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolText_y : AnyObject {
  var y : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolText_text : AnyObject {
  var text : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolText_horizontalAlignment : AnyObject {
  var horizontalAlignment : HorizontalAlignment { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolText_x : AnyObject {
  var x : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolText_objectDisplay : AnyObject {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolText_selectionDisplay : AnyObject {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolText_issues : AnyObject {
  var issues : CanariIssueArray? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: SymbolText
//----------------------------------------------------------------------------------------------------------------------

final class SymbolText : SymbolObject,
         SymbolText_y,
         SymbolText_text,
         SymbolText_horizontalAlignment,
         SymbolText_x,
         SymbolText_objectDisplay,
         SymbolText_selectionDisplay,
         SymbolText_issues {

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
  //   Atomic property: text
  //····················································································································

  final let text_property : EBStoredProperty_String

  //····················································································································

  final func reset_text_toDefaultValue () {
    self.text = "text"
  }

  //····················································································································

  final var text : String {
    get { return self.text_property.propval }
    set { self.text_property.setProp (newValue) }
  }

  //····················································································································

  final var text_property_selection : EBSelection <String> { return self.text_property.selection }

  //····················································································································
  //   Atomic property: horizontalAlignment
  //····················································································································

  final let horizontalAlignment_property : EBStoredProperty_HorizontalAlignment

  //····················································································································

  final func reset_horizontalAlignment_toDefaultValue () {
    self.horizontalAlignment = HorizontalAlignment.center
  }

  //····················································································································

  final var horizontalAlignment : HorizontalAlignment {
    get { return self.horizontalAlignment_property.propval }
    set { self.horizontalAlignment_property.setProp (newValue) }
  }

  //····················································································································

  final var horizontalAlignment_property_selection : EBSelection <HorizontalAlignment> { return self.horizontalAlignment_property.selection }

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
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    self.y_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.text_property = EBStoredProperty_String (defaultValue: "text", undoManager: ebUndoManager)
    self.horizontalAlignment_property = EBStoredProperty_HorizontalAlignment (defaultValue: HorizontalAlignment.center, undoManager: ebUndoManager)
    self.x_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x_property_selection.kind ()
        kind &= unwSelf.y_property_selection.kind ()
        kind &= unwSelf.text_property_selection.kind ()
        kind &= unwSelf.horizontalAlignment_property_selection.kind ()
        kind &= preferences_symbolColor_property_selection.kind ()
        kind &= preferences_pinNameFont_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x_property_selection, unwSelf.y_property_selection, unwSelf.text_property_selection, unwSelf.horizontalAlignment_property_selection, preferences_symbolColor_property_selection, preferences_pinNameFont_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5)) :
            return .single (transient_SymbolText_objectDisplay (v0, v1, v2, v3, v4, v5))
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
    self.text_property.addEBObserver (self.objectDisplay_property)
    self.horizontalAlignment_property.addEBObserver (self.objectDisplay_property)
    preferences_symbolColor_property.addEBObserver (self.objectDisplay_property)
    preferences_pinNameFont_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x_property_selection.kind ()
        kind &= unwSelf.y_property_selection.kind ()
        kind &= unwSelf.text_property_selection.kind ()
        kind &= unwSelf.horizontalAlignment_property_selection.kind ()
        kind &= preferences_pinNameFont_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x_property_selection, unwSelf.y_property_selection, unwSelf.text_property_selection, unwSelf.horizontalAlignment_property_selection, preferences_pinNameFont_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_SymbolText_selectionDisplay (v0, v1, v2, v3, v4))
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
    self.text_property.addEBObserver (self.selectionDisplay_property)
    self.horizontalAlignment_property.addEBObserver (self.selectionDisplay_property)
    preferences_pinNameFont_property.addEBObserver (self.selectionDisplay_property)
  //--- Atomic property: issues
    self.issues_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x_property_selection.kind ()
        kind &= unwSelf.y_property_selection.kind ()
        kind &= unwSelf.text_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x_property_selection, unwSelf.y_property_selection, unwSelf.text_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2)) :
            return .single (transient_SymbolText_issues (v0, v1, v2))
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
    self.text_property.addEBObserver (self.issues_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
    self.horizontalAlignment_property.setSignatureObserver (observer: self)
    self.text_property.setSignatureObserver (observer: self)
    self.x_property.setSignatureObserver (observer: self)
    self.y_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.x_property.removeEBObserver (self.objectDisplay_property)
    // self.y_property.removeEBObserver (self.objectDisplay_property)
    // self.text_property.removeEBObserver (self.objectDisplay_property)
    // self.horizontalAlignment_property.removeEBObserver (self.objectDisplay_property)
    // preferences_symbolColor_property.removeEBObserver (self.objectDisplay_property)
    // preferences_pinNameFont_property.removeEBObserver (self.objectDisplay_property)
    // self.x_property.removeEBObserver (self.selectionDisplay_property)
    // self.y_property.removeEBObserver (self.selectionDisplay_property)
    // self.text_property.removeEBObserver (self.selectionDisplay_property)
    // self.horizontalAlignment_property.removeEBObserver (self.selectionDisplay_property)
    // preferences_pinNameFont_property.removeEBObserver (self.selectionDisplay_property)
    // self.x_property.removeEBObserver (self.issues_property)
    // self.y_property.removeEBObserver (self.issues_property)
    // self.text_property.removeEBObserver (self.issues_property)
  //--- Unregister properties for handling signature
    self.horizontalAlignment_property.setSignatureObserver (observer: nil)
    self.text_property.setSignatureObserver (observer: nil)
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
      "text",
      idx: self.text_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.text_property.mObserverExplorer,
      valueExplorer: &self.text_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "horizontalAlignment",
      idx: self.horizontalAlignment_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.horizontalAlignment_property.mObserverExplorer,
      valueExplorer: &self.horizontalAlignment_property.mValueExplorer
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
  //--- Atomic property: text
    self.text_property.mObserverExplorer = nil
    self.text_property.mValueExplorer = nil
  //--- Atomic property: horizontalAlignment
    self.horizontalAlignment_property.mObserverExplorer = nil
    self.horizontalAlignment_property.mValueExplorer = nil
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
  //--- Atomic property: text
    self.text_property.storeIn (dictionary: ioDictionary, forKey: "text")
  //--- Atomic property: horizontalAlignment
    self.horizontalAlignment_property.storeIn (dictionary: ioDictionary, forKey: "horizontalAlignment")
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
  //--- Atomic property: text
    self.text_property.readFrom (dictionary: inDictionary, forKey: "text")
  //--- Atomic property: horizontalAlignment
    self.horizontalAlignment_property.readFrom (dictionary: inDictionary, forKey: "horizontalAlignment")
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
    ioString += "text\n"
    ioString += "horizontalAlignment\n"
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
    self.text.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.horizontalAlignment.appendPropertyValueTo (&ioData)
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
      if let range = inDictionary ["text"], let value = String.unarchiveFromDataRange (inData, range) {
        self.text = value
      }
      if let range = inDictionary ["horizontalAlignment"], let value = HorizontalAlignment.unarchiveFromDataRange (inData, range) {
        self.horizontalAlignment = value
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
    crc.accumulateUInt32 (self.horizontalAlignment_property.signature ())
    crc.accumulateUInt32 (self.text_property.signature ())
    crc.accumulateUInt32 (self.x_property.signature ())
    crc.accumulateUInt32 (self.y_property.signature ())
    return crc
  }

  //····················································································································
  //  USER ZONE 2
  //····················································································································
//--- START OF USER ZONE 2

 //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
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
                         proposedUnalignedAlignedTranslation inProposedUnalignedTranslation : ObjcCanariPoint,
                         proposedAlignedTranslation inProposedAlignedTranslation : ObjcCanariPoint,
                         unalignedMouseDraggedLocation inUnalignedMouseDraggedLocation : ObjcCanariPoint,
                         shift inShift : Bool) -> ObjcCanariPoint {
    return inProposedAlignedTranslation
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
    self.x += inDx
    self.y += inDy
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
    return result
  }

  //····················································································································

  override func snapToGrid (_ inGrid : Int) {
    self.x = ((self.x + inGrid / 2) / inGrid) * inGrid
    self.y = ((self.y + inGrid / 2) / inGrid) * inGrid
  }

  //····················································································································

//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------

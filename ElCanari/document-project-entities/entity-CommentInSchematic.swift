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

protocol CommentInSchematic_mColor : AnyObject {
  var mColor : NSColor { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol CommentInSchematic_mSize : AnyObject {
  var mSize : Double { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol CommentInSchematic_mHorizontalAlignment : AnyObject {
  var mHorizontalAlignment : HorizontalAlignment { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol CommentInSchematic_mVerticalAlignment : AnyObject {
  var mVerticalAlignment : VerticalAlignment { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol CommentInSchematic_mX : AnyObject {
  var mX : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol CommentInSchematic_mY : AnyObject {
  var mY : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol CommentInSchematic_mComment : AnyObject {
  var mComment : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol CommentInSchematic_objectDisplay : AnyObject {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol CommentInSchematic_selectionDisplay : AnyObject {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: CommentInSchematic
//----------------------------------------------------------------------------------------------------------------------

final class CommentInSchematic : SchematicObject,
         CommentInSchematic_mColor,
         CommentInSchematic_mSize,
         CommentInSchematic_mHorizontalAlignment,
         CommentInSchematic_mVerticalAlignment,
         CommentInSchematic_mX,
         CommentInSchematic_mY,
         CommentInSchematic_mComment,
         CommentInSchematic_objectDisplay,
         CommentInSchematic_selectionDisplay {

  //····················································································································
  //   Atomic property: mColor
  //····················································································································

  final let mColor_property : EBStoredProperty_NSColor

  //····················································································································

  final func reset_mColor_toDefaultValue () {
    self.mColor = NSColor.black
  }

  //····················································································································

  final var mColor : NSColor {
    get { return self.mColor_property.propval }
    set { self.mColor_property.setProp (newValue) }
  }

  //····················································································································

  final var mColor_property_selection : EBSelection <NSColor> { return self.mColor_property.selection }

  //····················································································································
  //   Atomic property: mSize
  //····················································································································

  final let mSize_property : EBStoredProperty_Double

  //····················································································································

  final func reset_mSize_toDefaultValue () {
    self.mSize = 11
  }

  //····················································································································

  final var mSize : Double {
    get { return self.mSize_property.propval }
    set { self.mSize_property.setProp (newValue) }
  }

  //····················································································································

  final var mSize_property_selection : EBSelection <Double> { return self.mSize_property.selection }

  //····················································································································
  //   Atomic property: mHorizontalAlignment
  //····················································································································

  final let mHorizontalAlignment_property : EBStoredProperty_HorizontalAlignment

  //····················································································································

  final func reset_mHorizontalAlignment_toDefaultValue () {
    self.mHorizontalAlignment = HorizontalAlignment.center
  }

  //····················································································································

  final var mHorizontalAlignment : HorizontalAlignment {
    get { return self.mHorizontalAlignment_property.propval }
    set { self.mHorizontalAlignment_property.setProp (newValue) }
  }

  //····················································································································

  final var mHorizontalAlignment_property_selection : EBSelection <HorizontalAlignment> { return self.mHorizontalAlignment_property.selection }

  //····················································································································
  //   Atomic property: mVerticalAlignment
  //····················································································································

  final let mVerticalAlignment_property : EBStoredProperty_VerticalAlignment

  //····················································································································

  final func reset_mVerticalAlignment_toDefaultValue () {
    self.mVerticalAlignment = VerticalAlignment.center
  }

  //····················································································································

  final var mVerticalAlignment : VerticalAlignment {
    get { return self.mVerticalAlignment_property.propval }
    set { self.mVerticalAlignment_property.setProp (newValue) }
  }

  //····················································································································

  final var mVerticalAlignment_property_selection : EBSelection <VerticalAlignment> { return self.mVerticalAlignment_property.selection }

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
  //   Atomic property: mComment
  //····················································································································

  final let mComment_property : EBStoredProperty_String

  //····················································································································

  final func reset_mComment_toDefaultValue () {
    self.mComment = ""
  }

  //····················································································································

  final var mComment : String {
    get { return self.mComment_property.propval }
    set { self.mComment_property.setProp (newValue) }
  }

  //····················································································································

  final var mComment_property_selection : EBSelection <String> { return self.mComment_property.selection }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    self.mColor_property = EBStoredProperty_NSColor (defaultValue: NSColor.black, undoManager: ebUndoManager)
    self.mSize_property = EBStoredProperty_Double (defaultValue: 11, undoManager: ebUndoManager)
    self.mHorizontalAlignment_property = EBStoredProperty_HorizontalAlignment (defaultValue: HorizontalAlignment.center, undoManager: ebUndoManager)
    self.mVerticalAlignment_property = EBStoredProperty_VerticalAlignment (defaultValue: VerticalAlignment.center, undoManager: ebUndoManager)
    self.mX_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.mY_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.mComment_property = EBStoredProperty_String (defaultValue: "", undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mComment_property_selection.kind ()
        kind &= unwSelf.mColor_property_selection.kind ()
        kind &= unwSelf.mSize_property_selection.kind ()
        kind &= unwSelf.mHorizontalAlignment_property_selection.kind ()
        kind &= unwSelf.mVerticalAlignment_property_selection.kind ()
        kind &= unwSelf.mX_property_selection.kind ()
        kind &= unwSelf.mY_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mComment_property_selection, unwSelf.mColor_property_selection, unwSelf.mSize_property_selection, unwSelf.mHorizontalAlignment_property_selection, unwSelf.mVerticalAlignment_property_selection, unwSelf.mX_property_selection, unwSelf.mY_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6)) :
            return .single (transient_CommentInSchematic_objectDisplay (v0, v1, v2, v3, v4, v5, v6))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mComment_property.addEBObserver (self.objectDisplay_property)
    self.mColor_property.addEBObserver (self.objectDisplay_property)
    self.mSize_property.addEBObserver (self.objectDisplay_property)
    self.mHorizontalAlignment_property.addEBObserver (self.objectDisplay_property)
    self.mVerticalAlignment_property.addEBObserver (self.objectDisplay_property)
    self.mX_property.addEBObserver (self.objectDisplay_property)
    self.mY_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mComment_property_selection.kind ()
        kind &= unwSelf.mColor_property_selection.kind ()
        kind &= unwSelf.mSize_property_selection.kind ()
        kind &= unwSelf.mHorizontalAlignment_property_selection.kind ()
        kind &= unwSelf.mVerticalAlignment_property_selection.kind ()
        kind &= preferences_schematicBackColor_property_selection.kind ()
        kind &= unwSelf.mX_property_selection.kind ()
        kind &= unwSelf.mY_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mComment_property_selection, unwSelf.mColor_property_selection, unwSelf.mSize_property_selection, unwSelf.mHorizontalAlignment_property_selection, unwSelf.mVerticalAlignment_property_selection, preferences_schematicBackColor_property_selection, unwSelf.mX_property_selection, unwSelf.mY_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5), .single (let v6), .single (let v7)) :
            return .single (transient_CommentInSchematic_selectionDisplay (v0, v1, v2, v3, v4, v5, v6, v7))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mComment_property.addEBObserver (self.selectionDisplay_property)
    self.mColor_property.addEBObserver (self.selectionDisplay_property)
    self.mSize_property.addEBObserver (self.selectionDisplay_property)
    self.mHorizontalAlignment_property.addEBObserver (self.selectionDisplay_property)
    self.mVerticalAlignment_property.addEBObserver (self.selectionDisplay_property)
    preferences_schematicBackColor_property.addEBObserver (self.selectionDisplay_property)
    self.mX_property.addEBObserver (self.selectionDisplay_property)
    self.mY_property.addEBObserver (self.selectionDisplay_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.mComment_property.removeEBObserver (self.objectDisplay_property)
    // self.mColor_property.removeEBObserver (self.objectDisplay_property)
    // self.mSize_property.removeEBObserver (self.objectDisplay_property)
    // self.mHorizontalAlignment_property.removeEBObserver (self.objectDisplay_property)
    // self.mVerticalAlignment_property.removeEBObserver (self.objectDisplay_property)
    // self.mX_property.removeEBObserver (self.objectDisplay_property)
    // self.mY_property.removeEBObserver (self.objectDisplay_property)
    // self.mComment_property.removeEBObserver (self.selectionDisplay_property)
    // self.mColor_property.removeEBObserver (self.selectionDisplay_property)
    // self.mSize_property.removeEBObserver (self.selectionDisplay_property)
    // self.mHorizontalAlignment_property.removeEBObserver (self.selectionDisplay_property)
    // self.mVerticalAlignment_property.removeEBObserver (self.selectionDisplay_property)
    // preferences_schematicBackColor_property.removeEBObserver (self.selectionDisplay_property)
    // self.mX_property.removeEBObserver (self.selectionDisplay_property)
    // self.mY_property.removeEBObserver (self.selectionDisplay_property)
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
      "mColor",
      idx: self.mColor_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mColor_property.mObserverExplorer,
      valueExplorer: &self.mColor_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mSize",
      idx: self.mSize_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mSize_property.mObserverExplorer,
      valueExplorer: &self.mSize_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mHorizontalAlignment",
      idx: self.mHorizontalAlignment_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mHorizontalAlignment_property.mObserverExplorer,
      valueExplorer: &self.mHorizontalAlignment_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mVerticalAlignment",
      idx: self.mVerticalAlignment_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mVerticalAlignment_property.mObserverExplorer,
      valueExplorer: &self.mVerticalAlignment_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mX",
      idx: self.mX_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mX_property.mObserverExplorer,
      valueExplorer: &self.mX_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mY",
      idx: self.mY_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mY_property.mObserverExplorer,
      valueExplorer: &self.mY_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mComment",
      idx: self.mComment_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mComment_property.mObserverExplorer,
      valueExplorer: &self.mComment_property.mValueExplorer
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
  //--- Atomic property: mColor
    self.mColor_property.mObserverExplorer = nil
    self.mColor_property.mValueExplorer = nil
  //--- Atomic property: mSize
    self.mSize_property.mObserverExplorer = nil
    self.mSize_property.mValueExplorer = nil
  //--- Atomic property: mHorizontalAlignment
    self.mHorizontalAlignment_property.mObserverExplorer = nil
    self.mHorizontalAlignment_property.mValueExplorer = nil
  //--- Atomic property: mVerticalAlignment
    self.mVerticalAlignment_property.mObserverExplorer = nil
    self.mVerticalAlignment_property.mValueExplorer = nil
  //--- Atomic property: mX
    self.mX_property.mObserverExplorer = nil
    self.mX_property.mValueExplorer = nil
  //--- Atomic property: mY
    self.mY_property.mObserverExplorer = nil
    self.mY_property.mValueExplorer = nil
  //--- Atomic property: mComment
    self.mComment_property.mObserverExplorer = nil
    self.mComment_property.mValueExplorer = nil
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
  //--- Atomic property: mColor
    self.mColor_property.storeIn (dictionary: ioDictionary, forKey: "mColor")
  //--- Atomic property: mSize
    self.mSize_property.storeIn (dictionary: ioDictionary, forKey: "mSize")
  //--- Atomic property: mHorizontalAlignment
    self.mHorizontalAlignment_property.storeIn (dictionary: ioDictionary, forKey: "mHorizontalAlignment")
  //--- Atomic property: mVerticalAlignment
    self.mVerticalAlignment_property.storeIn (dictionary: ioDictionary, forKey: "mVerticalAlignment")
  //--- Atomic property: mX
    self.mX_property.storeIn (dictionary: ioDictionary, forKey: "mX")
  //--- Atomic property: mY
    self.mY_property.storeIn (dictionary: ioDictionary, forKey: "mY")
  //--- Atomic property: mComment
    self.mComment_property.storeIn (dictionary: ioDictionary, forKey: "mComment")
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
  //--- Atomic property: mColor
    self.mColor_property.readFrom (dictionary: inDictionary, forKey: "mColor")
  //--- Atomic property: mSize
    self.mSize_property.readFrom (dictionary: inDictionary, forKey: "mSize")
  //--- Atomic property: mHorizontalAlignment
    self.mHorizontalAlignment_property.readFrom (dictionary: inDictionary, forKey: "mHorizontalAlignment")
  //--- Atomic property: mVerticalAlignment
    self.mVerticalAlignment_property.readFrom (dictionary: inDictionary, forKey: "mVerticalAlignment")
  //--- Atomic property: mX
    self.mX_property.readFrom (dictionary: inDictionary, forKey: "mX")
  //--- Atomic property: mY
    self.mY_property.readFrom (dictionary: inDictionary, forKey: "mY")
  //--- Atomic property: mComment
    self.mComment_property.readFrom (dictionary: inDictionary, forKey: "mComment")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mColor\n"
    ioString += "mSize\n"
    ioString += "mHorizontalAlignment\n"
    ioString += "mVerticalAlignment\n"
    ioString += "mX\n"
    ioString += "mY\n"
    ioString += "mComment\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mColor.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mSize.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mHorizontalAlignment.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mVerticalAlignment.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mX.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mY.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mComment.appendPropertyValueTo (&ioData)
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
      if let range = inDictionary ["mColor"], let value = NSColor.unarchiveFromDataRange (inData, range) {
        self.mColor = value
      }
      if let range = inDictionary ["mSize"], let value = Double.unarchiveFromDataRange (inData, range) {
        self.mSize = value
      }
      if let range = inDictionary ["mHorizontalAlignment"], let value = HorizontalAlignment.unarchiveFromDataRange (inData, range) {
        self.mHorizontalAlignment = value
      }
      if let range = inDictionary ["mVerticalAlignment"], let value = VerticalAlignment.unarchiveFromDataRange (inData, range) {
        self.mVerticalAlignment = value
      }
      if let range = inDictionary ["mX"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mX = value
      }
      if let range = inDictionary ["mY"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.mY = value
      }
      if let range = inDictionary ["mComment"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mComment = value
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

 //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
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

  override func move (knob inKnobIndex: Int,
                      proposedDx inDx: Int,
                      proposedDy inDy: Int,
                      unalignedMouseLocationX inUnlignedMouseLocationX : Int,
                      unalignedMouseLocationY inUnlignedMouseLocationY : Int,
                      alignedMouseLocationX inAlignedMouseLocationX : Int,
                      alignedMouseLocationY inAlignedMouseLocationY : Int,
                      shift inShift : Bool) {
    self.mX += inDx
    self.mY += inDy
  }

  //····················································································································
  //  SNAP TO GRID
  //····················································································································

  override func canSnapToGrid (_ inGrid : Int) -> Bool {
    var result = (self.mX % inGrid) != 0
    if !result {
      result = (self.mY % inGrid) != 0
    }
    return result
  }

  //····················································································································

  override func snapToGrid (_ inGrid : Int) {
    self.mX = ((self.mX + inGrid / 2) / inGrid) * inGrid
    self.mY = ((self.mY + inGrid / 2) / inGrid) * inGrid
   }

  //····················································································································

  override func alignmentPoints () -> ObjcCanariPointSet {
    let result = ObjcCanariPointSet ()
    result.insert (CanariPoint (x: self.mX, y: self.mY))
    return result
  }

  //····················································································································

//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------

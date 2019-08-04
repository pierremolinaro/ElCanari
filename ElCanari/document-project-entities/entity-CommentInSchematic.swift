//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CommentInSchematic_mColor : class {
  var mColor : NSColor { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CommentInSchematic_mX : class {
  var mX : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CommentInSchematic_mY : class {
  var mY : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CommentInSchematic_mComment : class {
  var mComment : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CommentInSchematic_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CommentInSchematic_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: CommentInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class CommentInSchematic : SchematicObject,
         CommentInSchematic_mColor,
         CommentInSchematic_mX,
         CommentInSchematic_mY,
         CommentInSchematic_mComment,
         CommentInSchematic_objectDisplay,
         CommentInSchematic_selectionDisplay {

  //····················································································································
  //   Atomic property: mColor
  //····················································································································

  let mColor_property = EBStoredProperty_NSColor (defaultValue: NSColor.black)

  //····················································································································

  var mColor : NSColor {
    get { return self.mColor_property.propval }
    set { self.mColor_property.setProp (newValue) }
  }

  //····················································································································

  var mColor_property_selection : EBSelection <NSColor> { return self.mColor_property.prop }

  //····················································································································
  //   Atomic property: mX
  //····················································································································

  let mX_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mX : Int {
    get { return self.mX_property.propval }
    set { self.mX_property.setProp (newValue) }
  }

  //····················································································································

  var mX_property_selection : EBSelection <Int> { return self.mX_property.prop }

  //····················································································································
  //   Atomic property: mY
  //····················································································································

  let mY_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mY : Int {
    get { return self.mY_property.propval }
    set { self.mY_property.setProp (newValue) }
  }

  //····················································································································

  var mY_property_selection : EBSelection <Int> { return self.mY_property.prop }

  //····················································································································
  //   Atomic property: mComment
  //····················································································································

  let mComment_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mComment : String {
    get { return self.mComment_property.propval }
    set { self.mComment_property.setProp (newValue) }
  }

  //····················································································································

  var mComment_property_selection : EBSelection <String> { return self.mComment_property.prop }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
  //--- Atomic property: mColor
    self.mColor_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mX
    self.mX_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mY
    self.mY_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mComment
    self.mComment_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mComment_property_selection.kind ()
        kind &= unwSelf.mColor_property_selection.kind ()
        kind &= unwSelf.mX_property_selection.kind ()
        kind &= unwSelf.mY_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mComment_property_selection, unwSelf.mColor_property_selection, unwSelf.mX_property_selection, unwSelf.mY_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_CommentInSchematic_objectDisplay (v0, v1, v2, v3))
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
    self.mX_property.addEBObserver (self.objectDisplay_property)
    self.mY_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mComment_property_selection.kind ()
        kind &= unwSelf.mColor_property_selection.kind ()
        kind &= unwSelf.mX_property_selection.kind ()
        kind &= unwSelf.mY_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.mComment_property_selection, unwSelf.mColor_property_selection, unwSelf.mX_property_selection, unwSelf.mY_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_CommentInSchematic_selectionDisplay (v0, v1, v2, v3))
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
    self.mX_property.addEBObserver (self.selectionDisplay_property)
    self.mY_property.addEBObserver (self.selectionDisplay_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mComment_property.removeEBObserver (self.objectDisplay_property)
    self.mColor_property.removeEBObserver (self.objectDisplay_property)
    self.mX_property.removeEBObserver (self.objectDisplay_property)
    self.mY_property.removeEBObserver (self.objectDisplay_property)
    self.mComment_property.removeEBObserver (self.selectionDisplay_property)
    self.mColor_property.removeEBObserver (self.selectionDisplay_property)
    self.mX_property.removeEBObserver (self.selectionDisplay_property)
    self.mY_property.removeEBObserver (self.selectionDisplay_property)
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
    self.mColor_property.storeIn (dictionary: ioDictionary, forKey:"mColor")
  //--- Atomic property: mX
    self.mX_property.storeIn (dictionary: ioDictionary, forKey:"mX")
  //--- Atomic property: mY
    self.mY_property.storeIn (dictionary: ioDictionary, forKey:"mY")
  //--- Atomic property: mComment
    self.mComment_property.storeIn (dictionary: ioDictionary, forKey:"mComment")
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
  //--- Atomic property: mColor
    self.mColor_property.readFrom (dictionary: inDictionary, forKey:"mColor")
  //--- Atomic property: mX
    self.mX_property.readFrom (dictionary: inDictionary, forKey:"mX")
  //--- Atomic property: mY
    self.mY_property.readFrom (dictionary: inDictionary, forKey:"mY")
  //--- Atomic property: mComment
    self.mComment_property.readFrom (dictionary: inDictionary, forKey:"mComment")
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


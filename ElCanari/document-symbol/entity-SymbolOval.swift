//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolOval_y : AnyObject {
  var y : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolOval_width : AnyObject {
  var width : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolOval_height : AnyObject {
  var height : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolOval_x : AnyObject {
  var x : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolOval_strokeBezierPath : AnyObject {
  var strokeBezierPath : NSBezierPath? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolOval_objectDisplay : AnyObject {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolOval_selectionDisplay : AnyObject {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolOval_issues : AnyObject {
  var issues : CanariIssueArray? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: SymbolOval
//----------------------------------------------------------------------------------------------------------------------

final class SymbolOval : SymbolObject,
         SymbolOval_y,
         SymbolOval_width,
         SymbolOval_height,
         SymbolOval_x,
         SymbolOval_strokeBezierPath,
         SymbolOval_objectDisplay,
         SymbolOval_selectionDisplay,
         SymbolOval_issues {

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
  //   Transient property: strokeBezierPath
  //····················································································································

  final let strokeBezierPath_property = EBTransientProperty_NSBezierPath ()

  //····················································································································

  final var strokeBezierPath_property_selection : EBSelection <NSBezierPath> {
    return self.strokeBezierPath_property.selection
  }

  //····················································································································

  final var strokeBezierPath : NSBezierPath? {
    switch self.strokeBezierPath_property.selection {
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
  //--- Atomic property: strokeBezierPath
    self.strokeBezierPath_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.x_property.selection, unwSelf.y_property.selection, unwSelf.width_property.selection, unwSelf.height_property.selection) {
        case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
          return .single (transient_SymbolOval_strokeBezierPath (v0, v1, v2, v3))
        case (.multiple, .multiple, .multiple, .multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.x_property.addEBObserver (self.strokeBezierPath_property)
    self.y_property.addEBObserver (self.strokeBezierPath_property)
    self.width_property.addEBObserver (self.strokeBezierPath_property)
    self.height_property.addEBObserver (self.strokeBezierPath_property)
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.x_property.selection, unwSelf.y_property.selection, unwSelf.width_property.selection, unwSelf.height_property.selection, preferences_symbolColor_property.selection, preferences_symbolDrawingWidthMultipliedByTen_property.selection) {
        case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5)) :
          return .single (transient_SymbolOval_objectDisplay (v0, v1, v2, v3, v4, v5))
        case (.multiple, .multiple, .multiple, .multiple, .multiple, .multiple) :
          return .multiple
        default :
          return .empty
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
    preferences_symbolDrawingWidthMultipliedByTen_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.x_property.selection, unwSelf.y_property.selection, unwSelf.width_property.selection, unwSelf.height_property.selection) {
        case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
          return .single (transient_SymbolOval_selectionDisplay (v0, v1, v2, v3))
        case (.multiple, .multiple, .multiple, .multiple) :
          return .multiple
        default :
          return .empty
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
        switch (unwSelf.x_property.selection, unwSelf.y_property.selection, unwSelf.width_property.selection, unwSelf.height_property.selection) {
        case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
          return .single (transient_SymbolOval_issues (v0, v1, v2, v3))
        case (.multiple, .multiple, .multiple, .multiple) :
          return .multiple
        default :
          return .empty
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
    // self.x_property.removeEBObserver (self.strokeBezierPath_property)
    // self.y_property.removeEBObserver (self.strokeBezierPath_property)
    // self.width_property.removeEBObserver (self.strokeBezierPath_property)
    // self.height_property.removeEBObserver (self.strokeBezierPath_property)
    // self.x_property.removeEBObserver (self.objectDisplay_property)
    // self.y_property.removeEBObserver (self.objectDisplay_property)
    // self.width_property.removeEBObserver (self.objectDisplay_property)
    // self.height_property.removeEBObserver (self.objectDisplay_property)
    // preferences_symbolColor_property.removeEBObserver (self.objectDisplay_property)
    // preferences_symbolDrawingWidthMultipliedByTen_property.removeEBObserver (self.objectDisplay_property)
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

}

//----------------------------------------------------------------------------------------------------------------------


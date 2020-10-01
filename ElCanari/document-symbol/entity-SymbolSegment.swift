//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSegment_y1 : class {
  var y1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSegment_x2 : class {
  var x2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSegment_y2 : class {
  var y2 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSegment_x1 : class {
  var x1 : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSegment_strokeBezierPath : class {
  var strokeBezierPath : NSBezierPath? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSegment_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSegment_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol SymbolSegment_issues : class {
  var issues : CanariIssueArray? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: SymbolSegment
//----------------------------------------------------------------------------------------------------------------------

class SymbolSegment : SymbolObject,
         SymbolSegment_y1,
         SymbolSegment_x2,
         SymbolSegment_y2,
         SymbolSegment_x1,
         SymbolSegment_strokeBezierPath,
         SymbolSegment_objectDisplay,
         SymbolSegment_selectionDisplay,
         SymbolSegment_issues {

  //····················································································································
  //   Atomic property: y1
  //····················································································································

  // final let y1_property = EBStoredProperty_Int (defaultValue: 0)

  final let y1_property : EBStoredProperty_Int

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

  // final let x2_property = EBStoredProperty_Int (defaultValue: 685800)

  final let x2_property : EBStoredProperty_Int

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

  // final let y2_property = EBStoredProperty_Int (defaultValue: 685800)

  final let y2_property : EBStoredProperty_Int

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
  //   Atomic property: x1
  //····················································································································

  // final let x1_property = EBStoredProperty_Int (defaultValue: 0)

  final let x1_property : EBStoredProperty_Int

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

  final let strokeBezierPath_property = EBTransientProperty_NSBezierPath ()

  //····················································································································

  final var strokeBezierPath_property_selection : EBSelection <NSBezierPath> {
    return self.strokeBezierPath_property.prop
  }

  //····················································································································

  final var strokeBezierPath : NSBezierPath? {
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
    self.y1_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.x2_property = EBStoredProperty_Int (defaultValue: 685800, undoManager: ebUndoManager)
    self.y2_property = EBStoredProperty_Int (defaultValue: 685800, undoManager: ebUndoManager)
    self.x1_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    super.init (ebUndoManager)
    self.configureObject ()
  }
  
  //····················································································································

  private final func configureObject () {
  //--- Atomic property: strokeBezierPath
    // self.strokeBezierPath_property.configure (self.x1_property, self.y1_property, self.x2_property, self.y2_property, transient_SymbolSegment_strokeBezierPath)
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
            return .single (transient_SymbolSegment_strokeBezierPath (v0, v1, v2, v3))
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
    // self.objectDisplay_property.configure (self.x1_property, self.y1_property, self.x2_property, self.y2_property, g_Preferences?.symbolColor_property, g_Preferences?.symbolDrawingWidthMultipliedByTen_property, transient_SymbolSegment_objectDisplay)
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x1_property_selection.kind ()
        kind &= unwSelf.y1_property_selection.kind ()
        kind &= unwSelf.x2_property_selection.kind ()
        kind &= unwSelf.y2_property_selection.kind ()
        kind &= g_Preferences!.symbolColor_property_selection.kind ()
        kind &= g_Preferences!.symbolDrawingWidthMultipliedByTen_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.x1_property_selection, unwSelf.y1_property_selection, unwSelf.x2_property_selection, unwSelf.y2_property_selection, g_Preferences!.symbolColor_property_selection, g_Preferences!.symbolDrawingWidthMultipliedByTen_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4), .single (let v5)) :
            return .single (transient_SymbolSegment_objectDisplay (v0, v1, v2, v3, v4, v5))
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
    g_Preferences?.symbolColor_property.addEBObserver (self.objectDisplay_property)
    g_Preferences?.symbolDrawingWidthMultipliedByTen_property.addEBObserver (self.objectDisplay_property)
  //--- Atomic property: selectionDisplay
    // self.selectionDisplay_property.configure (self.x1_property, self.y1_property, self.x2_property, self.y2_property, transient_SymbolSegment_selectionDisplay)
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
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
            return .single (transient_SymbolSegment_selectionDisplay (v0, v1, v2, v3))
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
  //--- Atomic property: issues
    // self.issues_property.configure (self.x1_property, self.y1_property, self.x2_property, self.y2_property, transient_SymbolSegment_issues)
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
            return .single (transient_SymbolSegment_issues (v0, v1, v2, v3))
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
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
    self.x1_property.setSignatureObserver (observer: self)
    self.x2_property.setSignatureObserver (observer: self)
    self.y1_property.setSignatureObserver (observer: self)
    self.y2_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.x1_property.removeEBObserver (self.strokeBezierPath_property)
    // self.y1_property.removeEBObserver (self.strokeBezierPath_property)
    // self.x2_property.removeEBObserver (self.strokeBezierPath_property)
    // self.y2_property.removeEBObserver (self.strokeBezierPath_property)
    // self.x1_property.removeEBObserver (self.objectDisplay_property)
    // self.y1_property.removeEBObserver (self.objectDisplay_property)
    // self.x2_property.removeEBObserver (self.objectDisplay_property)
    // self.y2_property.removeEBObserver (self.objectDisplay_property)
    // g_Preferences?.symbolColor_property.removeEBObserver (self.objectDisplay_property)
    // g_Preferences?.symbolDrawingWidthMultipliedByTen_property.removeEBObserver (self.objectDisplay_property)
    // self.x1_property.removeEBObserver (self.selectionDisplay_property)
    // self.y1_property.removeEBObserver (self.selectionDisplay_property)
    // self.x2_property.removeEBObserver (self.selectionDisplay_property)
    // self.y2_property.removeEBObserver (self.selectionDisplay_property)
    // self.x1_property.removeEBObserver (self.issues_property)
    // self.y1_property.removeEBObserver (self.issues_property)
    // self.x2_property.removeEBObserver (self.issues_property)
    // self.y2_property.removeEBObserver (self.issues_property)
  //--- Unregister properties for handling signature
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
    self.x1.appendPropertyValueTo (&ioData)
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
      if let range = inDictionary ["y1"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.y1 = value
      }
      if let range = inDictionary ["x2"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.x2 = value
      }
      if let range = inDictionary ["y2"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.y2 = value
      }
      if let range = inDictionary ["x1"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.x1 = value
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
    crc.accumulateUInt32 (self.x1_property.signature ())
    crc.accumulateUInt32 (self.x2_property.signature ())
    crc.accumulateUInt32 (self.y1_property.signature ())
    crc.accumulateUInt32 (self.y2_property.signature ())
    return crc
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


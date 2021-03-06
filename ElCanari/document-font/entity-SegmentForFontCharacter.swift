//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacter_x1 : AnyObject {
  var x1 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacter_y1 : AnyObject {
  var y1 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacter_x2 : AnyObject {
  var x2 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacter_y2 : AnyObject {
  var y2 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacter_selectionDisplay : AnyObject {
  var selectionDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacter_objectDisplay : AnyObject {
  var objectDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SegmentForFontCharacter
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class SegmentForFontCharacter : EBGraphicManagedObject,
         SegmentForFontCharacter_x1,
         SegmentForFontCharacter_y1,
         SegmentForFontCharacter_x2,
         SegmentForFontCharacter_y2,
         SegmentForFontCharacter_selectionDisplay,
         SegmentForFontCharacter_objectDisplay {

  //····················································································································
  //   Atomic property: x1
  //····················································································································

  final let x1_property : EBStoredProperty_Int

  //····················································································································

  final func reset_x1_toDefaultValue () {
    self.x1 = 2
  }

  //····················································································································

  final var x1 : Int {
    get { return self.x1_property.propval }
    set { self.x1_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: y1
  //····················································································································

  final let y1_property : EBStoredProperty_Int

  //····················································································································

  final func reset_y1_toDefaultValue () {
    self.y1 = 1
  }

  //····················································································································

  final var y1 : Int {
    get { return self.y1_property.propval }
    set { self.y1_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: x2
  //····················································································································

  final let x2_property : EBStoredProperty_Int

  //····················································································································

  final func reset_x2_toDefaultValue () {
    self.x2 = 9
  }

  //····················································································································

  final var x2 : Int {
    get { return self.x2_property.propval }
    set { self.x2_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: y2
  //····················································································································

  final let y2_property : EBStoredProperty_Int

  //····················································································································

  final func reset_y2_toDefaultValue () {
    self.y2 = 8
  }

  //····················································································································

  final var y2 : Int {
    get { return self.y2_property.propval }
    set { self.y2_property.setProp (newValue) }
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    self.x1_property = EBStoredProperty_Int (defaultValue: 2, undoManager: ebUndoManager)
    self.y1_property = EBStoredProperty_Int (defaultValue: 1, undoManager: ebUndoManager)
    self.x2_property = EBStoredProperty_Int (defaultValue: 9, undoManager: ebUndoManager)
    self.y2_property = EBStoredProperty_Int (defaultValue: 8, undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- Atomic property: selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.x1_property.selection, unwSelf.y1_property.selection, unwSelf.x2_property.selection, unwSelf.y2_property.selection) {
        case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
          return .single (transient_SegmentForFontCharacter_selectionDisplay (v0, v1, v2, v3))
        case (.multiple, .multiple, .multiple, .multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.x1_property.addEBObserver (self.selectionDisplay_property)
    self.y1_property.addEBObserver (self.selectionDisplay_property)
    self.x2_property.addEBObserver (self.selectionDisplay_property)
    self.y2_property.addEBObserver (self.selectionDisplay_property)
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.x1_property.selection, unwSelf.y1_property.selection, unwSelf.x2_property.selection, unwSelf.y2_property.selection) {
        case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
          return .single (transient_SegmentForFontCharacter_objectDisplay (v0, v1, v2, v3))
        case (.multiple, .multiple, .multiple, .multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.x1_property.addEBObserver (self.objectDisplay_property)
    self.y1_property.addEBObserver (self.objectDisplay_property)
    self.x2_property.addEBObserver (self.objectDisplay_property)
    self.y2_property.addEBObserver (self.objectDisplay_property)
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
    // self.x1_property.removeEBObserver (self.selectionDisplay_property)
    // self.y1_property.removeEBObserver (self.selectionDisplay_property)
    // self.x2_property.removeEBObserver (self.selectionDisplay_property)
    // self.y2_property.removeEBObserver (self.selectionDisplay_property)
    // self.x1_property.removeEBObserver (self.objectDisplay_property)
    // self.y1_property.removeEBObserver (self.objectDisplay_property)
    // self.x2_property.removeEBObserver (self.objectDisplay_property)
    // self.y2_property.removeEBObserver (self.objectDisplay_property)
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
      "x1",
      idx: self.x1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x1_property.mObserverExplorer,
      valueExplorer: &self.x1_property.mValueExplorer
    )
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
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "selectionDisplay",
      idx: self.selectionDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.selectionDisplay_property.mObserverExplorer,
      valueExplorer: &self.selectionDisplay_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "objectDisplay",
      idx: self.objectDisplay_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.objectDisplay_property.mObserverExplorer,
      valueExplorer: &self.objectDisplay_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: x1
    self.x1_property.mObserverExplorer = nil
    self.x1_property.mValueExplorer = nil
  //--- Atomic property: y1
    self.y1_property.mObserverExplorer = nil
    self.y1_property.mValueExplorer = nil
  //--- Atomic property: x2
    self.x2_property.mObserverExplorer = nil
    self.x2_property.mValueExplorer = nil
  //--- Atomic property: y2
    self.y2_property.mObserverExplorer = nil
    self.y2_property.mValueExplorer = nil
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
  //--- Atomic property: x1
    self.x1_property.storeIn (dictionary: ioDictionary, forKey: "x1")
  //--- Atomic property: y1
    self.y1_property.storeIn (dictionary: ioDictionary, forKey: "y1")
  //--- Atomic property: x2
    self.x2_property.storeIn (dictionary: ioDictionary, forKey: "x2")
  //--- Atomic property: y2
    self.y2_property.storeIn (dictionary: ioDictionary, forKey: "y2")
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
  //--- Atomic property: x1
    self.x1_property.readFrom (dictionary: inDictionary, forKey: "x1")
  //--- Atomic property: y1
    self.y1_property.readFrom (dictionary: inDictionary, forKey: "y1")
  //--- Atomic property: x2
    self.x2_property.readFrom (dictionary: inDictionary, forKey: "x2")
  //--- Atomic property: y2
    self.y2_property.readFrom (dictionary: inDictionary, forKey: "y2")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "x1\n"
    ioString += "y1\n"
    ioString += "x2\n"
    ioString += "y2\n"
  //--- To one relationships
  //--- To many relationships
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.x1.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.y1.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.x2.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.y2.appendPropertyValueTo (&ioData)
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
      if let range = inDictionary ["x1"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.x1 = value
      }
      if let range = inDictionary ["y1"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.y1 = value
      }
      if let range = inDictionary ["x2"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.x2 = value
      }
      if let range = inDictionary ["y2"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.y2 = value
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


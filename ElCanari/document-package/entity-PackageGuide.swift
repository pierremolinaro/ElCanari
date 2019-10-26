//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol PackageGuide_y1 : class {
  var y1 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol PackageGuide_x2 : class {
  var x2 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol PackageGuide_y2 : class {
  var y2 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol PackageGuide_x1Unit : class {
  var x1Unit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol PackageGuide_y1Unit : class {
  var y1Unit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol PackageGuide_x2Unit : class {
  var x2Unit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol PackageGuide_y2Unit : class {
  var y2Unit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol PackageGuide_x1 : class {
  var x1 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol PackageGuide_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol PackageGuide_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol PackageGuide_issues : class {
  var issues : CanariIssueArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: PackageGuide
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class PackageGuide : PackageObject,
         PackageGuide_y1,
         PackageGuide_x2,
         PackageGuide_y2,
         PackageGuide_x1Unit,
         PackageGuide_y1Unit,
         PackageGuide_x2Unit,
         PackageGuide_y2Unit,
         PackageGuide_x1,
         PackageGuide_objectDisplay,
         PackageGuide_selectionDisplay,
         PackageGuide_issues {

  //····················································································································
  //   Atomic property: y1
  //····················································································································

  let y1_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var y1 : Int {
    get { return self.y1_property.propval }
    set { self.y1_property.setProp (newValue) }
  }

  //····················································································································

  var y1_property_selection : EBSelection <Int> { return self.y1_property.prop }

  //····················································································································
  //   Atomic property: x2
  //····················································································································

  let x2_property = EBStoredProperty_Int (defaultValue: 685800)

  //····················································································································

  var x2 : Int {
    get { return self.x2_property.propval }
    set { self.x2_property.setProp (newValue) }
  }

  //····················································································································

  var x2_property_selection : EBSelection <Int> { return self.x2_property.prop }

  //····················································································································
  //   Atomic property: y2
  //····················································································································

  let y2_property = EBStoredProperty_Int (defaultValue: 685800)

  //····················································································································

  var y2 : Int {
    get { return self.y2_property.propval }
    set { self.y2_property.setProp (newValue) }
  }

  //····················································································································

  var y2_property_selection : EBSelection <Int> { return self.y2_property.prop }

  //····················································································································
  //   Atomic property: x1Unit
  //····················································································································

  let x1Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  var x1Unit : Int {
    get { return self.x1Unit_property.propval }
    set { self.x1Unit_property.setProp (newValue) }
  }

  //····················································································································

  var x1Unit_property_selection : EBSelection <Int> { return self.x1Unit_property.prop }

  //····················································································································
  //   Atomic property: y1Unit
  //····················································································································

  let y1Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  var y1Unit : Int {
    get { return self.y1Unit_property.propval }
    set { self.y1Unit_property.setProp (newValue) }
  }

  //····················································································································

  var y1Unit_property_selection : EBSelection <Int> { return self.y1Unit_property.prop }

  //····················································································································
  //   Atomic property: x2Unit
  //····················································································································

  let x2Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  var x2Unit : Int {
    get { return self.x2Unit_property.propval }
    set { self.x2Unit_property.setProp (newValue) }
  }

  //····················································································································

  var x2Unit_property_selection : EBSelection <Int> { return self.x2Unit_property.prop }

  //····················································································································
  //   Atomic property: y2Unit
  //····················································································································

  let y2Unit_property = EBStoredProperty_Int (defaultValue: 2286)

  //····················································································································

  var y2Unit : Int {
    get { return self.y2Unit_property.propval }
    set { self.y2Unit_property.setProp (newValue) }
  }

  //····················································································································

  var y2Unit_property_selection : EBSelection <Int> { return self.y2Unit_property.prop }

  //····················································································································
  //   Atomic property: x1
  //····················································································································

  let x1_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var x1 : Int {
    get { return self.x1_property.propval }
    set { self.x1_property.setProp (newValue) }
  }

  //····················································································································

  var x1_property_selection : EBSelection <Int> { return self.x1_property.prop }

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
  //--- Atomic property: x1
    self.x1_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: objectDisplay
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
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
            return .single (transient_PackageGuide_objectDisplay (v0, v1, v2, v3))
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
  //--- Atomic property: selectionDisplay
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
            return .single (transient_PackageGuide_selectionDisplay (v0, v1, v2, v3))
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
            return .single (transient_PackageGuide_issues (v0, v1, v2, v3))
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
    self.x1_property.removeEBObserver (self.objectDisplay_property)
    self.y1_property.removeEBObserver (self.objectDisplay_property)
    self.x2_property.removeEBObserver (self.objectDisplay_property)
    self.y2_property.removeEBObserver (self.objectDisplay_property)
    self.x1_property.removeEBObserver (self.selectionDisplay_property)
    self.y1_property.removeEBObserver (self.selectionDisplay_property)
    self.x2_property.removeEBObserver (self.selectionDisplay_property)
    self.y2_property.removeEBObserver (self.selectionDisplay_property)
    self.x1_property.removeEBObserver (self.issues_property)
    self.y1_property.removeEBObserver (self.issues_property)
    self.x2_property.removeEBObserver (self.issues_property)
    self.y2_property.removeEBObserver (self.issues_property)
  //--- Unregister properties for handling signature
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
      "x1",
      idx: self.x1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x1_property.mObserverExplorer,
      valueExplorer: &self.x1_property.mValueExplorer
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
    self.y1_property.storeIn (dictionary: ioDictionary, forKey:"y1")
  //--- Atomic property: x2
    self.x2_property.storeIn (dictionary: ioDictionary, forKey:"x2")
  //--- Atomic property: y2
    self.y2_property.storeIn (dictionary: ioDictionary, forKey:"y2")
  //--- Atomic property: x1Unit
    self.x1Unit_property.storeIn (dictionary: ioDictionary, forKey:"x1Unit")
  //--- Atomic property: y1Unit
    self.y1Unit_property.storeIn (dictionary: ioDictionary, forKey:"y1Unit")
  //--- Atomic property: x2Unit
    self.x2Unit_property.storeIn (dictionary: ioDictionary, forKey:"x2Unit")
  //--- Atomic property: y2Unit
    self.y2Unit_property.storeIn (dictionary: ioDictionary, forKey:"y2Unit")
  //--- Atomic property: x1
    self.x1_property.storeIn (dictionary: ioDictionary, forKey:"x1")
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
    self.y1_property.readFrom (dictionary: inDictionary, forKey:"y1")
  //--- Atomic property: x2
    self.x2_property.readFrom (dictionary: inDictionary, forKey:"x2")
  //--- Atomic property: y2
    self.y2_property.readFrom (dictionary: inDictionary, forKey:"y2")
  //--- Atomic property: x1Unit
    self.x1Unit_property.readFrom (dictionary: inDictionary, forKey:"x1Unit")
  //--- Atomic property: y1Unit
    self.y1Unit_property.readFrom (dictionary: inDictionary, forKey:"y1Unit")
  //--- Atomic property: x2Unit
    self.x2Unit_property.readFrom (dictionary: inDictionary, forKey:"x2Unit")
  //--- Atomic property: y2Unit
    self.y2Unit_property.readFrom (dictionary: inDictionary, forKey:"y2Unit")
  //--- Atomic property: x1
    self.x1_property.readFrom (dictionary: inDictionary, forKey:"x1")
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


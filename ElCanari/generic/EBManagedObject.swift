//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

func string (_ inManagedObject : EBManagedObject?) -> String {
  if let object = inManagedObject {
    return explorerIndexString (object.ebObjectIndex)
  }else{
    return "nil"
  }
}

//----------------------------------------------------------------------------------------------------------------------

func string (_ inManagedObjects : [EBManagedObject]) -> String {
  var s = "["
  var first = true
  for object in inManagedObjects {
    if first {
      first = false
    }else{
      s += ", "
    }
    s += string (object)
  }
  s += "]"
  return s
}

//----------------------------------------------------------------------------------------------------------------------

protocol EBManagedObject_alloc_index_protocol : class {
  var ebObjectIndex : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------
//  EBManagedObject
//----------------------------------------------------------------------------------------------------------------------

class EBManagedObject : EBObject, EBSignatureObserverProtocol, EBManagedObject_alloc_index_protocol {
  private weak var mEBUndoManager : EBUndoManager? = nil // SOULD BE WEAK
  var savingIndex = 0

  var mExplorerWindow : NSWindow? = nil

  //····················································································································
  //  init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    mEBUndoManager = ebUndoManager
    super.init ()
  }

  //····················································································································
  //  Setup
  //····················································································································

  func setUpWithDictionary (_ inDictionary : NSDictionary,
                            managedObjectArray : inout [EBManagedObject]) {
    self.setUpAtomicPropertiesWithDictionary (inDictionary)
  }

  //····················································································································

  func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
  }

  //····················································································································

  func setUpWithTextDictionary (_ inDictionary : [String : NSRange],
                                _ inObjectArray : [EBManagedObject],
                                _ inData : Data) {
  }

  //····················································································································
  //  Save
  //····················································································································

  func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    ioDictionary.setValue (self.className.pathExtension, forKey: ENTITY_KEY)
  }

  //····················································································································
  //  Getters
  //····················································································································

  final var ebUndoManager : EBUndoManager? {
    return self.mEBUndoManager
  }

  //····················································································································

  var ebObjectIndex_selection : EBSelection <Int> { return .single (self.ebObjectIndex) }

  //····················································································································
  //   showExplorerWindow
  //····················································································································

  final func showExplorerWindow () {
    if self.mExplorerWindow == nil {
      self.createAndPopulateObjectExplorerWindow ()
    }
    self.mExplorerWindow?.makeKeyAndOrderFront (nil)
  }

  //····················································································································
  //  reachableObjects
  //····················································································································

  func removeRecursivelyAllRelationsShips () {
  //--- Find all reachable entities
    var reachableObjectSet = Set <EBManagedObject> ()
    reachableObjectSet.insert (self)
    var objectsToExploreArray = [EBManagedObject] ()
    objectsToExploreArray.append (self)
    while let objectToExplore = objectsToExploreArray.last {
      objectsToExploreArray.removeLast ()
      var accessible = [EBManagedObject] ()
      objectToExplore.accessibleObjects (objects: &accessible)
      for managedObject in accessible {
        if !reachableObjectSet.contains (managedObject) {
          reachableObjectSet.insert (managedObject)
          objectsToExploreArray.append (managedObject)
        }
      }
    }
  //--- Remove relationships
    for object in reachableObjectSet {
      object.removeAllObservers ()
      object.cleanUpToOneRelationships ()
      object.cleanUpToManyRelationships ()
    }
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  internal func accessibleObjects (objects : inout [EBManagedObject]) {
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  internal func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
  }

  //····················································································································
  //   cleanUpRelationshipsAndRemoveAllObservers
  //····················································································································

  final func cleanUpRelationshipsAndRemoveAllObservers () {
    self.clearObjectExplorer ()
    self.removeAllObservers ()
    self.cleanUpToManyRelationships ()
    self.cleanUpToOneRelationships ()
  }

  //····················································································································
  //   cleanUpToManyRelationships
  //····················································································································

  internal func cleanUpToManyRelationships () {
  }

  //····················································································································
  //   cleanUpToOneRelationships
  //····················································································································

  internal func cleanUpToOneRelationships () {
  }

  //····················································································································
  //   removeAllObservers
  //····················································································································

  internal func removeAllObservers () {
  }

  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  private var mSignatureObserverExplorer : NSPopUpButton? = nil
  private var mSignatureValueExplorer : NSTextField? = nil {
    didSet {
      if let s = self.mSignature {
        self.mSignatureValueExplorer?.stringValue = String (format: "%04X:%04X", s >> 16, s & 0xFFFF)
      }else{
        self.mSignatureValueExplorer?.stringValue = "nil"
      }
    }
  }

  func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    createEntryForPropertyNamed (
      "Signature",
      idx: self.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mSignatureObserverExplorer,
      valueExplorer: &self.mSignatureValueExplorer
    )
  }

  //····················································································································
  //   createAndPopulateObjectExplorerWindow
  //····················································································································

  func createAndPopulateObjectExplorerWindow () {
  //-------------------------------------------------- Create Window
    let r = NSRect (x: 20.0, y: 20.0, width: 10.0, height: 10.0)
    self.mExplorerWindow = NSWindow (
      contentRect: r,
      styleMask: [.titled, .closable],
      backing: .buffered,
      defer: true,
      screen: nil
    )
  //-------------------------------------------------- Adding properties
    let view = NSView (frame: r)
    var y : CGFloat = 0.0
    populateExplorerWindow (&y, view: view)
  //-------------------------------------------------- Finish Window construction
  //--- Resize View
    let viewFrame = NSRect (x: 0.0, y: 0.0, width: EXPLORER_ROW_WIDTH, height: y)
    view.frame = viewFrame
  //--- Set content size
    self.mExplorerWindow?.setContentSize (NSSize (width: EXPLORER_ROW_WIDTH + 16.0, height: fmin (600.0, y)))
  //--- Set close button as 'remove window' button
    let closeButton : NSButton? = self.mExplorerWindow?.standardWindowButton (.closeButton)
    closeButton?.target = self
    closeButton?.action = #selector (EBManagedObject.deleteWindowAction(_:))
  //--- Set window title
    let windowTitle = explorerIndexString (self.ebObjectIndex) + " " + className
    self.mExplorerWindow!.title = windowTitle
  //--- Add Scroll view
    let frame = NSRect (x: 0.0, y: 0.0, width: EXPLORER_ROW_WIDTH, height: y)
    let sw = NSScrollView (frame: frame)
    sw.hasVerticalScroller = true
    sw.documentView = view
    mExplorerWindow!.contentView = sw
  }

  //····················································································································
  //   showObjectWindowFromExplorerButton
  //····················································································································

  @objc func showObjectWindowFromExplorerButton (_ : Any) {
    self.showExplorerWindow ()
  }

  //····················································································································
  //   deleteWindowAction
  //····················································································································

  @objc func deleteWindowAction (_ : Any) {
    self.clearObjectExplorer ()
  }

  //····················································································································
  //   clearObjectExplorer
  //····················································································································

  func clearObjectExplorer () {
    if let explorerWindow = self.mExplorerWindow {
      let closeButton = explorerWindow.standardWindowButton (.closeButton)
      closeButton?.target = nil
      explorerWindow.orderOut (nil)
      self.mExplorerWindow = nil
    }
  }

  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  func appendPropertyNamesTo (_ ioString : inout String) {
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  func appendPropertyValuesTo (_ ioString : inout Data) {
  }

  //····················································································································
  //   store (managedObjectArray:relationshipName:intoDictionary)
  //····················································································································

  final func store (managedObjectArray : [EBManagedObject], // NSArray,
                    relationshipName : String,
                    intoDictionary : NSMutableDictionary) {

    if managedObjectArray.count > 0 {
      let indexArray = NSMutableArray ()
      for managedObject in managedObjectArray {
        indexArray.add (NSNumber (value:managedObject.savingIndex))
      }
      intoDictionary.setObject (indexArray, forKey:relationshipName as NSCopying)
    }
  }

  //····················································································································
  //   store (managedObject:relationshipName:intoDictionary)
  //····················································································································

  final func store (managedObject : EBManagedObject?,
                    relationshipName : String,
                    intoDictionary : NSMutableDictionary) {
    if let unwObject = managedObject {
      intoDictionary.setObject (NSNumber (value: unwObject.savingIndex), forKey: relationshipName as NSCopying)
    }
  }

  //····················································································································
  //   readEntityFromDictionary
  //····················································································································

  final func readEntityFromDictionary (inRelationshipName : String,
                                       inDictionary : NSDictionary,
                                       managedObjectArray : inout [EBManagedObject]) -> EBManagedObject? {
    let opValue : Int? = inDictionary.value (forKey: inRelationshipName) as? Int
    var result : EBManagedObject? = nil
    if let value = opValue {
      result = managedObjectArray [value]
    }
    return result
  }

  //····················································································································
  //   readEntityArrayFromDictionary
  //····················································································································

  final func readEntityArrayFromDictionary (inRelationshipName : String,
                                            inDictionary : NSDictionary,
                                            managedObjectArray : inout [EBManagedObject]) -> [EBManagedObject] {
    let opIndexArray : [Int]? = inDictionary.value (forKey: inRelationshipName) as? [Int]
    var result = [EBManagedObject] ()
    if let indexArray = opIndexArray {
      for number in indexArray {
        let managedObject = managedObjectArray [number]
        result.append (managedObject)
      }
    }
    return result
  }

  //····················································································································
  //   setSignatureObserver
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK

  //····················································································································

  final func setSignatureObserver (observer : EBSignatureObserverProtocol?) {
    self.mSignatureObserver?.clearSignatureCache ()
    self.mSignatureObserver = observer
    observer?.clearSignatureCache ()
  }

  //····················································································································
  //   clearSignatureCache
  //····················································································································

  final func clearSignatureCache () {
    if self.mSignature != nil {
      self.mSignature = nil
      self.mSignatureValueExplorer?.stringValue = "nil"
      self.mSignatureObserver?.clearSignatureCache ()
    }
  }

  //····················································································································
  //   signature
  //····················································································································

  private final var mSignature : UInt32? = nil

  //····················································································································

  final func signature () -> UInt32 {
    if let s = self.mSignature {
      return s
    }else{
      let s = self.computeSignature ()
      self.mSignatureValueExplorer?.stringValue = String (format: "%04X:%04X", s >> 16, s & 0xFFFF)
      self.mSignature = s
      return s
    }
  }

  //····················································································································

  func computeSignature () -> UInt32 {
    return 0
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   updateManagedObjectToOneRelationshipDisplay
//----------------------------------------------------------------------------------------------------------------------

func updateManagedObjectToOneRelationshipDisplay (object : EBManagedObject?, button : NSButton?) {
  if let unwrappedObject = object {
    let stringValue = explorerIndexString (unwrappedObject.ebObjectIndex) + " " + unwrappedObject.className
    button?.isEnabled = true
    button?.title = stringValue
    button?.toolTip = stringValue
    button?.target = object
    button?.action = #selector (EBManagedObject.showObjectWindowFromExplorerButton(_:))
  }else{
    button?.isEnabled = false
    button?.title = "nil"
    button?.toolTip = "nil"
    button?.target = nil
    button?.action = nil
  }
}

//----------------------------------------------------------------------------------------------------------------------
//   updateManagedObjectToManyRelationshipDisplay
//----------------------------------------------------------------------------------------------------------------------

func updateManagedObjectToManyRelationshipDisplay (objectArray : [EBManagedObject], popUpButton : NSPopUpButton?) {
  var title = "No Object" ;
  if objectArray.count == 1 {
    title = "1 Object" ;
  }else if objectArray.count > 1 {
    title = "\(objectArray.count) objects"
  }
  popUpButton?.removeAllItems ()
  popUpButton?.addItem (withTitle: title)
  popUpButton?.isEnabled = objectArray.count > 0
  for object in objectArray {
    let stringValue = explorerIndexString (object.ebObjectIndex) + " " + object.className
    popUpButton?.addItem (withTitle: stringValue)
    let item = popUpButton?.lastItem
    item?.target = object
    item?.action = #selector(EBManagedObject.showObjectWindowFromExplorerButton(_:))
  }
}

//----------------------------------------------------------------------------------------------------------------------

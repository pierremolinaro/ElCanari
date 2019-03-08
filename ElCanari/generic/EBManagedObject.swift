//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  EBManagedObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBManagedObject : EBObject, EBSignatureObserverProtocol {
  private weak var mUndoManager : EBUndoManager? // SOULD BE WEAK
  var savingIndex = 0

  var mExplorerWindow : NSWindow?

  //····················································································································
  //  init
  //····················································································································

  required init (_ undoManager : EBUndoManager?) {
    mUndoManager = undoManager
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
  //  Save
  //····················································································································

  func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    ioDictionary.setValue (self.className.pathExtension, forKey: kEntityKey)
  }

  //····················································································································
  //  Getters
  //····················································································································

  final var undoManager : EBUndoManager? {
    return self.mUndoManager
  }

  //····················································································································
  //   showExplorerWindow
  //····················································································································

  final func showExplorerWindow () {
    if mExplorerWindow == nil {
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

  func accessibleObjects (objects : inout [EBManagedObject]) {
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

  func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
  }

  //····················································································································
  //   createAndPopulateObjectExplorerWindow
  //····················································································································

  func createAndPopulateObjectExplorerWindow () {
  //-------------------------------------------------- Create Window
    let r = NSRect (x:20.0, y:20.0, width:10.0, height:10.0)
    self.mExplorerWindow = NSWindow (
      contentRect:r,
      styleMask:[.titled, .closable],
      backing:.buffered,
      defer:true,
      screen:nil
    )
  //-------------------------------------------------- Adding properties
  //  var nameRect = NSRect (x:0.0, y:0.0, width:300.0, height:22.0)
 //   let font = NSFont.boldSystemFontOfSize (NSFont.smallSystemFontSize ())
    let view = NSView (frame:r)
    var y : CGFloat = 0.0
    populateExplorerWindow (&y, view:view)
  //-------------------------------------------------- Finish Window construction
  //--- Resize View
   // let rr = secondColumn (nameRect)
    let viewFrame = NSRect (x: 0.0, y: 0.0, width: EXPLORER_ROW_WIDTH, height: y)
    view.frame = viewFrame
   // NSRect (x:0.0, y:0.0, width:NSMaxX (rr), height:NSMaxY (rr))
  //--- Set content size
    mExplorerWindow?.setContentSize (NSSize (width: EXPLORER_ROW_WIDTH + 16.0, height: fmin (600.0, y)))
  //--- Set close button as 'remove window' button
    let closeButton : NSButton? = mExplorerWindow?.standardWindowButton (.closeButton)
    closeButton?.target = self
    closeButton?.action = #selector(EBManagedObject.deleteWindowAction(_:))
  //--- Set window title
    let windowTitle = explorerIndexString (self.ebObjectIndex) + className
    mExplorerWindow!.title = windowTitle
  //--- Add Scroll view
    let frame = NSRect (x:0.0, y:0.0, width:EXPLORER_ROW_WIDTH, height:y)
    let sw = NSScrollView (frame:frame)
    sw.hasVerticalScroller = true
    sw.documentView = view
    mExplorerWindow!.contentView = sw
  }

  //····················································································································
  //   showObjectWindowFromExplorerButton
  //····················································································································

  @objc func showObjectWindowFromExplorerButton (_: Any) {
    self.showExplorerWindow ()
  }
  
  //····················································································································
  //   deleteWindowAction
  //····················································································································

  @objc func deleteWindowAction (_: Any) {
    self.clearObjectExplorer ()
  }

  //····················································································································
  //   clearObjectExplorer
  //····················································································································

  func clearObjectExplorer () {
    let closeButton = mExplorerWindow?.standardWindowButton (.closeButton)
    closeButton?.target = nil
    self.mExplorerWindow?.orderOut (nil)
    self.mExplorerWindow = nil
  }

  //····················································································································
  //   store (managedObjectArray:relationshipName:intoDictionary)
  //····················································································································

  final func store (managedObjectArray : NSArray,
                    relationshipName: String,
                    intoDictionary : NSMutableDictionary) {

    if managedObjectArray.count > 0 {
      let indexArray = NSMutableArray ()
      for object : Any in managedObjectArray {
        let managedObject = object as! EBManagedObject
        indexArray.add (NSNumber (value:managedObject.savingIndex))
      }
      intoDictionary.setObject (indexArray, forKey:relationshipName as NSCopying)
    }
  }

  //····················································································································
  //   store (managedObject:relationshipName:intoDictionary)
  //····················································································································

  final func store (managedObject : EBManagedObject?,
                    relationshipName: String,
                    intoDictionary : NSMutableDictionary) {
    if let unwObject = managedObject {
      intoDictionary.setObject (NSNumber (value:unwObject.savingIndex), forKey:relationshipName as NSCopying)
    }
  }

  //····················································································································
  //   readEntityFromDictionary
  //····················································································································

  final func readEntityFromDictionary (inRelationshipName: String,
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

  final func readEntityArrayFromDictionary (inRelationshipName: String,
                                            inDictionary : NSDictionary,
                                            managedObjectArray : inout [EBManagedObject]) -> Array<EBManagedObject> {
    let opIndexArray : Array<Int>? = inDictionary.value (forKey: inRelationshipName) as? Array<Int>
    var result = [EBManagedObject] ()
    if let indexArray = opIndexArray {
      for number : Int in indexArray {
        let managedObject = managedObjectArray [number]
        result.append (managedObject)
      }
    }
    return result
  }

  //····················································································································
  //   setSignatureObserver
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? // SOULD BE WEAK

  //····················································································································

  final func setSignatureObserver (observer : EBSignatureObserverProtocol?) {
    self.mSignatureObserver = observer
  }

  //····················································································································
  //   clearSignatureCache
  //····················································································································

  final func clearSignatureCache () {
    if self.mSignature != nil {
      self.mSignature = nil
      self.mSignatureObserver?.clearSignatureCache ()
    }
  }

  //····················································································································
  //   signature
  //····················································································································

  private final var mSignature : UInt32?
  
  //····················································································································

  final func signature () -> UInt32 {
    if self.mSignature == nil {
      self.mSignature = computeSignature ()
    }
    return self.mSignature!
  }

  //····················································································································

  func computeSignature () -> UInt32 {
    return 0
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   updateManagedObjectToOneRelationshipDisplay
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func updateManagedObjectToOneRelationshipDisplay (object : EBManagedObject?, button : NSButton?) {
  var stringValue = "nil"
  if let unwrappedObject = object {
    stringValue = explorerIndexString (unwrappedObject.ebObjectIndex) + unwrappedObject.className
  }
  button?.isEnabled = object != nil
  button?.title = stringValue
  button?.toolTip = stringValue
  button?.target = object
  button?.action = #selector(EBManagedObject.showObjectWindowFromExplorerButton(_:))
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   updateManagedObjectToManyRelationshipDisplay
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func updateManagedObjectToManyRelationshipDisplay (objectArray : [EBManagedObject], popUpButton : NSPopUpButton?) {
  var title = "No Object" ;
  if objectArray.count == 1 {
    title = "1 Object" ;
  }else if objectArray.count > 1 {
    title = String (format:"%lu objects", objectArray.count)
  }
  popUpButton?.removeAllItems ()
  popUpButton?.addItem (withTitle: title)
  popUpButton?.isEnabled = objectArray.count > 0
  for object : EBManagedObject in objectArray {
    let stringValue = explorerIndexString (object.ebObjectIndex) + object.className
    popUpButton?.addItem (withTitle: stringValue)
    let item = popUpButton?.lastItem
    item?.target = object
    item?.action = #selector(EBManagedObject.showObjectWindowFromExplorerButton(_:))
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

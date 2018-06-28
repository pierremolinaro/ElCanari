//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//  EBManagedObjectContext
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class EBManagedObjectContext : EBObject {
  private var mUndoManager : EBUndoManager?
  private var mManagedObjectSet = Set <EBManagedObject> ()

  //····················································································································
  //    init
  //····················································································································
  
  init (undoManager : EBUndoManager) {
    mUndoManager = undoManager
    super.init ()
  }

  //····················································································································
  //    undoManager
  //····················································································································
  
  func undoManager () -> EBUndoManager? {
    return mUndoManager
  }

  //····················································································································
  //    insertManagedObject
  //····················································································································
  
  func insertManagedObject (_ object : EBManagedObject) {
    if !mManagedObjectSet.contains(object) {
      mManagedObjectSet.insert (object)
      mUndoManager?.registerUndo (withTarget: self, selector: #selector(removeManagedObject(_:)), object: object)
    }
  }

  //····················································································································
  //    removeManagedObject
  //····················································································································
  
  func removeManagedObject (_ object : EBManagedObject) {
    if mManagedObjectSet.contains(object) {
      object.resetToManyRelationships ()
      object.resetToOneRelationships ()
      mManagedObjectSet.remove (object)
      mUndoManager?.registerUndo (withTarget: self, selector: #selector(insertManagedObject(_:)), object: object)
    }
  }

  //····················································································································
  //    reset
  //····················································································································
  
  func reset () {
    mUndoManager?.removeAllActions ()
    mUndoManager = nil
    for object in mManagedObjectSet {
      object.resetToManyRelationships ()
    }
    for object in mManagedObjectSet {
      object.resetToOneRelationships ()
    }
    mManagedObjectSet = Set ()
  }

  //····················································································································
  //  checkEntityReachability
  //····················································································································

  func checkEntityReachabilityFromObject (rootObject : EBManagedObject, windowForSheet : NSWindow) {
  //--- Build and show Panel
    let panelRect = NSRect (x:0.0, y:0.0, width:295.0, height:107.0)
    let panel = NSPanel (contentRect: panelRect, styleMask: [.titled], backing: .buffered, defer: false)
    let textRect = NSRect (x:17.0, y:45.0, width:261.0, height:17.0)
    let tf = NSTextField (frame:textRect)
    tf.stringValue = "Checking Document Relationships..."
    tf.isBezeled = false
    tf.isBordered = false
    tf.drawsBackground = false
    tf.isEditable = false
    tf.font = NSFont.boldSystemFont (ofSize: 0.0)
    panel.contentView?.addSubview (tf)
  //--- Sheet during search
    windowForSheet.beginSheet(panel, completionHandler:nil)
    let reachableObjects : Array<EBManagedObject> = reachableObjectsFromRootObject (rootObject: rootObject)
    windowForSheet.endSheet(panel)
  //--- 
    let unreachableObjectSet = mManagedObjectSet.subtracting (reachableObjects)
    let unregisteredObjectSet = Set <EBManagedObject> (reachableObjects).subtracting (mManagedObjectSet)
  //---
    if (unreachableObjectSet.count + unregisteredObjectSet.count) == 0 { // Ok
      let alert = NSAlert ()
      alert.messageText = "Object Graph is consistent"
      alert.informativeText = String (format:"%lu managed object%@.",
        mManagedObjectSet.count, (mManagedObjectSet.count > 1) ? "s" : ""
      )
      alert.beginSheetModal (for: windowForSheet, completionHandler:nil)
    }else{ // Error
      let alert = NSAlert ()
      alert.messageText = "Object Graph Error"
      alert.informativeText = String (format:"%lu managed object%@, %lu unreachable object%@, %lu unregistered object%@.",
        mManagedObjectSet.count,
        (mManagedObjectSet.count > 1) ? "s" : "",
        unreachableObjectSet.count,
        (unreachableObjectSet.count > 1) ? "s" : "",
        unregisteredObjectSet.count,
        (unregisteredObjectSet.count > 1) ? "s" : ""
      )
      alert.addButton (withTitle: "Ignore Error")
      alert.addButton (withTitle: "Perform Correction")
      alert.beginSheetModal (for: windowForSheet,
        completionHandler: {(response : Int) in
          if response == 1001 { // Perform correction
            self.mManagedObjectSet.subtract (unreachableObjectSet)
            self.mManagedObjectSet.formUnion (unregisteredObjectSet)
          }
        }
      )
    }
  }

  //····················································································································
  //  R E A C H A B L E   O B J E C T S    F R O M    O B J E C T
  //····················································································································

  func reachableObjectsFromRootObject (rootObject : EBManagedObject) -> Array<EBManagedObject> {
    var reachableObjectArray = Array<EBManagedObject> ()
    var reachableObjectSet = Set <EBManagedObject> ()
    reachableObjectSet.insert (rootObject)
    var objectsToExploreArray = Array<EBManagedObject> ()
    objectsToExploreArray.append (rootObject)
    rootObject.savingIndex = reachableObjectArray.count
    reachableObjectArray.append (rootObject)
    // let start = NSDate()
    //   NSLog ("start")
    while (objectsToExploreArray.count > 0) {
      let objectToExplore : EBManagedObject = objectsToExploreArray.last!
      objectsToExploreArray.removeLast ()
      var accessible = Array<EBManagedObject> ()
      objectToExplore.accessibleObjects (objects: &accessible)
      for object : Any in accessible {
        let managedObject = object as! EBManagedObject
        if !reachableObjectSet.contains (managedObject) {
          reachableObjectSet.insert (managedObject)
          managedObject.savingIndex = reachableObjectArray.count
          reachableObjectArray.append (managedObject)
          objectsToExploreArray.append (managedObject)
        }
      }
    // let timeTaken = NSDate().timeIntervalSinceDate(start) * 1000
    // NSLog ("%f ms", timeTaken)
    }
    return reachableObjectArray ;
  }

  //····················································································································
  //  newInstanceOfEntityNamed
  //····················································································································

  func newInstanceOfEntityNamed (inEntityTypeName : String) throws -> EBManagedObject {
    var result : EBManagedObject
    if inEntityTypeName == "SegmentForFontCharacterEntity" {
      result = SegmentForFontCharacterEntity (managedObjectContext:self)
    }else if inEntityTypeName == "FontCharacterEntity" {
      result = FontCharacterEntity (managedObjectContext:self)
    }else if inEntityTypeName == "FontRootEntity" {
      result = FontRootEntity (managedObjectContext:self)
    }else if inEntityTypeName == "ArtworkRootEntity" {
      result = ArtworkRootEntity (managedObjectContext:self)
    }else if inEntityTypeName == "ArtworkFileGenerationParameters" {
      result = ArtworkFileGenerationParameters (managedObjectContext:self)
    }else if inEntityTypeName == "BoardModelPadEntity" {
      result = BoardModelPadEntity (managedObjectContext:self)
    }else if inEntityTypeName == "BoardModelFrontComponentNameEntity" {
      result = BoardModelFrontComponentNameEntity (managedObjectContext:self)
    }else if inEntityTypeName == "BoardModelBackComponentNameEntity" {
      result = BoardModelBackComponentNameEntity (managedObjectContext:self)
    }else if inEntityTypeName == "BoardModelValueNameSegmentEntity" {
      result = BoardModelValueNameSegmentEntity (managedObjectContext:self)
    }else if inEntityTypeName == "BoardModelViaEntity" {
      result = BoardModelViaEntity (managedObjectContext:self)
    }else if inEntityTypeName == "BoardModelFrontTrackSegmentEntity" {
      result = BoardModelFrontTrackSegmentEntity (managedObjectContext:self)
    }else if inEntityTypeName == "BoardModelBackTrackSegmentEntity" {
      result = BoardModelBackTrackSegmentEntity (managedObjectContext:self)
    }else if inEntityTypeName == "BoardModelEntity" {
      result = BoardModelEntity (managedObjectContext:self)
    }else if inEntityTypeName == "MergerRootEntity" {
      result = MergerRootEntity (managedObjectContext:self)
    }else{
       let dictionary : [NSObject : Any] = [
        NSLocalizedDescriptionKey as NSObject : "Cannot read document",
        NSLocalizedRecoverySuggestionErrorKey as NSObject : "Cannot create object of \(inEntityTypeName) class",
      ]
      throw NSError (
        domain:Bundle.main.bundleIdentifier!,
        code:1,
        userInfo:dictionary
      )
    }
    return result
  }

  //····················································································································

}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


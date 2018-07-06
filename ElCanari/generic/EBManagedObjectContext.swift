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
  
  func removeManagedObject (_ inObject : EBManagedObject) {
    var objectsToRemove = Set <EBManagedObject> ()
    internalRemoveManagedObject (inObject, &objectsToRemove)
    mManagedObjectSet.subtract (objectsToRemove)
  }

  //····················································································································

  final func internalRemoveManagedObject (_ inObject : EBManagedObject, _ ioObjectsToRemove : inout Set <EBManagedObject>) {
    if inObject.managedObjectContext () != nil && !ioObjectsToRemove.contains(inObject) {
      ioObjectsToRemove.insert (inObject)
      mUndoManager?.registerUndo (withTarget: self, selector: #selector(insertManagedObject(_:)), object:inObject)
      inObject.cascadeObjectRemoving (&ioObjectsToRemove)
   }
  }

  //····················································································································
  //    removeManagedObjects
  //····················································································································
  
  func removeManagedObjects (_ inObjectArray : [EBManagedObject]) {
    var objectsToRemove = Set <EBManagedObject> ()
    internalRemoveManagedObjects (inObjectArray, &objectsToRemove)
    mManagedObjectSet.subtract (objectsToRemove)
  }
  
  //····················································································································
  
  final func internalRemoveManagedObjects (_ inObjectArray : [EBManagedObject], _ ioObjectsToRemove : inout Set <EBManagedObject>) {
    for object in inObjectArray {
      internalRemoveManagedObject (object, &ioObjectsToRemove)
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
    }else if inEntityTypeName == "BoardModelPad" {
      result = BoardModelPad (managedObjectContext:self)
    }else if inEntityTypeName == "CanariSegment" {
      result = CanariSegment (managedObjectContext:self)
    }else if inEntityTypeName == "BoardModelVia" {
      result = BoardModelVia (managedObjectContext:self)
    }else if inEntityTypeName == "BoardModel" {
      result = BoardModel (managedObjectContext:self)
    }else if inEntityTypeName == "MergerBoardInstance" {
      result = MergerBoardInstance (managedObjectContext:self)
    }else if inEntityTypeName == "MergerRoot" {
      result = MergerRoot (managedObjectContext:self)
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
  //     Function: read EasyBindings document file
  //····················································································································

  func loadEasyBindingFile (from data: Data) throws -> (UInt8, NSDictionary, EBManagedObject?) {
  //---- Define input data scanner
    var dataScanner = EBDataScanner (data:data)
  //--- Check Signature
    for c in kFormatSignature.utf8 {
      dataScanner.acceptRequired (byte: c)
    }
  //--- Read Status
    let metadataStatus = dataScanner.parseByte ()
  //--- if ok, check byte is 1
    dataScanner.acceptRequired (byte: 1)
  //--- Read metadata dictionary
    let dictionaryData = dataScanner.parseAutosizedData ()
    let metadataDictionary = try PropertyListSerialization.propertyList (from: dictionaryData as Data,
      options:[],
      format:nil
    ) as! NSDictionary
  //  let metadataDictionary = metadataDictionary.mutableCopy () as! NSMutableDictionary
  //--- Read data
    let dataFormat = dataScanner.parseByte ()
    let fileData = dataScanner.parseAutosizedData ()
  //--- if ok, check final byte (0)
    dataScanner.acceptRequired (byte: 0)
  //--- Scanner error ?
    if !dataScanner.ok () {
      let dictionary = [
        "Cannot Open Document" :  NSLocalizedDescriptionKey,
        "The file has an invalid format" :  NSLocalizedRecoverySuggestionErrorKey
      ]
      throw NSError (
        domain:Bundle.main.bundleIdentifier!,
        code:1,
        userInfo:dictionary
      )
    }
  //--- Analyze read data
    var rootObject : EBManagedObject? = nil
    if dataFormat == 0x06 {
      rootObject = try readManagedObjectsFromData (inData: fileData)
    }else{
      try raiseInvalidDataFormatArror (dataFormat: dataFormat)
    }
  //---
    if rootObject == nil {
      let dictionary = [
        "Cannot Open Document" :  NSLocalizedDescriptionKey,
        "Root object cannot be read" :  NSLocalizedRecoverySuggestionErrorKey
      ]
      throw NSError (
        domain:Bundle.main.bundleIdentifier!,
        code:1,
        userInfo:dictionary
      )
    }
  //---
    return (metadataStatus, metadataDictionary, rootObject)
  }

  //····················································································································

  final fileprivate func readManagedObjectsFromData (inData : Data) throws -> EBManagedObject? {
    var resultRootObject : EBManagedObject? = nil
    let v : Any = try PropertyListSerialization.propertyList (from: inData as Data,
      options:[],
      format:nil
    )
    let dictionaryArray : [NSDictionary] = v as! [NSDictionary]
    let semaphore : DispatchSemaphore = DispatchSemaphore (value: 0)
    let queue = DispatchQueue (label: "readObjectFromData")
    var possibleError : NSError? = nil
    queue.asyncAfter (deadline: .now (), execute: {
      do{
        var objectArray = [EBManagedObject] ()
        for d in dictionaryArray {
          let className = d.object (forKey: kEntityKey) as! String
          let object = try self.newInstanceOfEntityNamed (inEntityTypeName: className)
          objectArray.append (object)
        }
        var idx = 0
        for d in dictionaryArray {
          let object : EBManagedObject = objectArray [idx]
          object.setUpWithDictionary (d, managedObjectArray:&objectArray)
          idx += 1
        }
      //--- Set root object
        resultRootObject = objectArray [0]
        semaphore.signal()
      }catch let error as NSError {
        possibleError = error
      }
    })
    var wait = true
    while wait {
      semaphore.wait()
      wait = false
    }
    if let error = possibleError {
      throw error
    }
    return resultRootObject
  }

  //····················································································································

  final fileprivate func raiseInvalidDataFormatArror (dataFormat : UInt8) throws {
    let dictionary = [
      "Cannot Open Document" :  NSLocalizedDescriptionKey,
      "Unkown data format: \(dataFormat)" :  NSLocalizedRecoverySuggestionErrorKey
    ]
    throw NSError (
      domain:Bundle.main.bundleIdentifier!,
      code:1,
      userInfo:dictionary
    )
  }

  //····················································································································

}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


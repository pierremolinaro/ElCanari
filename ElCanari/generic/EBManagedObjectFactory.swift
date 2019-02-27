//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate let kEntityDictionary : [String : EBManagedObject.Type] = [
  "CanariLibraryEntry" : CanariLibraryEntry.self,
  "FontCharacter" : FontCharacter.self,
  "SegmentForFontCharacter" : SegmentForFontCharacter.self,
  "FontRoot" : FontRoot.self,
  "ArtworkRoot" : ArtworkRoot.self,
  "ArtworkFileGenerationParameters" : ArtworkFileGenerationParameters.self,
  "BoardModelPad" : BoardModelPad.self,
  "SegmentEntity" : SegmentEntity.self,
  "BoardModelVia" : BoardModelVia.self,
  "BoardModel" : BoardModel.self,
  "MergerBoardInstance" : MergerBoardInstance.self,
  "MergerRoot" : MergerRoot.self,
  "SymbolObject" : SymbolObject.self,
  "SymbolPin" : SymbolPin.self,
  "SymbolText" : SymbolText.self,
  "SymbolSolidRect" : SymbolSolidRect.self,
  "SymbolOval" : SymbolOval.self,
  "SymbolSolidOval" : SymbolSolidOval.self,
  "SymbolBezierCurve" : SymbolBezierCurve.self,
  "SymbolSegment" : SymbolSegment.self,
  "SymbolRoot" : SymbolRoot.self,
  "PackageRoot" : PackageRoot.self,
  "PackageObject" : PackageObject.self,
  "PackagePad" : PackagePad.self,
  "PackageSlavePad" : PackageSlavePad.self,
  "PackageZone" : PackageZone.self,
  "PackageSegment" : PackageSegment.self,
  "PackageBezier" : PackageBezier.self,
  "PackageOval" : PackageOval.self,
  "PackageArc" : PackageArc.self,
  "PackageGuide" : PackageGuide.self,
  "PackageDimension" : PackageDimension.self,
  "DeviceRoot" : DeviceRoot.self,
  "DeviceDocumentation" : DeviceDocumentation.self
]

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  newInstanceOfEntityNamed
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func newInstanceOfEntityNamed (_ undoManager : EBUndoManager?, _ inEntityTypeName : String) -> EBManagedObject? {
  if let T = kEntityDictionary [inEntityTypeName] {
    return T.init (undoManager, file: #file, #line)
  }else{
    return nil
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   makeManagedObjectFromDictionary
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func makeManagedObjectFromDictionary (_ inUndoManager : EBUndoManager?, _ inDictionary : NSDictionary) -> EBManagedObject? {
  let entityName = inDictionary.value (forKey: kEntityKey) as! String
  if let object = newInstanceOfEntityNamed (inUndoManager, entityName) {
    object.setUpAtomicPropertiesWithDictionary (inDictionary) 
    return object
  }else{
    return nil
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//     loadEasyBindingFile
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func loadEasyBindingFile (_ inUndoManager : EBUndoManager?, from data: Data) throws -> (UInt8, NSDictionary, EBManagedObject?) {
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
    rootObject = try readManagedObjectsFromData (inUndoManager, inData: fileData)
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func readManagedObjectsFromData (_ inUndoManager : EBUndoManager?, inData : Data) throws -> EBManagedObject? {
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
        if let object = newInstanceOfEntityNamed (inUndoManager, className) {
          objectArray.append (object)
        }else{
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
      }
      var idx = 0
      for d in dictionaryArray {
        let object : EBManagedObject = objectArray [idx]
        object.setUpWithDictionary (d, managedObjectArray: &objectArray)
        idx += 1
      }
    //--- Set root object
      resultRootObject = objectArray [0]
      semaphore.signal()
    }catch let error as NSError {
      possibleError = error
      semaphore.signal()
   }
  })
  semaphore.wait()
  if let error = possibleError {
    throw error
  }
  return resultRootObject
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func raiseInvalidDataFormatArror (dataFormat : UInt8) throws {
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


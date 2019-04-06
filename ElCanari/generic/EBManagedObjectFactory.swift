//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let ENTITY_KEY = "--entity"

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
  "DeviceDocumentation" : DeviceDocumentation.self,
  "PackageInDevice" : PackageInDevice.self,
  "SymbolTypeInDevice" : SymbolTypeInDevice.self,
  "SymbolInstanceInDevice" : SymbolInstanceInDevice.self,
  "PadProxyInDevice" : PadProxyInDevice.self,
  "MasterPadInDevice" : MasterPadInDevice.self,
  "SlavePadInDevice" : SlavePadInDevice.self,
  "SymbolPinTypeInDevice" : SymbolPinTypeInDevice.self,
  "SymbolPinInstanceInDevice" : SymbolPinInstanceInDevice.self,
  "ProjectRoot" : ProjectRoot.self,
  "ProjectFont" : ProjectFont.self
]

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  newInstanceOfEntityNamed
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func newInstanceOfEntityNamed (_ ebUndoManager : EBUndoManager?, _ inEntityTypeName : String) -> EBManagedObject? {
  if let T = kEntityDictionary [inEntityTypeName] {
    return T.init (ebUndoManager)
  }else{
    return nil
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   makeManagedObjectFromDictionary
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func makeManagedObjectFromDictionary (_ inUndoManager : EBUndoManager?, _ inDictionary : NSDictionary) -> EBManagedObject? {
  let entityName = inDictionary.value (forKey: ENTITY_KEY) as! String
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

func loadEasyBindingFile (_ inUndoManager : EBUndoManager?, from data: Data) throws -> (UInt8, [String : Any], EBManagedObject?) {
//---- Define input data scanner
  var dataScanner = EBDataScanner (data:data)
//--- Check Signature
  for c in PM_BINARY_FORMAT_SIGNATURE.utf8 {
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
  ) as! [String : Any]
//--- Read data
  let dataFormat = dataScanner.parseByte ()
  let fileData = dataScanner.parseAutosizedData ()
//--- if ok, check final byte (0)
  dataScanner.acceptRequired (byte: 0)
//--- Scanner error ?
  if !dataScanner.ok () {
    let dictionary = [
      "Cannot Open Document" : NSLocalizedDescriptionKey,
      "The file has an invalid format" : NSLocalizedRecoverySuggestionErrorKey
    ]
    throw NSError (domain: Bundle.main.bundleIdentifier!, code: 1, userInfo: dictionary)
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
    throw NSError (domain: Bundle.main.bundleIdentifier!, code: 1, userInfo: dictionary)
  }
//---
  return (metadataStatus, metadataDictionary, rootObject)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func readManagedObjectsFromData (_ inUndoManager : EBUndoManager?, inData : Data) throws -> EBManagedObject? {
  var resultRootObject : EBManagedObject? = nil
  if let dictionaryArray = try PropertyListSerialization.propertyList (from: inData as Data, options: [], format: nil) as? [NSDictionary] {
    var objectArray = [EBManagedObject] ()
    for d in dictionaryArray {
      let className = d.object (forKey: ENTITY_KEY) as! String
      if let object = newInstanceOfEntityNamed (inUndoManager, className) {
        objectArray.append (object)
      }else{
        let dictionary = [
          "Cannot Open Document" :  NSLocalizedDescriptionKey,
          "Root object cannot be read" :  NSLocalizedRecoverySuggestionErrorKey
        ]
        throw NSError (domain: Bundle.main.bundleIdentifier!, code: 1, userInfo:dictionary)
      }
    }
    var idx = 0
    for d in dictionaryArray {
      let object = objectArray [idx]
      object.setUpWithDictionary (d, managedObjectArray: &objectArray)
      idx += 1
    }
    resultRootObject = objectArray [0] //--- Set root object
  }
  return resultRootObject
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func raiseInvalidDataFormatArror (dataFormat : UInt8) throws {
  let dictionary = [
    "Cannot Open Document" :  NSLocalizedDescriptionKey,
    "Unkown data format: \(dataFormat)" :  NSLocalizedRecoverySuggestionErrorKey
  ]
  throw NSError (domain: Bundle.main.bundleIdentifier!, code: 1, userInfo: dictionary)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//     loadEasyRootObjectDictionary
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func loadEasyRootObjectDictionary (from data: Data) throws -> (UInt8, [String : Any], [String : Any]?) {
//---- Define input data scanner
  var dataScanner = EBDataScanner (data: data)
//--- Check Signature
  for c in PM_BINARY_FORMAT_SIGNATURE.utf8 {
    dataScanner.acceptRequired (byte: c)
  }
//--- Read Status
  let metadataStatus = dataScanner.parseByte ()
//--- if ok, check byte is 1
  dataScanner.acceptRequired (byte: 1)
//--- Read metadata dictionary
  let dictionaryData = dataScanner.parseAutosizedData ()
  let metadataDictionary = try PropertyListSerialization.propertyList (from: dictionaryData,
    options:[],
    format:nil
  ) as! [String : Any]
//--- Read data
  let dataFormat = dataScanner.parseByte ()
  let fileData = dataScanner.parseAutosizedData ()
//--- if ok, check final byte (0)
  dataScanner.acceptRequired (byte: 0)
//--- Scanner error ?
  if !dataScanner.ok () {
    let dictionary = [
      "Cannot Open Document" : NSLocalizedDescriptionKey,
      "The file has an invalid format" : NSLocalizedRecoverySuggestionErrorKey
    ]
    throw NSError (domain: Bundle.main.bundleIdentifier!, code: 1, userInfo: dictionary)
  }
//--- Analyze read data
  var rootObjectDictionary : [String : Any]? = nil
  if dataFormat == 0x06 {
    if let dictionaryArray = try PropertyListSerialization.propertyList (from: fileData, options: [], format: nil) as? [[String : Any]] {
      rootObjectDictionary = dictionaryArray [0]
    }
  }else{
    try raiseInvalidDataFormatArror (dataFormat: dataFormat)
  }
//---
  if rootObjectDictionary == nil {
    let dictionary = [
      "Cannot Open Document" : NSLocalizedDescriptionKey,
      "Root object cannot be read" : NSLocalizedRecoverySuggestionErrorKey
    ]
    throw NSError (domain: Bundle.main.bundleIdentifier!, code: 1, userInfo: dictionary)
  }
//---
  return (metadataStatus, metadataDictionary, rootObjectDictionary)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


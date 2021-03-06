//
//  add-board-model.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 21/06/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension MergerDocument {

  //····················································································································

  func loadBoardModel_ELCanariArchive (filePath inFilePath : String, windowForSheet inWindow : NSWindow) {
  //--- Load file, as plist
    let optionalFileData : Data? = FileManager ().contents (atPath: inFilePath)
    if let fileData = optionalFileData {
      let s = inFilePath.lastPathComponent.deletingPathExtension
      let possibleBoardModel = self.parseBoardModel_ELCanariArchive (fromData: fileData, named : s)
      if let boardModel = possibleBoardModel {
        self.rootObject.boardModels_property.add (boardModel)
        self.mBoardModelController.select (object:boardModel)
      }
    }else{ // Cannot read file
      let alert = NSAlert ()
      alert.messageText = "Cannot read file"
      alert.informativeText = "The file \(inFilePath) cannot be read."
      alert.beginSheetModal (for: inWindow) { (NSModalResponse) in }
    }
  }

  //····················································································································

  func parseBoardModel_ELCanariArchive (fromData inData : Data, named inName : String) -> BoardModel? {
    var boardModel : BoardModel? = nil
    do{
      let optionalBoardArchiveDictionary = try PropertyListSerialization.propertyList (
        from: inData,
        options: [],
        format: nil
      )
      if let boardArchiveDict = optionalBoardArchiveDictionary as? NSDictionary {
        boardModel = internal_parseBoardModel_ELCanariArchive (boardArchiveDict, named: inName)
      }
    }catch let error {
      let alert = NSAlert ()
      alert.messageText = "Cannot Analyse file contents"
      alert.informativeText = "\(error)"
      alert.beginSheetModal (for: self.windowForSheet!) {(NSModalResponse) in}
    }
    return boardModel
  }

  //····················································································································

  fileprivate func internal_parseBoardModel_ELCanariArchive (_ inBoardArchiveDict : NSDictionary, named inName : String) -> BoardModel? {
    let boardModel = BoardModel (self.ebUndoManager)
  //--- Populate board model from dictionary (accumulate error messages in errorArray variable)
    var errorArray = [String] ()
    boardModel.name = inName
    boardModel.artworkName = string (fromDict: inBoardArchiveDict, key: "ARTWORK", &errorArray)
    boardModel.modelWidth = int (fromDict: inBoardArchiveDict, key: "BOARD-WIDTH", &errorArray)
    boardModel.modelWidthUnit = int (fromDict: inBoardArchiveDict, key: "BOARD-WIDTH-UNIT", &errorArray)
    boardModel.modelHeight = int (fromDict: inBoardArchiveDict, key: "BOARD-HEIGHT", &errorArray)
    boardModel.modelHeightUnit = int (fromDict: inBoardArchiveDict, key: "BOARD-HEIGHT-UNIT", &errorArray)
    boardModel.modelLimitWidth = int (fromDict: inBoardArchiveDict, key: "BOARD-LINE-WIDTH", &errorArray)
    boardModel.modelLimitWidthUnit = int (fromDict: inBoardArchiveDict, key: "BOARD-LINE-WIDTH-UNIT", &errorArray)
    let boardRect_mm = NSRect (
      x: 0.0,
      y: 0.0,
      width: canariUnitToMillimeter (boardModel.modelWidth),
      height: canariUnitToMillimeter (boardModel.modelHeight)
    )
  //--- Internal boards limits
    var internalBoardsLimitsEntities = [SegmentEntity] ()
    let internalBoardsLimits = optionalStringArray (fromDict: inBoardArchiveDict, key: "INTERNAL-BOARDS-LIMITS", &errorArray)
  //  NSLog ("internalBoardsLimits.count \(internalBoardsLimits.count)")
    for str in internalBoardsLimits {
      let segment = SegmentEntity (self.ebUndoManager)
      let ints = array5int (fromString: str, &errorArray)
      segment.x1 = ints [0]
      segment.y1 = ints [1]
      segment.x2 = ints [2]
      segment.y2 = ints [3]
      segment.width = ints [4]
      internalBoardsLimitsEntities.append (segment)
    }
    boardModel.internalBoardsLimits = internalBoardsLimitsEntities
  //--- Front tracks
    var frontTrackEntities = [SegmentEntity] ()
    let frontTracks = stringArray (fromDict: inBoardArchiveDict, key: "TRACKS-FRONT", &errorArray)
    for str in frontTracks {
      let track = SegmentEntity (self.ebUndoManager)
      let ints = array5int (fromString: str, &errorArray)
      track.x1 = ints [0]
      track.y1 = ints [1]
      track.x2 = ints [2]
      track.y2 = ints [3]
      track.width = ints [4]
      frontTrackEntities.append (track)
    }
    boardModel.frontTracks = frontTrackEntities
  //--- Back tracks
    var backTrackEntities = [SegmentEntity] ()
    let backTracks = stringArray (fromDict: inBoardArchiveDict, key: "TRACKS-BACK", &errorArray)
    for str in backTracks {
      let track = SegmentEntity (self.ebUndoManager)
      let ints = array5int (fromString: str, &errorArray)
      track.x1 = ints [0]
      track.y1 = ints [1]
      track.x2 = ints [2]
      track.y2 = ints [3]
      track.width = ints [4]
      backTrackEntities.append (track)
    }
    boardModel.backTracks = backTrackEntities
  //--- Vias
    var viaEntities = [BoardModelVia] ()
    let vias = stringArray (fromDict: inBoardArchiveDict, key: "VIAS", &errorArray)
    for str in vias {
      let via = BoardModelVia (self.ebUndoManager)
      let ints = array3int (fromString: str, &errorArray)
      via.x = ints [0]
      via.y = ints [1]
      via.padDiameter = ints [2]
      viaEntities.append (via)
    }
    boardModel.vias = viaEntities
  //--- Back Legend texts
    var backLegendLinesEntities = [SegmentEntity] ()
    let backLegendLines = stringArray (fromDict: inBoardArchiveDict, key: "LINES-BACK", &errorArray)
    for str in backLegendLines {
      let ints = array5int (fromString: str, &errorArray)
      if let segment = clippedSegmentEntity (
        p1_mm: NSPoint (x: canariUnitToMillimeter (ints [0]), y:canariUnitToMillimeter (ints [1])),
        p2_mm: NSPoint (x: canariUnitToMillimeter (ints [2]), y:canariUnitToMillimeter (ints [3])),
        width_mm: canariUnitToMillimeter (ints [4]),
        clipRect_mm: boardRect_mm,
        self.ebUndoManager,
        file: #file, #line
      ) {
        backLegendLinesEntities.append (segment)
      }
    }
    boardModel.backLegendLines = backLegendLinesEntities
  //--- Front Legend texts
    var frontLegendLinesEntities = [SegmentEntity] ()
    let frontLegendLines = stringArray (fromDict: inBoardArchiveDict, key: "LINES-FRONT", &errorArray)
    for str in frontLegendLines {
      let ints = array5int (fromString: str, &errorArray)
      if let segment = clippedSegmentEntity (
        p1_mm: NSPoint (x: canariUnitToMillimeter (ints [0]), y:canariUnitToMillimeter (ints [1])),
        p2_mm: NSPoint (x: canariUnitToMillimeter (ints [2]), y:canariUnitToMillimeter (ints [3])),
        width_mm: canariUnitToMillimeter (ints [4]),
        clipRect_mm: boardRect_mm,
        self.ebUndoManager,
        file: #file, #line
      ) {
        frontLegendLinesEntities.append (segment)
      }
    }
    boardModel.frontLegendLines = frontLegendLinesEntities
  //--- Front Layout texts
    var frontLayoutTextEntities = [SegmentEntity] ()
    let frontLayoutTexts = stringArray (fromDict: inBoardArchiveDict, key: "TEXTS-LAYOUT-FRONT", &errorArray)
    for str in frontLayoutTexts {
      let segment = SegmentEntity (self.ebUndoManager)
      let ints = array5int (fromString: str, &errorArray)
      segment.x1 = ints [0]
      segment.y1 = ints [1]
      segment.x2 = ints [2]
      segment.y2 = ints [3]
      segment.width = ints [4]
      frontLayoutTextEntities.append (segment)
    }
    boardModel.frontLayoutTexts = frontLayoutTextEntities
  //--- Back Layout texts
    var backLayoutTextEntities = [SegmentEntity] ()
    let backLayoutTexts = stringArray (fromDict: inBoardArchiveDict, key: "TEXTS-LAYOUT-BACK", &errorArray)
    for str in backLayoutTexts {
      let segment = SegmentEntity (self.ebUndoManager)
      let ints = array5int (fromString: str, &errorArray)
      segment.x1 = ints [0]
      segment.y1 = ints [1]
      segment.x2 = ints [2]
      segment.y2 = ints [3]
      segment.width = ints [4]
      backLayoutTextEntities.append (segment)
    }
    boardModel.backLayoutTexts = backLayoutTextEntities
  //--- Back Legend texts
    var backLegendTextEntities = [SegmentEntity] ()
    let backLegendTexts = stringArray (fromDict: inBoardArchiveDict, key: "TEXTS-LEGEND-BACK", &errorArray)
    for str in backLegendTexts {
      let ints = array5int (fromString: str, &errorArray)
      if let segment = clippedSegmentEntity (
        p1_mm: NSPoint (x: canariUnitToMillimeter (ints [0]), y:canariUnitToMillimeter (ints [1])),
        p2_mm: NSPoint (x: canariUnitToMillimeter (ints [2]), y:canariUnitToMillimeter (ints [3])),
        width_mm: canariUnitToMillimeter (ints [4]),
        clipRect_mm: boardRect_mm,
        self.ebUndoManager,
        file: #file, #line
      ) {
        backLegendTextEntities.append (segment)
      }
    }
    boardModel.backLegendTexts = backLegendTextEntities
  //--- Front Legend texts
    var frontLegendTextEntities = [SegmentEntity] ()
    let frontTexts = stringArray (fromDict: inBoardArchiveDict, key: "TEXTS-LEGEND-FRONT", &errorArray)
    for str in frontTexts {
      let ints = array5int (fromString: str, &errorArray)
      if let segment = clippedSegmentEntity (
        p1_mm: NSPoint (x: canariUnitToMillimeter (ints [0]), y:canariUnitToMillimeter (ints [1])),
        p2_mm: NSPoint (x: canariUnitToMillimeter (ints [2]), y:canariUnitToMillimeter (ints [3])),
        width_mm: canariUnitToMillimeter (ints [4]),
        clipRect_mm: boardRect_mm,
        self.ebUndoManager,
        file: #file, #line
      ) {
        frontLegendTextEntities.append (segment)
      }
    }
    boardModel.frontLegendTexts = frontLegendTextEntities
  //--- Back packages
    var backPackagesEntities = [SegmentEntity] ()
    let backPackages = stringArray (fromDict: inBoardArchiveDict, key: "PACKAGES-BACK", &errorArray)
    for str in backPackages {
      let ints = array5int (fromString: str, &errorArray)
      if let segment = clippedSegmentEntity (
        p1_mm: NSPoint (x: canariUnitToMillimeter (ints [0]), y:canariUnitToMillimeter (ints [1])),
        p2_mm: NSPoint (x: canariUnitToMillimeter (ints [2]), y:canariUnitToMillimeter (ints [3])),
        width_mm: canariUnitToMillimeter (ints [4]),
        clipRect_mm: boardRect_mm,
        self.ebUndoManager,
        file: #file, #line
      ) {
        backPackagesEntities.append (segment)
      }
    }
    boardModel.backPackages = backPackagesEntities
  //--- Front packages
    var frontPackagesEntities = [SegmentEntity] ()
    let frontPackages = stringArray (fromDict: inBoardArchiveDict, key: "PACKAGES-FRONT", &errorArray)
    for str in frontPackages {
      let ints = array5int (fromString: str, &errorArray)
      if let segment = clippedSegmentEntity (
        p1_mm: NSPoint (x: canariUnitToMillimeter (ints [0]), y:canariUnitToMillimeter (ints [1])),
        p2_mm: NSPoint (x: canariUnitToMillimeter (ints [2]), y:canariUnitToMillimeter (ints [3])),
        width_mm: canariUnitToMillimeter (ints [4]),
        clipRect_mm: boardRect_mm,
        self.ebUndoManager,
        file: #file, #line
      ) {
        frontPackagesEntities.append (segment)
      }
    }
    boardModel.frontPackages = frontPackagesEntities
  //--- Back component names
    var backComponentNamesEntities = [SegmentEntity] ()
    let backComponentNames = stringArray (fromDict: inBoardArchiveDict, key: "COMPONENT-NAMES-BACK", &errorArray)
    for str in backComponentNames {
      let ints = array5int (fromString: str, &errorArray)
      if let segment = clippedSegmentEntity (
        p1_mm: NSPoint (x: canariUnitToMillimeter (ints [0]), y:canariUnitToMillimeter (ints [1])),
        p2_mm: NSPoint (x: canariUnitToMillimeter (ints [2]), y:canariUnitToMillimeter (ints [3])),
        width_mm: canariUnitToMillimeter (ints [4]),
        clipRect_mm: boardRect_mm,
        self.ebUndoManager,
        file: #file, #line
      ) {
        backComponentNamesEntities.append (segment)
      }
    }
    boardModel.backComponentNames = backComponentNamesEntities
  //--- Front component names
    var frontComponentNamesEntities = [SegmentEntity] ()
    let frontComponentNames = stringArray (fromDict: inBoardArchiveDict, key: "COMPONENT-NAMES-FRONT", &errorArray)
    for str in frontComponentNames {
      let ints = array5int (fromString: str, &errorArray)
      if let segment = clippedSegmentEntity (
        p1_mm: NSPoint (x: canariUnitToMillimeter (ints [0]), y:canariUnitToMillimeter (ints [1])),
        p2_mm: NSPoint (x: canariUnitToMillimeter (ints [2]), y:canariUnitToMillimeter (ints [3])),
        width_mm: canariUnitToMillimeter (ints [4]),
        clipRect_mm: boardRect_mm,
        self.ebUndoManager,
        file: #file, #line
      ) {
        frontComponentNamesEntities.append (segment)
      }
    }
    boardModel.frontComponentNames = frontComponentNamesEntities
  //--- Front component values
    var frontComponentValuesEntities = [SegmentEntity] ()
    let frontComponentValues = stringArray (fromDict: inBoardArchiveDict, key: "COMPONENT-VALUES-FRONT", &errorArray)
    for str in frontComponentValues {
      let ints = array5int (fromString: str, &errorArray)
      if let segment = clippedSegmentEntity (
        p1_mm: NSPoint (x: canariUnitToMillimeter (ints [0]), y: canariUnitToMillimeter (ints [1])),
        p2_mm: NSPoint (x: canariUnitToMillimeter (ints [2]), y: canariUnitToMillimeter (ints [3])),
        width_mm: canariUnitToMillimeter (ints [4]),
        clipRect_mm: boardRect_mm,
        self.ebUndoManager,
        file: #file, #line
      ) {
        frontComponentValuesEntities.append (segment)
      }
    }
    boardModel.frontComponentValues = frontComponentValuesEntities
  //--- Back component values
    var backComponentValuesEntities = [SegmentEntity] ()
    let backComponentValues = stringArray (fromDict: inBoardArchiveDict, key: "COMPONENT-VALUES-BACK", &errorArray)
    for str in backComponentValues {
      let ints = array5int (fromString: str, &errorArray)
      if let segment = clippedSegmentEntity (
        p1_mm: NSPoint (x: canariUnitToMillimeter (ints [0]), y: canariUnitToMillimeter (ints [1])),
        p2_mm: NSPoint (x: canariUnitToMillimeter (ints [2]), y: canariUnitToMillimeter (ints [3])),
        width_mm: canariUnitToMillimeter (ints [4]),
        clipRect_mm: boardRect_mm,
        self.ebUndoManager,
        file: #file, #line
      ) {
        backComponentValuesEntities.append (segment)
      }
    }
    boardModel.backComponentValues = backComponentValuesEntities
  //--- Drills
    var drillEntities = [SegmentEntity] ()
    let drills = stringArray (fromDict: inBoardArchiveDict, key: "DRILLS", &errorArray)
    for str in drills {
      let segment = SegmentEntity (self.ebUndoManager)
      let ints = array5int (fromString: str, &errorArray)
      segment.x1 = ints [0]
      segment.y1 = ints [1]
      segment.x2 = ints [2]
      segment.y2 = ints [3]
      segment.width = ints [4]
      drillEntities.append (segment)
    }
    boardModel.drills = drillEntities
  //--- Front pads
    var backPadEntities = [BoardModelPad] ()
    let backPadDictArray = dictArray (fromDict: inBoardArchiveDict, key: "PADS-BACK", &errorArray)
    for padDict in backPadDictArray {
      let pad = BoardModelPad (self.ebUndoManager)
      pad.x = int (fromDict: padDict, key: "X", &errorArray)
      pad.y = int (fromDict: padDict, key: "Y", &errorArray)
      pad.width = int (fromDict: padDict, key: "WIDTH", &errorArray)
      pad.height = int (fromDict: padDict, key: "HEIGHT", &errorArray)
      pad.rotation = int (fromDict: padDict, key: "ROTATION", &errorArray)
      let shapeString = string (fromDict: padDict, key: "SHAPE", &errorArray)
      if shapeString == "RECT" {
        pad.shape = .rect
      }else if shapeString == "ROUND" {
        pad.shape = .round
      }else if shapeString == "OCTO" {
        pad.shape = .octo
      }else{
        errorArray.append ("Invalid pad shape \"\(shapeString)\".")
      }
      backPadEntities.append (pad)
    }
    boardModel.backPads = backPadEntities
  //--- Front pads
    var frontPadEntities = [BoardModelPad] ()
    let frontPadDictArray = dictArray (fromDict: inBoardArchiveDict, key: "PADS-FRONT", &errorArray)
    for padDict in frontPadDictArray {
      let pad = BoardModelPad (self.ebUndoManager)
      pad.x = int (fromDict: padDict, key: "X", &errorArray)
      pad.y = int (fromDict: padDict, key: "Y", &errorArray)
      pad.width = int (fromDict: padDict, key: "WIDTH", &errorArray)
      pad.height = int (fromDict: padDict, key: "HEIGHT", &errorArray)
      pad.rotation = int (fromDict: padDict, key: "ROTATION", &errorArray)
      let shapeString = string (fromDict: padDict, key: "SHAPE", &errorArray)
      if shapeString == "RECT" {
        pad.shape = .rect
      }else if shapeString == "ROUND" {
        pad.shape = .round
      }else if shapeString == "OCTO" {
        pad.shape = .octo
      }else{
        errorArray.append ("Invalid pad shape \"\(shapeString)\".")
      }
      frontPadEntities.append (pad)
    }
    boardModel.frontPads = frontPadEntities
  //--- Dictionary import ok ?
    if errorArray.count != 0 { // Error
      var s = ""
      for anError in errorArray {
        if s != "" {
          s += "\n"
        }
        s += anError
      }
      let alert = NSAlert ()
      alert.messageText = "Cannot Analyze file contents"
      alert.informativeText = s
      alert.beginSheetModal (for: self.windowForSheet!) { (NSModalResponse) in }
    }
  //--- Return 
    return (errorArray.count == 0) ? boardModel : nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func double (fromDict inDictionary : NSDictionary, key inKey : String, _ errorArray : inout [String]) -> Double {
  let object : Any? = inDictionary.value (forKey: inKey)
  var result = 0.0 // Default result
  if object == nil {
    errorArray.append ("No \"\(inKey)\" key.")
  }else if let number = object as? NSNumber {
    result = number.doubleValue
  }else{
    errorArray.append ("The \"\(inKey)\" key value is not a double.")
  }
  return result
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func int (fromDict inDictionary : NSDictionary, key inKey : String, _ errorArray : inout [String]) -> Int {
  let object : Any? = inDictionary.value (forKey: inKey)
  var result = 0 // Default result
  if object == nil {
    errorArray.append ("No \"\(inKey)\" key.")
  }else if let number = object as? NSNumber {
    result = number.intValue
  }else{
    errorArray.append ("The \"\(inKey)\" key value is not an integer.")
  }
  return result
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func intOrZero (fromDict inDictionary : NSDictionary, key inKey : String, _ errorArray : inout [String]) -> Int {
  let object : Any? = inDictionary.value (forKey: inKey)
  var result = 0 // Default result
  if let number = object as? NSNumber {
    result = number.intValue
  }else if object != nil {
    errorArray.append ("The \"\(inKey)\" key value is not an integer.")
  }
  return result
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func string (fromDict inDictionary : NSDictionary, key inKey : String, _ errorArray : inout [String]) -> String {
  let object : Any? = inDictionary.value (forKey: inKey)
  var result = "" // Default result
  if object == nil {
    errorArray.append ("No \"\(inKey)\" key.")
  }else if let s = object as? String {
    result = s
  }else{
    errorArray.append ("The \"\(inKey)\" key value is not a string.")
  }
  return result
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func dictArray (fromDict inDictionary : NSDictionary, key inKey : String, _ errorArray : inout [String]) -> [NSDictionary] {
  let object : Any? = inDictionary.value (forKey: inKey)
  var result = [NSDictionary] () // Default result
  if object == nil {
    errorArray.append ("No \"\(inKey)\" key.")
  }else if let s = object as? [NSDictionary] {
    result = s
  }else{
    errorArray.append ("The \"\(inKey)\" key value is not an array of dictionaries.")
  }
  return result
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func stringArray (fromDict inDictionary : NSDictionary, key inKey : String, _ errorArray : inout [String]) -> [String] {
  let object : Any? = inDictionary.value (forKey: inKey)
  var result = [String] () // Default result
  if object == nil {
    errorArray.append ("No \"\(inKey)\" key.")
  }else if let s = object as? [String] {
    result = s
  }else{
    errorArray.append ("The \"\(inKey)\" key value is not an array of string.")
  }
  return result
}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func optionalStringArray (fromDict inDictionary : NSDictionary, key inKey : String, _ errorArray : inout [String]) -> [String] {
  let object : Any? = inDictionary.value (forKey: inKey)
  var result = [String] () // Default result
  if let s = object as? [String] {
    result = s
  }else if object != nil {
    errorArray.append ("The \"\(inKey)\" key value is not an array of string.")
  }
  return result
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func array3int (fromString inString : String, _ errorArray : inout [String]) -> [Int] {
  let strArray : [String] = inString.components(separatedBy: " ")
  var result = [Int] () // Default result
  if strArray.count != 3 {
    errorArray.append ("The string is not a three integer array.")
  }else{
    for s in strArray {
      let possibleInt : Int? = Int (s)
      if let n = possibleInt {
        result.append (n)
      }else{
        errorArray.append ("The string is not a four integer array.")
      }
    }
  }
//--- If an error occurs, add fake int to get a three element vector
  while result.count < 3 {
    result.append (0)
  }
//---
  return result
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func array4int (fromString inString : String, _ errorArray : inout [String]) -> [Int] {
  let strArray : [String] = inString.components(separatedBy: " ")
  var result = [Int] () // Default result
  if strArray.count != 4 {
    errorArray.append ("The string is not a four integer array.")
  }else{
    for s in strArray {
      let possibleInt : Int? = Int (s)
      if let n = possibleInt {
        result.append (n)
      }else{
        errorArray.append ("The string is not a four integer array.")
      }
    }
  }
//--- If an error occurs, add fake int to get a four element vector
  while result.count < 4 {
    result.append (0)
  }
//---
  return result
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func array5int (fromString inString : String, _ errorArray : inout [String]) -> [Int] {
  let strArray : [String] = inString.components(separatedBy: " ")
  var result = [Int] () // Default result
  if strArray.count != 5 {
    errorArray.append ("The string is not a five integer array.")
  }else{
    for s in strArray {
      let possibleInt : Int? = Int (s)
      if let n = possibleInt {
        result.append (n)
      }else{
        errorArray.append ("The string is not a five integer array.")
      }
    }
  }
//--- If an error occurs, add fake int(s) to get a five element vector
  while result.count < 5 {
    result.append (0)
  }
//---
  return result
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

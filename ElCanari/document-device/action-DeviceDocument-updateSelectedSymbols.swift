//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension DeviceDocument {
  @objc func updateSelectedSymbols (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    let selectedSymbols = self.symbolTypeController.selectedArray
    let fm = FileManager ()
    var messages = [String] ()
    for symbolType in selectedSymbols {
      let pathes = symbolFilePathInLibraries (symbolType.mTypeName)
      if pathes.count == 0 {
        messages.append ("No file in Library for \(symbolType.mTypeName) symbol")
      }else if pathes.count == 1 {
        if let data = fm.contents (atPath: pathes [0]),
           let (_, metadataDictionary, rootObject) = try? loadEasyBindingFile (nil, from: data),
           let symbolRoot = rootObject as? SymbolRoot,
           let version = metadataDictionary [PMSymbolVersion] as? Int {
          if version <= symbolType.mVersion {
            messages.append ("Symbol \(symbolType.mTypeName) is up-to-date.")
          }else{
            let strokeBezierPathes = NSBezierPath ()
            let filledBezierPathes = NSBezierPath ()
            var newSymbolPinTypes = [SymbolPinTypeInDevice] ()
            symbolRoot.accumulate (
              withUndoManager: self.ebUndoManager,
              strokeBezierPathes: strokeBezierPathes,
              filledBezierPathes: filledBezierPathes,
              symbolPins: &newSymbolPinTypes
            )
            strokeBezierPathes.lineCapStyle = .round
            strokeBezierPathes.lineJoinStyle = .round
            symbolRoot.removeRecursivelyAllRelationsShips ()
          //--- Check if symbol pin name set is the same
            var currentPinNameSet = Set <String> ()
            for pinType in symbolType.mPinTypes_property.propval {
              currentPinNameSet.insert (pinType.mName)
            }
            var newPinNameDictionary = [String : SymbolPinTypeInDevice] ()
            for pinType in newSymbolPinTypes {
              newPinNameDictionary [pinType.mName] = pinType
            }
            if currentPinNameSet != Set (newPinNameDictionary.keys) {
              messages.append ("Cannot update \(symbolType.mTypeName) symbol: pin name set has changed.")
            }else{ // Ok, make update
            //-- Set properties
              symbolType.mVersion = version
              symbolType.mFileData = data
              symbolType.mStrokeBezierPath = strokeBezierPathes
              symbolType.mFilledBezierPath = filledBezierPathes
            //--- Update pin types
              for pinType in symbolType.mPinTypes_property.propval {
                let newPinType = newPinNameDictionary [pinType.mName]!
                pinType.mXName = newPinType.mXName
                pinType.mYName = newPinType.mYName
                pinType.mName = newPinType.mName
                pinType.mNameHorizontalAlignment = newPinType.mNameHorizontalAlignment
                pinType.mPinNameIsDisplayedInSchematics = newPinType.mPinNameIsDisplayedInSchematics
                pinType.mXNumber = newPinType.mXNumber
                pinType.mYNumber = newPinType.mYNumber
                pinType.mNumberHorizontalAlignment = newPinType.mNumberHorizontalAlignment
             }
            //---
              messages.append ("Symbol \(symbolType.mTypeName) has been updated to version \(version).")
            }
          }
        }else{
          messages.append ("Invalid file at path \(pathes [0])")
        }
      }else{ // pathes.count > 1
        messages.append ("Cannot update, several files in Library for \(symbolType.mTypeName) symbol:")
        for path in pathes {
          messages.append ("  - \(path)")
        }
      }
    }
    if messages.count > 0 {
      let alert = NSAlert ()
      alert.messageText = "Done."
      alert.informativeText = messages.joined (separator: "\n")
      alert.beginSheetModal (for: self.windowForSheet!)
    }
//--- END OF USER ZONE 2
  }
}

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ArtworkDocument_mStatusMessage (
       _ root_fileGenerationParameterArray_fileExtension : [ArtworkFileGenerationParameters_fileExtension],
       _ root_fileGenerationParameterArray_name : [ArtworkFileGenerationParameters_name]
) -> String {
//--- START OF USER ZONE 2
  let n = root_fileGenerationParameterArray_fileExtension.count
  var result = ""
  var warningCount = 0
  var errorCount = 0
  if n == 0 {
    result = "Warning: no data\n"
    warningCount += 1
  }
  var fileExtensionSet = Set <String> ()
  var nameSet = Set <String> ()
  for i in 0 ..< n {
    let fileExtension = root_fileGenerationParameterArray_fileExtension [i].fileExtension
    let name = root_fileGenerationParameterArray_name [i].name
    if name == "" {
      result += "Error: empty data name for extension '\(fileExtension)'\n"
      errorCount += 1
    }else if nameSet.contains (name) {
      result += "Error: duplicated data name '\(name)' for extension '\(fileExtension)'\n"
      errorCount += 1
    }else{
      nameSet.insert (name)
    }
    if fileExtension == "" {
      result += "Error: empty file extension for data named '\(name)'\n"
      errorCount += 1
    }else if fileExtensionSet.contains (fileExtension) {
      result += "Error: duplicated file extension '\(fileExtension)' for data named '\(name)'\n"
      errorCount += 1
    }else{
      fileExtensionSet.insert (fileExtension)
    }
  }
  if result == "" {
    result = "Ok."
  }else{
    if warningCount == 1 {
      result += "1 warning"
    }else if warningCount > 1 {
      result += "\(warningCount) warnings"
    }
    if (warningCount > 0) && (errorCount > 0) {
      result += ", "
    }
    if errorCount == 1 {
      result += "1 error"
    }else if errorCount > 1 {
      result += "\(errorCount) errors"
    }
    result += "."
  }
  return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
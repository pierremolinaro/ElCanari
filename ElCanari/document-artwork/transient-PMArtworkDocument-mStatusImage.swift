//--- START OF USER ZONE 1

//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_PMArtworkDocument_mStatusImage (
       _ root_fileGenerationParameterArray_fileExtension : [ArtworkFileGenerationParameters_fileExtension],
       _ root_fileGenerationParameterArray_name : [ArtworkFileGenerationParameters_name]
) -> NSImage {
//--- START OF USER ZONE 2
  let n = root_fileGenerationParameterArray_fileExtension.count
  var error = false
  let warning = n == 0
  var fileExtensionSet = Set <String> ()
  var nameSet = Set <String> ()
  for i in 0 ..< n {
    let fileExtension = root_fileGenerationParameterArray_fileExtension [i].fileExtension
    let name = root_fileGenerationParameterArray_name [i].name
    if fileExtension == "" {
      error = true
    }else if fileExtensionSet.contains (fileExtension) {
      error = true
    }else{
      fileExtensionSet.insert (fileExtension)
    }
    if name == "" {
      error = true
    }else if nameSet.contains (name) {
      error = true
    }else{
      nameSet.insert (name)
    }
  }
  var result = NSImage (named: "green20")!
  if error {
    result = NSImage (named: "red20")!
  }else if warning {
    result = NSImage (named: "orange20")!
  }
  return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

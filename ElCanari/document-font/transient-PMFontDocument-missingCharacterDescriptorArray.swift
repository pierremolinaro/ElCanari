//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_PMFontDocument_missingCharacterDescriptorArray (_ self_2E_rootObject_2E_characters_0 : [FontCharacterEntity_characterIsDefined]) -> [MissingCharacter] {
//--- START OF USER ZONE 2
  var result = [MissingCharacter] ()
  var idx = 0x1F
  for c in self_2E_rootObject_2E_characters_0 {
    idx += 1
    switch c.characterIsDefined.prop {
    case .empty, .multiple :
      break
    case .single (let isDefined) :
      if !isDefined {
        let missingChar = MissingCharacter ()
        missingChar.idx.setProp (idx)
        missingChar.code.setProp ("\(idx) — 0x\(String (idx, radix: 16, uppercase: true))")
        let s = String (data: Data ([UInt8 (idx)]), encoding: .macOSRoman)! // ))"\(UnicodeScalar (idx)!)"
        missingChar.char.setProp (s)
        result.append (missingChar)
      }
    }
  }
  return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

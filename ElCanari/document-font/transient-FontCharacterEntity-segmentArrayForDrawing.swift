//--- START OF USER ZONE 1

import Cocoa

//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_FontCharacterEntity_segmentArrayForDrawing (_ inArg0 : [SegmentForFontCharacterEntity_segmentForDrawing]) -> CharacterSegmentListClass {
//--- START OF USER ZONE 2
  var result = [SegmentForFontCharacterClass] ()
  for object in inArg0 {
    switch object.segmentForDrawing_property_selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      result.append (v)
    }
  }
  return CharacterSegmentListClass (elements:result)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

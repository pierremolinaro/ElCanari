//--- START OF USER ZONE 1

import Cocoa

//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_FontCharacterEntity_segmentArrayForDrawing (_ self_2E_segments_0 : [SegmentForFontCharacterEntity_segmentForDrawing]) -> CharacterSegmentListClass {
//--- START OF USER ZONE 2
  var result = [SegmentForFontCharacterClass] ()
  for object in self_2E_segments_0 {
    switch object.segmentForDrawing.prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection(let v) :
      result.append (v)
    }
  }
  return CharacterSegmentListClass (elements:result)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

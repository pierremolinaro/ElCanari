//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_FontCharacterEntity_gerberCode (_ inArg0 : CharacterSegmentListClass) -> CharacterGerberCodeClass {
//--- START OF USER ZONE 2
  var elements = [CharacterGerberCodeElement] ()
  if inArg0.code.count > 0 {
    var x = -1000
    var y = -1000
    for segment in inArg0.code {
      let x1 = segment.x1
      let y1 = segment.y1
      let x2 = segment.x2
      let y2 = segment.y2
      if (x1 != x2) || (y1 != y2) { // Segment is not empty
        if (x1 != x) || (y1 != y) {
          elements.append (.moveTo (x: x1, y: y1))
        }
        elements.append (.lineTo (x: x2, y: y2))
        x = x2
        y = y2
      }
    }
  }
  return CharacterGerberCodeClass (elements: elements)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

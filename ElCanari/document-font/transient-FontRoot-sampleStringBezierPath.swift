//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_FontRoot_sampleStringBezierPath (
       _ self_nominalSize : Int,                
       _ self_characters_segmentArrayForDrawing : [FontCharacter_segmentArrayForDrawing],
       _ self_characters_advance : [FontCharacter_advance],
       _ prefs_sampleString : String,           
       _ prefs_sampleStringSize : Double
) -> NSBezierPath {
//--- START OF USER ZONE 2
  func toCocoa (_ value : Int) -> CGFloat {
    return CGFloat (value) * CGFloat (prefs_sampleStringSize) / CGFloat (self_nominalSize)
  }

  let sampleStringAsMacRomanData = prefs_sampleString.data (using: .macOSRoman, allowLossyConversion: true)!
  var currentX : CGFloat = 0.0
  let path = NSBezierPath ()
  for unicodeCharacter in sampleStringAsMacRomanData { // sampleStringASUnicodeArray {
    let characterIndex = Int (unicodeCharacter) - 32
    if characterIndex < self_characters_segmentArrayForDrawing.count {
      let segmentArrayDescriptor : FontCharacter_segmentArrayForDrawing = self_characters_segmentArrayForDrawing [characterIndex]
      if let segmentArray = segmentArrayDescriptor.segmentArrayForDrawing {
        for segment in segmentArray.code {
          path.move (to: NSPoint (x: currentX + toCocoa (segment.x1), y: toCocoa (segment.y1)))
          path.line (to: NSPoint (x: currentX + toCocoa (segment.x2), y: toCocoa (segment.y2)))
        }
      }
    }
    if characterIndex < self_characters_advance.count {
      currentX += toCocoa (self_characters_advance [characterIndex].advance)
    }
  }
  path.lineWidth = 2.0 * CGFloat (prefs_sampleStringSize) / CGFloat (self_nominalSize)
  return path
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------

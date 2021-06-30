//
//  CharacterSegmentListClass.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 23/11/2015.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Foundation

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class CharacterSegmentListClass : HashableBaseObject {

  //····················································································································

  let code : [SegmentForFontCharacterClass]
  
  //····················································································································

  init (elements : [SegmentForFontCharacterClass]) {
    code = elements
    super.init ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

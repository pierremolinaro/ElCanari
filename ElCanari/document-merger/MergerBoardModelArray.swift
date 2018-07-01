//
//  MergerBoardModelArray.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 30/06/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Foundation

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   MergerBoardModelArray
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class MergerBoardModelArray : EBSimpleClass {

  //····················································································································

  let modelNameArray : [String]

  //····················································································································

  init (_ inArray : [String]) {
    modelNameArray = inArray
    super.init ()
  }

  //····················································································································

  override var description : String {
    get {
      return "MergerBoardModelArray " + String (modelNameArray.count)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
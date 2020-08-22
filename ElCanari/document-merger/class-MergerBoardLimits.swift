//
//  StringArray.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 30/06/2018.
//
//
//----------------------------------------------------------------------------------------------------------------------

import Foundation

//----------------------------------------------------------------------------------------------------------------------
//   MergerBoardLimits
//----------------------------------------------------------------------------------------------------------------------

final class MergerBoardLimits : EBObject {

  //····················································································································

  let boardWidth : Int
  let boardHeight : Int
  let lineWidth : Int

  //····················································································································

  init (boardWidth inBoardWidth : Int, boardHeight inBoardHeight : Int, lineWidth inLineWidth : Int) {
    boardWidth = inBoardWidth
    boardHeight = inBoardHeight
    lineWidth = inLineWidth
    super.init ()
  }

  //····················································································································

  override init () {
    boardWidth = 0
    boardHeight = 0
    lineWidth = 0
    super.init ()
  }

  //····················································································································

  override var description : String {
    get {
      return "MergerBoardLimits " + String (boardWidth) + " " + String (boardHeight) + " " + String (lineWidth)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

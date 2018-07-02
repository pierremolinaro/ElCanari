//
//  CanariBoardRect.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 02/07/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Foundation

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  Struct CanariBoardRect
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct CanariBoardRect {
  let x : Int
  let y : Int
  let width : Int
  let height : Int

  //····················································································································
  //   init
  //····················································································································

  init (x inX : Int, y inY : Int, width inWidth : Int, height inHeight : Int) {
    x = inX
    y = inY
    width = inWidth
    height = inHeight
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

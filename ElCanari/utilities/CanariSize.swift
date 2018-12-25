//
//  CanariSize.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 21/11/2018.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Foundation

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  Struct CanariSize
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct CanariSize : Equatable, Hashable {
  var width : Int
  var height : Int

  //····················································································································
  //   init
  //····················································································································

  init () {
    width = 0
    height = 0
  }

  //····················································································································

  init (width inWidth : Int, height inHeight : Int) {
    width = inWidth
    height = inHeight
  }

  //····················································································································
  //   Protocol Equatable
  //····················································································································

  public static func == (lhs: CanariSize, rhs: CanariSize) -> Bool {
    return (lhs.width == rhs.width) && (lhs.height == rhs.height)
  }

  //····················································································································
  //   Protocol Hashable: hashValue
  //····················································································································

//  var hashValue : Int {
//    return self.width ^ self.height
//  }
  public func hash (into hasher: inout Hasher) {
    self.width.hash (into: &hasher)
    self.height.hash (into: &hasher)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

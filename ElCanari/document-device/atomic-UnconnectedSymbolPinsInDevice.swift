//
//  atomic-UnconnectedSymbolPinsInDevice.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 08/03/2019.
//
//----------------------------------------------------------------------------------------------------------------------

import Foundation

//----------------------------------------------------------------------------------------------------------------------

typealias UnconnectedSymbolPinsInDevice = [UnconnectedSymbolPin]

//----------------------------------------------------------------------------------------------------------------------

struct UnconnectedSymbolPin : Hashable {

  //····················································································································

  let symbolInstanceName : String
  let pinName : String

  //····················································································································

  init (symbolInstanceName inSymbolInstanceName : String, pinName inPinName : String) {
    symbolInstanceName = inSymbolInstanceName
    pinName = inPinName
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

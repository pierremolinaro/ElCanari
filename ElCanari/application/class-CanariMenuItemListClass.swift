//
//  class-CanariMenuItemListClass.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 20/11/2016.
//
//
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

@objc (CanariMenuItemListClass) final class CanariMenuItemListClass : ObjcObject {

  //····················································································································

  let items : [String]

  //····················································································································
  // init
  //····················································································································

  init (items : [String]) {
    self.items = items
    super.init ()
  }

  //····················································································································
  
}

//----------------------------------------------------------------------------------------------------------------------

//
//  AutoLayoutMenuItemDescriptor.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 07/02/2021.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Foundation

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct AutoLayoutMenuItemDescriptor {

  //····················································································································

  let title : String
  let target : NSObject?
  let selector : Selector?
  let expression : EBMultipleBindingBooleanExpression

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

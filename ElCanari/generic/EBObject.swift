//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    EBObject class
//----------------------------------------------------------------------------------------------------------------------

private var gEasyBindingsObjectIndex = 0

//······················································································································

class EBObject : NSObject, EBUserClassNameProtocol {
  let ebObjectIndex : Int

  //····················································································································

  override init () {
    ebObjectIndex = gEasyBindingsObjectIndex
    gEasyBindingsObjectIndex += 1
    super.init ()
    noteObjectAllocation (self)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension AutoLayoutPackageDocument {
  @objc func setDimensionTextOriginAtMidXAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    for object in self.mPackageObjectsController.selectedGraphicObjectSet {
      if let dim = object as? PackageDimension {
        dim.xDimension = 0
      }
    }
//--- END OF USER ZONE 2
  }
}

//----------------------------------------------------------------------------------------------------------------------

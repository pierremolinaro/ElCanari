//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension PackageDocument {
  @objc func resetModelImagePointsAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    //--- Reset point image
      self.rootObject.mPointsAreLocked = false
      self.rootObject.reset_mModelImageFirstPointXOnLock_toDefaultValue ()
      self.rootObject.reset_mModelImageFirstPointYOnLock_toDefaultValue ()
      self.rootObject.reset_mModelImageScale_toDefaultValue ()
      self.rootObject.reset_mModelImageRotationInRadians_toDefaultValue ()
      self.rootObject.reset_mPointsAreLocked_toDefaultValue ()
      self.rootObject.reset_mModelPointsCircleRadius_toDefaultValue ()
      self.mModelImageView?.mBackgroundImageAffineTransform =  NSAffineTransform ()
      self.mComposedPackageView?.mBackgroundImageAffineTransform = NSAffineTransform ()
    //---
      self.buildGreenAndBluePoints ()
//--- END OF USER ZONE 2
  }
}

//----------------------------------------------------------------------------------------------------------------------

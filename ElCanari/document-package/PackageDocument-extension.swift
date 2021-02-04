//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension AutoLayoutPackageDocument {

  //····················································································································

  @objc func buildGreenAndBluePoints () {
    self.rootObject.mModelImageDoublePoint = nil
    self.rootObject.mModelImageObjects = []
    let pp = PackageModelImageDoublePoint (self.ebUndoManager)
    self.rootObject.mModelImageDoublePoint = pp
    self.rootObject.mModelImageObjects = []
    self.rootObject.mModelImageObjects = [pp]
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

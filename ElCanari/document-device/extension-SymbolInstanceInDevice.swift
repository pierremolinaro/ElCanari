//
//  extension-SymbolInstanceInDevice.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 07/03/2019.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION SymbolInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension SymbolInstanceInDevice {

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return ((self.mX + inDx) >= 0) && ((self.mY + inDy) >= 0)
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int) {
    self.mX += inDx
    self.mY += inDy
  }

  //····················································································································

//  override func operationAfterRemoving () {
//    super.operationAfterRemoving ()
//    for pad in self.mMasterPads_property.propval {
//      pad.cleanUpRelationshipsAndRemoveAllObservers ()
//    }
//    for pad in self.mSlavePads_property.propval {
//      pad.cleanUpRelationshipsAndRemoveAllObservers ()
//    }
//    self.cleanUpRelationshipsAndRemoveAllObservers ()
//  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

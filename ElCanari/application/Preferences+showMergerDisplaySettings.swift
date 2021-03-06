//
//  Preferences+showMergerDisplaySettings.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 29/06/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Preferences {
  
  //····················································································································

  func showMergerDisplaySettings () {
    self.mPrefsWindow?.makeKeyAndOrderFront (nil)
    self.mToolbar?.selectViewFromIndex (MERGER_PREFS_INDEX)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_Preferences_mValueRevealInFinder_devices (
       _ self_usesUserLibrary : Bool,                  
       _ self_additionnalLibraryArray_mUses : [CanariLibraryEntry_mUses],
       _ self_additionnalLibraryArray_mPath : [CanariLibraryEntry_mPath]
) -> CanariMenuItemListClass {
//--- START OF USER ZONE 2
  var items = [String] ()
//  if self_2E_usesSystemLibrary_0 {
//    items.append (deviceLibraryPathForPath (systemLibraryPath ()))
//  }
  if self_usesUserLibrary {
    items.append (deviceLibraryPathForPath (userLibraryPath ()))
  }
  var idx = 0
  while idx < self_additionnalLibraryArray_mUses.count {
    if self_additionnalLibraryArray_mUses [idx].mUses {
      items.append (deviceLibraryPathForPath (self_additionnalLibraryArray_mPath [idx].mPath))
    }
    idx += 1
  }
  return CanariMenuItemListClass (items: items)

//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

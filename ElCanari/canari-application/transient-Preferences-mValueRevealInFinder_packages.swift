//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_Preferences_mValueRevealInFinder_packages (_ inArg0 : Bool,
                                                        _ inArg1 : [CanariLibraryEntry_mUses],
                                                        _ inArg2 : [CanariLibraryEntry_mPath]) -> CanariMenuItemListClass {
//--- START OF USER ZONE 2
  var items = [String] ()
//  if self_2E_usesSystemLibrary_0 {
//    items.append (packageLibraryPathForPath (systemLibraryPath ()))
//  }
  if inArg0 {
    items.append (packageLibraryPathForPath (userLibraryPath ()))
  }
  var idx = 0
  while idx < inArg1.count {
    if inArg1 [idx].mUses {
      items.append (packageLibraryPathForPath (inArg2 [idx].mPath))
    }
    idx += 1
  }
  return CanariMenuItemListClass (items: items)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

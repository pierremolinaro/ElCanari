//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension AutoLayoutPackageDocument {
  final func configure_addPackageSlavePad (_ inOutlet : AutoLayoutDragSourceButton) {
//--- START OF USER ZONE 2
    inOutlet.register (
      draggedType: packagePasteboardType,
      draggedObjectFactory: { [weak self] in return self?.makeSlavePad () },
      scaleProvider: self.mPackageObjectsController
    )
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

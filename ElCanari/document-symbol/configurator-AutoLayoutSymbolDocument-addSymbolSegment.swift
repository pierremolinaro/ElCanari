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

extension AutoLayoutSymbolDocument {
  final func configure_addSymbolSegment (_ inOutlet : AutoLayoutDragSourceButton) {
//--- START OF USER ZONE 2
    inOutlet.register (
      draggedType: symbolPasteboardType,
      draggedObjectFactory: { return (SymbolSegment (nil), NSDictionary ()) },
      scaleProvider: self.mSymbolObjectsController
    )
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

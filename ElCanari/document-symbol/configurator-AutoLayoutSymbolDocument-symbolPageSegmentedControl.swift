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
  final func configure_symbolPageSegmentedControl (_ inOutlet : AutoLayoutSegmentedControlWithPages) {
//--- START OF USER ZONE 2
         inOutlet.setImage (NSImage (named: "editorInspector"), forSegment: 0)
         inOutlet.setImageScaling (.scaleProportionallyUpOrDown, forSegment: 0)
         inOutlet.setLabel ("", forSegment: 0)

         inOutlet.setImage (NSImage (named: "magnifyingGlass"), forSegment: 1)
         inOutlet.setImageScaling (.scaleProportionallyUpOrDown, forSegment: 1)
         inOutlet.setLabel ("", forSegment: 1)

         inOutlet.setImage (NSImage (named: "magnifyingGlass"), forSegment: 2)
         inOutlet.setImageScaling (.scaleProportionallyUpOrDown, forSegment: 2)
         inOutlet.setLabel ("P", forSegment: 2)

         inOutlet.setImage (NSImage (named: "NSStatusAvailable"), forSegment: 3)
         inOutlet.setImageScaling (.scaleProportionallyUpOrDown, forSegment: 3)
         inOutlet.setLabel ("", forSegment: 3)
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension SymbolDocument {
  @objc func addOvalAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    let newOval = SymbolOval (managedObjectContext: self.managedObjectContext())
    self.rootObject.symbolObjects_property.add (newOval)
    self.mSymbolObjectsController.select (object: newOval)
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

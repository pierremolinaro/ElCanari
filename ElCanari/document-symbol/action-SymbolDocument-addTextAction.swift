//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension SymbolDocument {
  @objc func addTextAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    let newText = SymbolText (managedObjectContext: self.managedObjectContext())
    self.rootObject.symbolObjects_property.add (newText)
    self.mSymbolObjectsController.select (object: newText)
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
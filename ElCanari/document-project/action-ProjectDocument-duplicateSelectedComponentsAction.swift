//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension ProjectDocument {
  @objc func duplicateSelectedComponentsAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
        var newComponents = [ComponentInProject] ()
        for selectedComponent in self.mComponentController.selectedArray_property.propval {
          let newComponent = self.duplicate (component: selectedComponent)
          newComponents.append (newComponent)
        }
        self.mComponentController.setSelection (newComponents)
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

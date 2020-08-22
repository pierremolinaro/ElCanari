//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ComponentInProject_unplacedSymbols (
       _ self_componentName : String,              
       _ self_mSymbols : [EBManagedObject_alloc_index_protocol],
       _ self_mSymbols_symbolInSchematic : [ComponentSymbolInProject_symbolInSchematic],
       _ self_mSymbols_mSymbolInstanceName : [ComponentSymbolInProject_mSymbolInstanceName],
       _ self_mSymbols_mSymbolTypeName : [ComponentSymbolInProject_mSymbolTypeName],
       _ self_mComponentValue : String
) -> StringTagArray {
//--- START OF USER ZONE 2
        var result = StringTagArray ()
        var idx = 0
        while idx < self_mSymbols_mSymbolInstanceName.count {
          let inSchematics = self_mSymbols_symbolInSchematic [idx].symbolInSchematic!
          if !inSchematics {
            let ebObjectIndex = self_mSymbols [idx].ebObjectIndex
            let symbolInstanceName = self_mSymbols_mSymbolInstanceName [idx].mSymbolInstanceName
            let symbolTypeName = self_mSymbols_mSymbolTypeName [idx].mSymbolTypeName
            var name = self_componentName
            if symbolInstanceName != "" {
              name += ":" + symbolInstanceName
            }
            name += " (" + symbolTypeName
            if self_mComponentValue != "" {
              name += ", " + self_mComponentValue
            }
            name += ")"
            result.append (StringTag (string: name, tag: ebObjectIndex))
          }
          idx += 1
        }
        return result
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------

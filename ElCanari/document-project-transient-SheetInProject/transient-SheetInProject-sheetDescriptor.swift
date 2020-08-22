//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_SheetInProject_sheetDescriptor (
       _ self_mRoot_sheetGeometry : SchematicSheetGeometry?,
       _ self_mRoot_sheetIndexes : IntArray?,  
       _ self_ebObjectIndex : Int
) -> SchematicSheetDescriptor {
//--- START OF USER ZONE 2
        let geometry = self_mRoot_sheetGeometry!
        let sheetIndex = 1 + (self_mRoot_sheetIndexes?.firstIndex (of: self_ebObjectIndex) ?? -1)
        return SchematicSheetDescriptor (
          geometry: geometry,
          sheetIndex: sheetIndex
        )
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------

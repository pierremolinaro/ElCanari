//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PointInSchematic_netInfoForPoint (
       _ self_mLabels_count : Int,               
       _ self_mSymbolPinName : String,           
       _ self_mWiresP1s : [EBManagedObject_alloc_index_protocol],
       _ self_mWiresP2s : [EBManagedObject_alloc_index_protocol],
       _ self_location : CanariPoint,            
       _ self_mSheet_sheetDescriptor : SchematicSheetDescriptor?
) -> NetInfoPoint {
//--- START OF USER ZONE 2
      //--- Wires
        var wireIndexSet = Set <Int> ()
        for wire in self_mWiresP1s {
          wireIndexSet.insert (wire.ebObjectIndex)
        }
        for wire in self_mWiresP2s {
          wireIndexSet.insert (wire.ebObjectIndex)
        }
      //--- Location in sheet
        var locationInSheetString = ""
        if let sheetDescriptor = self_mSheet_sheetDescriptor {
          let gutterWidth = cocoaToCanariUnit (SCHEMATIC_GUTTER_WIDTH_COCOA_UNIT)
          let gutterHeight = cocoaToCanariUnit (SCHEMATIC_GUTTER_HEIGHT_COCOA_UNIT)
          var column = 0
          if self_location.x >= gutterWidth {
            column = (self_location.x - gutterWidth) * sheetDescriptor.horizontalDivisions / sheetDescriptor.size.width
          }
          var line = 0
          if self_location.y >= gutterHeight {
            line = (self_location.y - gutterHeight) * sheetDescriptor.verticalDivisions / sheetDescriptor.size.height
          }
          locationInSheetString = "\(sheetDescriptor.sheetIndex)\(UnicodeScalar (0x41 + column)!)\(line)"
        }
      //--- Labels
        var labelArray = StringArray ()
        if self_mLabels_count > 0 {
          labelArray.append (locationInSheetString)
        }
        var pin : String? = nil
        if self_mSymbolPinName != "" {
          pin = locationInSheetString + ":" + self_mSymbolPinName
        }
        return NetInfoPoint (pin: pin, labels: labelArray, wires: wireIndexSet)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

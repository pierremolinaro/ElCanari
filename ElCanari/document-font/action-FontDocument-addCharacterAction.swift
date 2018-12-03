//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension FontDocument {
  @objc func addCharacterAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    if let window = self.windowForSheet, let panel = self.mNewCharacterPanel {
    //--- Populate table view
      var implementedCharacterSet = Set <Int> ()
      for character in rootObject.characters_property.propval {
        implementedCharacterSet.insert (character.codePoint)
      }
      self.mNewCharacterView?.setImplementedCharacterSet (implementedCharacterSet)
    //--- Display sheet
      window.beginSheet (panel, completionHandler: { (response : NSApplication.ModalResponse) in
        if response == NSApplication.ModalResponse.stop, let codePoint = self.mNewCharacterView?.selectedCharacter {
          var characterSet = self.rootObject.characters_property.propval
          let newCharacter = FontCharacter (self.ebUndoManager, file: #file, #line)
          newCharacter.codePoint = codePoint
          characterSet.append (newCharacter)
          characterSet = characterSet.sorted (by :{$0.codePoint < $1.codePoint})
          self.rootObject.characters_property.setProp (characterSet)
          g_Preferences?.currentCharacterCodePoint = codePoint
        }
      })
    }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

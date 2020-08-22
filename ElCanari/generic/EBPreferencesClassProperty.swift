//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBPreferencesClassProperty <T>
//----------------------------------------------------------------------------------------------------------------------

final class EBPreferencesClassProperty <T : ClassPropertyProtocol> : EBStoredClassProperty <T> {

 //····················································································································

  private var mPreferenceKey : String

 //····················································································································

  init (defaultValue inValue : T, prefKey inPreferenceKey : String) {
    mPreferenceKey = inPreferenceKey
    super.init (defaultValue: inValue)
  //--- Read value from preferences
    let possibleValue = UserDefaults.standard.object (forKey: inPreferenceKey)
    if let value = possibleValue as? Data, let unarchivedValue = T.unarchiveFromData (data: value) as? T {
      self.setProp (unarchivedValue)
    }else if let value = possibleValue as? String, let unarchivedValue = T.unarchiveFromString (string: value) as? T {
      self.setProp (unarchivedValue)
    }
  }

  //····················································································································

  override func postEvent () {
    UserDefaults.standard.set (self.propval.archiveToString (), forKey: self.mPreferenceKey)
    super.postEvent ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBStoredEnumProperty <T>
//----------------------------------------------------------------------------------------------------------------------

final class EBStoredEnumProperty <T : EnumPropertyProtocol> : EBReadWriteEnumProperty <T> {

  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK
  fileprivate var mPreferenceKey : String?
  var mSetterDelegate : ((_ inValue : T) -> Void)?

  //····················································································································

  var mValueExplorer : NSTextField? {
    didSet {
      self.mValueExplorer?.stringValue = "\(mValue)"
    }
  }

  //····················································································································

  init (defaultValue inValue : T) {
    mValue = inValue
    mPreferenceKey = nil
    mSetterDelegate = nil
    super.init ()
  }

  //····················································································································

  init (defaultValue inValue : T, prefKey inPreferenceKey : String) {
    mValue = inValue
    mPreferenceKey = inPreferenceKey
    mSetterDelegate = nil
    super.init ()
  //--- Read from preferences
    let possibleValue = UserDefaults.standard.object (forKey: inPreferenceKey)
    if let value = possibleValue as? NSObject {
      setProp (T.convertFromNSObject (object: value))
    }
  }

 //····················································································································

  init (defaultValue inValue : T, setterDelegate inSetterDelegate : @escaping (_ inValue : T) -> Void) {
    mValue = inValue
    mPreferenceKey = nil
    mSetterDelegate = inSetterDelegate
    super.init ()
  }

  //····················································································································

  private var mValue : T {
    didSet {
      if self.mValue != oldValue {
        self.mSetterDelegate? (self.mValue)
        if let prefKey = self.mPreferenceKey {
          UserDefaults.standard.set (mValue.convertToNSObject (), forKey:prefKey)
        }
        self.mValueExplorer?.stringValue = "\(mValue)"
        self.ebUndoManager?.registerUndo (withTarget: self) { $0.mValue = oldValue }
        if logEvents () {
          appendMessageString ("Property \(explorerIndexString (self.ebObjectIndex)) did change value to \(mValue)\n")
        }
        self.postEvent ()
        self.clearSignatureCache ()
      }
    }
  }

  //····················································································································

  override var prop : EBSelection<T> { return .single (mValue) }

  //····················································································································

  var propval : T { return self.mValue }

  //····················································································································

  override func setProp (_ value : T) { self.mValue = value }

  //····················································································································

  var validationFunction : (T, T) -> EBValidationResult <T> = defaultValidationFunction

  //····················································································································

  override func validateAndSetProp (_ candidateValue : T,
                                    windowForSheet inWindow:NSWindow?) -> Bool {
    var result = true
    let validationResult = validationFunction (propval, candidateValue)
    switch validationResult {
    case .ok (let validatedValue) :
      setProp (validatedValue)
    case .rejectWithBeep :
      result = false
      __NSBeep ()
    case .rejectWithAlert (let informativeText) :
      result = false
      let alert = NSAlert ()
      alert.messageText = "The value " + String (describing: candidateValue) + " is invalid."
      alert.informativeText = informativeText
      alert.addButton (withTitle: "Ok")
      alert.addButton (withTitle: "Discard Change")
      if let window = inWindow {
        alert.beginSheetModal (for:window) { (response : NSApplication.ModalResponse) in
          if response == .alertSecondButtonReturn { // Discard Change
            self.postEvent ()
          }
        }
      }else{
        alert.runModal ()
      }
    }
    return result
  }

  //····················································································································

  func storeIn (dictionary : NSMutableDictionary, forKey inKey : String) {
    dictionary.setValue (mValue.convertToNSObject (), forKey:inKey)
  }

  //····················································································································

  func readFrom (dictionary : NSDictionary, forKey inKey : String) {
    let possibleValue = dictionary.object (forKey:inKey)
    if let value = possibleValue as? NSObject {
      self.setProp (T.convertFromNSObject (object: value))
    }
  }

  //····················································································································
  //    SIGNATURE
  //····················································································································

  final private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK
  final private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer : EBSignatureObserverProtocol?) {
    self.mSignatureObserver?.clearSignatureCache ()
    self.mSignatureObserver = observer
    observer?.clearSignatureCache ()
    self.clearSignatureCache ()
  }

  //····················································································································

  final private func clearSignatureCache () {
    if self.mSignatureCache != nil {
      self.mSignatureCache = nil
      self.mSignatureObserver?.clearSignatureCache ()
    }
  }

  //····················································································································

  final func signature () -> UInt32 {
    let computedSignature : UInt32
    if let s = self.mSignatureCache {
      computedSignature = s
    }else{
      computedSignature = propval.ebHashValue ()
      self.mSignatureCache = computedSignature
    }
    return computedSignature
  }

  //····················································································································
}

//----------------------------------------------------------------------------------------------------------------------

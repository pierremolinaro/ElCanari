//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBPropertyEnumProxy <T : EnumPropertyProtocol>
//----------------------------------------------------------------------------------------------------------------------

final class EBPropertyEnumProxy <T : EnumPropertyProtocol> : EBReadWriteEnumProperty <T> {

  //····················································································································

  var mReadModelFunction : Optional < () -> EBSelection <T> > = nil
  var mWriteModelFunction : Optional < (T) -> Void > = nil
  var mValidateAndWriteModelFunction : Optional < (T, NSWindow?) -> Bool > = nil
  private var mCachedValue : EBSelection <T>? = nil

  //····················································································································

  var mValueExplorer : NSTextField? {
    didSet {
      self.updateValueExplorer (possibleValue: self.mCachedValue)
    }
  }

  //····················································································································

  private func updateValueExplorer (possibleValue : EBSelection <T>?) {
    if let value = possibleValue {
      switch value {
      case .empty :
        self.mValueExplorer?.stringValue = "-"
      case .multiple :
        self.mValueExplorer?.stringValue = "-"
      case .single (let value) :
        self.mValueExplorer?.stringValue = "\(value)"
      }
    }else{
      self.mValueExplorer?.stringValue = "nil"
    }
  }

  //····················································································································

  override func postEvent () {
    if self.mCachedValue != nil {
      self.mCachedValue = nil
      if logEvents () {
        appendMessageString ("Proxy \(explorerIndexString (self.ebObjectIndex)) propagation\n")
      }
      super.postEvent ()
    }else if logEvents () {
      appendMessageString ("Proxy \(explorerIndexString (self.ebObjectIndex)) nil\n")
    }
  }

  //····················································································································

  override var selection : EBSelection <T> {
    if let unReadModelFunction = self.mReadModelFunction, self.mCachedValue == nil {
      self.mCachedValue = unReadModelFunction ()
      self.updateValueExplorer (possibleValue: self.mCachedValue)
    }
    if self.mCachedValue == nil {
      self.mCachedValue = .empty
    }
    return self.mCachedValue!
  }

  //····················································································································

  override func setProp (_ value : T) {
    if let unWriteModelFunction = self.mWriteModelFunction {
      unWriteModelFunction (value)
    }
  }

  //····················································································································

  override func validateAndSetProp (_ candidateValue : T,
                                    windowForSheet inWindow:NSWindow?) -> Bool {
    var result = false
    if let unwValidateAndWriteModelFunction = self.mValidateAndWriteModelFunction {
      result = unwValidateAndWriteModelFunction (candidateValue, inWindow)
    }
    return result
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

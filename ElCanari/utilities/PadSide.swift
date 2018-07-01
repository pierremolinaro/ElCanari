//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum PadSide : Int {
  case traversing = 0
  case front = 1
  case back = 2


  func descriptionForExplorer () -> String {
    switch self {
      case .traversing : return "traversing" // 0
      case .front : return "front" // 1
      case .back : return "back" // 2
    }
  }

  func enumfromRawValue (rawValue : Int) -> PadSide {
    var result = self
    let v : PadSide? = PadSide (rawValue:rawValue) ;
    if let unwrappedV = v {
      result = unwrappedV
    }
    return result
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBReadOnlyProperty_PadSide
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBReadOnlyProperty_PadSide : EBAbstractProperty, EBReadOnlyEnumPropertyProtocol {

  var prop : EBSelection <PadSide> { get { return .empty } } // Abstract method

  func rawValue () -> Int { return PadSide.traversing.rawValue }  // Abstract method

  func count () -> Int { return 3 }

  //····················································································································

  func compare (other : EBReadOnlyProperty_PadSide) -> ComparisonResult {
    switch prop {
    case .empty :
      switch other.prop {
      case .empty :
        return .orderedSame
      default:
        return .orderedAscending
      }
    case .multiple :
      switch other.prop {
      case .empty :
        return .orderedDescending
      case .multiple :
        return .orderedSame
     case .single (_) :
        return .orderedAscending
     }
   case .single (let currentValue) :
      switch other.prop {
      case .empty, .multiple :
        return .orderedDescending
      case .single (let otherValue) :
        if currentValue.rawValue < otherValue.rawValue {
          return .orderedAscending
        }else if currentValue.rawValue > otherValue.rawValue {
          return .orderedDescending
        }else{
          return .orderedSame
        }
      }
    }
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBStoredProperty_PadSide
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBStoredProperty_PadSide : EBReadOnlyProperty_PadSide, EBEnumPropertyProtocol {
  weak var undoManager : UndoManager?

  var mValueExplorer : NSTextField? {
    didSet {
      mValueExplorer?.stringValue = mValue.descriptionForExplorer ()
    }
  }

  init (_ inValue : PadSide) {
    mValue = inValue
    super.init ()
  }

  private var mValue : PadSide {
    didSet {
      if mValue != oldValue {
        mValueExplorer?.stringValue = mValue.descriptionForExplorer ()
        undoManager?.registerUndo (withTarget: self, selector: #selector(performUndo(_:)), object:NSNumber (value: oldValue.rawValue))
        postEvent ()
        clearSignatureCache ()
      }
    }
  }

  func performUndo (_ oldValue : NSNumber) {
    if let v = PadSide (rawValue:oldValue.intValue) {
      mValue = v
    }
  }

  override var prop : EBSelection <PadSide> { get { return .single (mValue) } }

  var propval : PadSide { get { return mValue } }

  func setProp (_ value: PadSide) { mValue = value }

  override func rawValue () -> Int {
    return mValue.rawValue
  }

  func setFromRawValue (_ rawValue : Int) {
    if let v = PadSide (rawValue:rawValue) {
      mValue = v
    }
  }

  func readInPreferencesWithKey (inKey : String) {
    let ud = UserDefaults.standard
    let value : Any? = ud.object (forKey: inKey)
    if let unwValue : Any = value, unwValue is NSNumber {
      setFromRawValue ((unwValue as! NSNumber).intValue)
    }
  }
  
  func storeInPreferencesWithKey (inKey : String) {
    let ud = UserDefaults.standard
    ud.set (NSNumber (value: mValue.rawValue), forKey:inKey)
  }

  func storeIn (dictionary: NSMutableDictionary, forKey inKey:String) {
    dictionary.setValue (NSNumber (value: mValue.rawValue), forKey:inKey)
  }

  func readFrom (dictionary:NSDictionary, forKey inKey:String) {
    let value : Any? = dictionary.object (forKey: inKey)
    if let unwValue : Any = value, unwValue is NSNumber {
      setFromRawValue ((unwValue as! NSNumber).intValue)
    }
  }

  //····················································································································
 
  var validationFunction : (PadSide, PadSide) -> EBValidationResult <PadSide> = defaultValidationFunction
  
  func validate (proposedValue : PadSide) -> EBValidationResult <PadSide> {
    return validationFunction (propval, proposedValue)
  }

  //····················································································································
  //    SIGNATURE
  //····················································································································

  final private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil
  final private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer : EBSignatureObserverProtocol) {
    mSignatureObserver = observer
  }

  //····················································································································

  final private func clearSignatureCache () {
    if mSignatureCache != nil {
      mSignatureCache = nil
      mSignatureObserver?.clearSignatureCache ()
    }
  }

  //····················································································································

  final func signature () -> UInt32 {
    let computedSignature : UInt32
    if let s = mSignatureCache {
      computedSignature = s
    }else{
      computedSignature = mValue.rawValue.ebHashValue ()
      mSignatureCache = computedSignature
    }
    return computedSignature
  }
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBTransientProperty_PadSide
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBTransientProperty_PadSide : EBReadOnlyProperty_PadSide {
  private var mValueCache : EBSelection <PadSide>?

  var computeFunction : Optional<() -> EBSelection <PadSide> >
  
  override init () {
    super.init ()
  }

  override var prop : EBSelection <PadSide> {
    get {
      if mValueCache == nil {
        if let unwrappedComputeFunction = computeFunction {
          mValueCache = unwrappedComputeFunction ()
        }else{
          mValueCache = .empty
        }
      }
      return mValueCache!
    }
  }

  override func postEvent () {
    if mValueCache != nil {
      mValueCache = nil
      super.postEvent ()
    }
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

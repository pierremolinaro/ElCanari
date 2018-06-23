//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum TrackSide : Int {
  case front = 0
  case back = 1


  func descriptionForExplorer () -> String {
    switch self {
      case .front : return "front" // 0
      case .back : return "back" // 1
    }
  }

  func enumfromRawValue (rawValue : Int) -> TrackSide {
    var result = self
    let v : TrackSide? = TrackSide (rawValue:rawValue) ;
    if let unwrappedV = v {
      result = unwrappedV
    }
    return result
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBReadOnlyProperty_TrackSide
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBReadOnlyProperty_TrackSide : EBAbstractProperty, EBReadOnlyEnumPropertyProtocol {

  var prop : EBProperty <TrackSide> { get { return .noSelection } } // Abstract method

  func rawValue () -> Int { return TrackSide.front.rawValue }  // Abstract method

  func count () -> Int { return 2 }

  //····················································································································

  func compare (other : EBReadOnlyProperty_TrackSide) -> ComparisonResult {
    switch prop {
    case .noSelection :
      switch other.prop {
      case .noSelection :
        return .orderedSame
      default:
        return .orderedAscending
      }
    case .multipleSelection :
      switch other.prop {
      case .noSelection :
        return .orderedDescending
      case .multipleSelection :
        return .orderedSame
     case .singleSelection (_) :
        return .orderedAscending
     }
   case .singleSelection (let currentValue) :
      switch other.prop {
      case .noSelection, .multipleSelection :
        return .orderedDescending
      case .singleSelection (let otherValue) :
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
//    EBStoredProperty_TrackSide
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBStoredProperty_TrackSide : EBReadOnlyProperty_TrackSide, EBEnumPropertyProtocol {
  weak var undoManager : UndoManager?

  var mValueExplorer : NSTextField? {
    didSet {
      mValueExplorer?.stringValue = mValue.descriptionForExplorer ()
    }
  }

  init (_ inValue : TrackSide) {
    mValue = inValue
    super.init ()
  }

  private var mValue : TrackSide {
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
    if let v = TrackSide (rawValue:oldValue.intValue) {
      mValue = v
    }
  }

  override var prop : EBProperty <TrackSide> { get { return .singleSelection (mValue) } }

  var propval : TrackSide { get { return mValue } }

  func setProp (_ value: TrackSide) { mValue = value }

  override func rawValue () -> Int {
    return mValue.rawValue
  }

  func setFromRawValue (_ rawValue : Int) {
    if let v = TrackSide (rawValue:rawValue) {
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
 
  var validationFunction : (TrackSide, TrackSide) -> EBValidationResult <TrackSide> = defaultValidationFunction
  
  func validate (proposedValue : TrackSide) -> EBValidationResult <TrackSide> {
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
//    EBTransientProperty_TrackSide
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBTransientProperty_TrackSide : EBReadOnlyProperty_TrackSide {
  private var mValueCache : EBProperty <TrackSide>?

  var computeFunction : Optional<() -> EBProperty <TrackSide> >
  
  override init () {
    super.init ()
  }

  override var prop : EBProperty <TrackSide> {
    get {
      if mValueCache == nil {
        if let unwrappedComputeFunction = computeFunction {
          mValueCache = unwrappedComputeFunction ()
        }else{
          mValueCache = .noSelection
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

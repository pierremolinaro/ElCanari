//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Class: CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class CanariLibraryEntry : EBSimpleClass,
  CanariLibraryEntry_mPath,
  CanariLibraryEntry_mUses {
  //····················································································································
  //   Accessing mPath stored property
  //····················································································································

  var mPath : String {
    get {
      return self.mPath_property.propval
    }
    set {
      self.mPath_property.setProp (newValue)
    }
  }

  var mPath_property_selection : EBSelection <String> {
    get {
      return self.mPath_property.prop
    }
  }

  //····················································································································
  //   Accessing mUses stored property
  //····················································································································

  var mUses : Bool {
    get {
      return self.mUses_property.propval
    }
    set {
      self.mUses_property.setProp (newValue)
    }
  }

  var mUses_property_selection : EBSelection <Bool> {
    get {
      return self.mUses_property.prop
    }
  }

  //····················································································································
  //   Accessing mStatusImage transient property
  //····················································································································

  var mStatusImage_property_selection : EBSelection <NSImage> {
    get {
      return self.mStatusImage_property.prop
    }
  }

  //····················································································································
  //    Stored Properties
  //····················································································································

  var mPath_property = EBStoredProperty_String ("Hello")

  //····················································································································

  var mUses_property = EBStoredProperty_Bool (true)

  //····················································································································
  //    Transient properties
  //····················································································································

  var mStatusImage_property = EBTransientProperty_NSImage ()

  //····················································································································
  //    Extern delegates
  //····················································································································

  var mExternDelegate0 : CanariLibraryEntryDelegate? = nil

  //····················································································································
  //    init
  //····················································································································

  override init () {
    super.init ()
  //--- Install compute functions for transients
    mStatusImage_property.readModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mPath_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.mPath_property_selection) {
          case (.single (let v0)) :
            return .single (transient_CanariLibraryEntry_mStatusImage (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
  //--- Install property observers for transients
    self.mPath_property.addEBObserver (mStatusImage_property)
  //--- Extern functions
  //--- Extern delegates
    mExternDelegate0 = CanariLibraryEntryDelegate (object:self)
  }

  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    super.populateExplorerWindow (&y, view:view)
    createEntryForPropertyNamed (
      "mPath",
      idx:self.mPath_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mPath_property.mObserverExplorer,
      valueExplorer:&self.mPath_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mUses",
      idx:self.mUses_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mUses_property.mObserverExplorer,
      valueExplorer:&self.mUses_property.mValueExplorer
    )
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
    self.mPath_property.mObserverExplorer = nil
    self.mPath_property.mValueExplorer = nil
    self.mUses_property.mObserverExplorer = nil
    self.mUses_property.mValueExplorer = nil
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveInto (dictionary : NSMutableDictionary) {
    super.saveInto (dictionary: dictionary)
    self.mPath_property.storeIn (dictionary: dictionary, forKey: "mPath")
    self.mUses_property.storeIn (dictionary: dictionary, forKey: "mUses")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUp (withDictionary dictionary : NSDictionary) {
    super.setUp (withDictionary: dictionary)
    self.mPath_property.readFrom (dictionary: dictionary, forKey:"mPath")
    self.mUses_property.readFrom (dictionary: dictionary, forKey:"mUses")
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Class as transient property
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias EBReadOnlyProperty_CanariLibraryEntry = EBReadOnlyClassProperty <CanariLibraryEntry>
typealias EBTransientProperty_CanariLibraryEntry = EBTransientClassProperty <CanariLibraryEntry>

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_CanariLibraryEntry : ReadOnlyAbstractArrayProperty <CanariLibraryEntry> {

  //····················································································································
  // Stored property 'mPath'
  //····················································································································

  private var mObserversOf_mPath = EBWeakEventSet ()

  final func addEBObserverOf_mPath (_ inObserver : EBEvent) {
    mObserversOf_mPath.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mPath_property.addEBObserver (inObserver)
      }
    }
  }

  final func removeEBObserverOf_mPath (_ inObserver : EBEvent) {
    mObserversOf_mPath.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mPath_property.removeEBObserver (inObserver)
      }
    }
  }

  final func addEBObserversOf_mPath_toElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    for managedObject in inSet {
      for observer in mObserversOf_mPath {
        managedObject.mPath_property.addEBObserver (observer)
      }
    }
  }

  final func removeEBObserversOf_mPath_fromElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    for observer in mObserversOf_mPath {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  // Stored property 'mUses'
  //····················································································································

  private var mObserversOf_mUses = EBWeakEventSet ()

  final func addEBObserverOf_mUses (_ inObserver : EBEvent) {
    mObserversOf_mUses.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mUses_property.addEBObserver (inObserver)
      }
    }
  }

  final func removeEBObserverOf_mUses (_ inObserver : EBEvent) {
    mObserversOf_mUses.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mUses_property.removeEBObserver (inObserver)
      }
    }
  }

  final func addEBObserversOf_mUses_toElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    for managedObject in inSet {
      for observer in mObserversOf_mUses {
        managedObject.mUses_property.addEBObserver (observer)
      }
    }
  }

  final func removeEBObserversOf_mUses_fromElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    for observer in mObserversOf_mUses {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mUses_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  // Transient property 'mStatusImage'
  //····················································································································

  private var mObserversOf_mStatusImage = EBWeakEventSet ()

  final func addEBObserverOf_mStatusImage (_ inObserver : EBEvent) {
    mObserversOf_mStatusImage.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mStatusImage_property.addEBObserver (inObserver)
      }
    }
  }

  final func removeEBObserverOf_mStatusImage (_ inObserver : EBEvent) {
    mObserversOf_mStatusImage.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mStatusImage_property.removeEBObserver (inObserver)
      }
    }
  }

  final func postEventTo_mStatusImage () {
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mStatusImage_property.postEvent ()
      }
    }
  }

  final func addEBObserversOf_mStatusImage_toElementsOfSet (inSet : Set<CanariLibraryEntry>) {
    for managedObject in inSet {
      for observer in mObserversOf_mStatusImage {
        managedObject.mStatusImage_property.addEBObserver (observer)
      }
    }
  }

  final func removeEBObserversOf_mStatusImage_fromElementsOfSet (inSet : Set<CanariLibraryEntry>) {
    for managedObject in inSet {
      for observer in mObserversOf_mStatusImage {
        managedObject.mStatusImage_property.removeEBObserver (observer)
      }
    }
  }
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_CanariLibraryEntry : ReadOnlyArrayOf_CanariLibraryEntry {

  var readModelFunction : Optional<() -> EBSelection < [CanariLibraryEntry] > >
 
  private var prop_cache : EBSelection < [CanariLibraryEntry] >? 

  //····················································································································

  override init () {
    super.init ()
  }

  //····················································································································

  override var prop : EBSelection < [CanariLibraryEntry] > {
    get {
      if let unwrappedComputeFunction = readModelFunction, prop_cache == nil {
        prop_cache = unwrappedComputeFunction ()
      }
      if prop_cache == nil {
        prop_cache = .empty
      }
      return prop_cache!
    }
  }

  //····················································································································

  override func postEvent () {
    if prop_cache != nil {
      prop_cache = nil
      if logEvents () {
        appendMessageString ("  \(explorerIndexString (self.mEasyBindingsObjectIndex)) propagation\n")
      }
      super.postEvent ()
    }else if logEvents () {
      appendMessageString ("  \(explorerIndexString (self.mEasyBindingsObjectIndex)) nil\n")
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CanariLibraryEntry_mPath : class {
  var mPath : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol CanariLibraryEntry_mUses : class {
  var mUses : Bool { get }
}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Array of class: CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBClassArray_CanariLibraryEntry : ReadOnlyArrayOf_CanariLibraryEntry {

  //····················································································································

  func readInPreferencesWithKey (inKey : String) {
    let ud = UserDefaults.standard
    let value : Any? = ud.object (forKey: inKey)
    if let unwValue : Any = value {
      if let array : [NSDictionary] = unwValue as? [NSDictionary] {
        for dict in array {
          let object = CanariLibraryEntry ()
          object.setUp (withDictionary: dict)
          mValue.append (object)
        }
      }
    }
  }

  //····················································································································

  func storeInPreferencesWithKey (inKey : String) {
    let ud = UserDefaults.standard
    var array = [NSDictionary] ()
    for object in mValue {
      let dict = NSMutableDictionary ()
      object.saveInto (dictionary: dict)
      array.append (dict)
    }
    ud.set (array, forKey:inKey)
  }

  //····················································································································

  private var mSet = Set<CanariLibraryEntry> ()
  private var mValue = [CanariLibraryEntry] () {
    didSet {
      if oldValue != mValue {
        let oldSet = mSet
        mSet = Set (mValue)
      //--- Update explorer
       // if explorer != nil {
       //   owner?.updateManagedObjectToManyRelationshipDisplay (mValue, popUpButton:explorer!)
       // }
      //--- Removed object set
        let removedSet = oldSet.subtracting (mSet)
        removeEBObserversOf_mPath_fromElementsOfSet (removedSet)
        removeEBObserversOf_mUses_fromElementsOfSet (removedSet)
      //--- Added object set
        let addedSet = mSet.subtracting (oldSet)
        addEBObserversOf_mPath_toElementsOfSet (addedSet)
        addEBObserversOf_mUses_toElementsOfSet (addedSet)
      //--- Notify observers object count did change
        postEvent ()
/*        if oldValue.count != mValue.count {
          count.postEvent ()
        } */
      }
    }
  }

  //····················································································································

  override var prop : EBSelection < [CanariLibraryEntry] > {
    get {
      return .single (mValue)
    }
  }

  //····················································································································

  func setProp (_ value:  [CanariLibraryEntry]) { mValue = value }

  //····················································································································

  var propval : [CanariLibraryEntry] { get { return mValue } }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

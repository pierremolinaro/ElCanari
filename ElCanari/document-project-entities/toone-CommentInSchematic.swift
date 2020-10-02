//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_CommentInSchematic 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_CommentInSchematic : ReadOnlyAbstractObjectProperty <CommentInSchematic> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : CommentInSchematic?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mColor_property.removeEBObserversFrom (&self.mObserversOf_mColor) // Stored property
    inOldValue?.mSize_property.removeEBObserversFrom (&self.mObserversOf_mSize) // Stored property
    inOldValue?.mHorizontalAlignment_property.removeEBObserversFrom (&self.mObserversOf_mHorizontalAlignment) // Stored property
    inOldValue?.mVerticalAlignment_property.removeEBObserversFrom (&self.mObserversOf_mVerticalAlignment) // Stored property
    inOldValue?.mX_property.removeEBObserversFrom (&self.mObserversOf_mX) // Stored property
    inOldValue?.mY_property.removeEBObserversFrom (&self.mObserversOf_mY) // Stored property
    inOldValue?.mComment_property.removeEBObserversFrom (&self.mObserversOf_mComment) // Stored property
    inOldValue?.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
    inOldValue?.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.mColor_property.addEBObserversFrom (&self.mObserversOf_mColor) // Stored property
    self.mInternalValue?.mSize_property.addEBObserversFrom (&self.mObserversOf_mSize) // Stored property
    self.mInternalValue?.mHorizontalAlignment_property.addEBObserversFrom (&self.mObserversOf_mHorizontalAlignment) // Stored property
    self.mInternalValue?.mVerticalAlignment_property.addEBObserversFrom (&self.mObserversOf_mVerticalAlignment) // Stored property
    self.mInternalValue?.mX_property.addEBObserversFrom (&self.mObserversOf_mX) // Stored property
    self.mInternalValue?.mY_property.addEBObserversFrom (&self.mObserversOf_mY) // Stored property
    self.mInternalValue?.mComment_property.addEBObserversFrom (&self.mObserversOf_mComment) // Stored property
    self.mInternalValue?.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
    self.mInternalValue?.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
  }

  //····················································································································
  //   Observers of 'mColor' stored property
  //····················································································································

  private var mObserversOf_mColor = EBWeakEventSet ()

  //····················································································································

  var mColor_property_selection : EBSelection <NSColor?> {
    if let model = self.propval {
      switch (model.mColor_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mColor (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mColor.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mColor_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mColor (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mColor.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mColor_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mColor_toElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_mColor.apply { (_ observer : EBEvent) in
        managedObject.mColor_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mColor_fromElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    self.mObserversOf_mColor.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mColor_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mSize' stored property
  //····················································································································

  private var mObserversOf_mSize = EBWeakEventSet ()

  //····················································································································

  var mSize_property_selection : EBSelection <Double?> {
    if let model = self.propval {
      switch (model.mSize_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mSize (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSize.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mSize_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSize (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mSize.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mSize_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mSize_toElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_mSize.apply { (_ observer : EBEvent) in
        managedObject.mSize_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mSize_fromElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    self.mObserversOf_mSize.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mSize_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mHorizontalAlignment' stored property
  //····················································································································

  private var mObserversOf_mHorizontalAlignment = EBWeakEventSet ()

  //····················································································································

  var mHorizontalAlignment_property_selection : EBSelection <HorizontalAlignment?> {
    if let model = self.propval {
      switch (model.mHorizontalAlignment_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mHorizontalAlignment (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mHorizontalAlignment.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mHorizontalAlignment_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mHorizontalAlignment (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mHorizontalAlignment.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mHorizontalAlignment_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mHorizontalAlignment_toElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_mHorizontalAlignment.apply { (_ observer : EBEvent) in
        managedObject.mHorizontalAlignment_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mHorizontalAlignment_fromElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    self.mObserversOf_mHorizontalAlignment.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mHorizontalAlignment_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mVerticalAlignment' stored property
  //····················································································································

  private var mObserversOf_mVerticalAlignment = EBWeakEventSet ()

  //····················································································································

  var mVerticalAlignment_property_selection : EBSelection <VerticalAlignment?> {
    if let model = self.propval {
      switch (model.mVerticalAlignment_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mVerticalAlignment (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mVerticalAlignment.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mVerticalAlignment_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mVerticalAlignment (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mVerticalAlignment.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mVerticalAlignment_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mVerticalAlignment_toElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_mVerticalAlignment.apply { (_ observer : EBEvent) in
        managedObject.mVerticalAlignment_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mVerticalAlignment_fromElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    self.mObserversOf_mVerticalAlignment.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mVerticalAlignment_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mX' stored property
  //····················································································································

  private var mObserversOf_mX = EBWeakEventSet ()

  //····················································································································

  var mX_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mX_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mX (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mX.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mX_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mX (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mX.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mX_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mX_toElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_mX.apply { (_ observer : EBEvent) in
        managedObject.mX_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mX_fromElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    self.mObserversOf_mX.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mX_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mY' stored property
  //····················································································································

  private var mObserversOf_mY = EBWeakEventSet ()

  //····················································································································

  var mY_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mY_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mY (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mY.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mY_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mY (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mY.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mY_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mY_toElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_mY.apply { (_ observer : EBEvent) in
        managedObject.mY_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mY_fromElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    self.mObserversOf_mY.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mY_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mComment' stored property
  //····················································································································

  private var mObserversOf_mComment = EBWeakEventSet ()

  //····················································································································

  var mComment_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mComment_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mComment (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mComment.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mComment_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mComment (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mComment.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mComment_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mComment_toElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_mComment.apply { (_ observer : EBEvent) in
        managedObject.mComment_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mComment_fromElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    self.mObserversOf_mComment.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mComment_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  private var mObserversOf_objectDisplay = EBWeakEventSet ()

  //····················································································································

  var objectDisplay_property_selection : EBSelection <EBShape?> {
    if let model = self.propval {
      switch (model.objectDisplay_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_objectDisplay.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_objectDisplay.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  private var mObserversOf_selectionDisplay = EBWeakEventSet ()

  //····················································································································

  var selectionDisplay_property_selection : EBSelection <EBShape?> {
    if let model = self.propval {
      switch (model.selectionDisplay_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_selectionDisplay.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_selectionDisplay.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<CommentInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientObject CommentInSchematic
//----------------------------------------------------------------------------------------------------------------------

class TransientObject_CommentInSchematic : ReadOnlyObject_CommentInSchematic {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_CommentInSchematic? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_CommentInSchematic?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : CommentInSchematic? 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.selection {
      case .empty :
        newObject = nil
        self.mTransientKind = .empty
      case .single (let v) :
        newObject = v
        self.mTransientKind = .single
       case .multiple :
        newObject = nil
        self.mTransientKind = .empty
      }
    }else{
      newObject = nil
      self.mTransientKind = .empty
    }
    self.mInternalValue = newObject
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var selection : EBSelection < CommentInSchematic? > {
    switch self.mTransientKind {
    case .empty :
      return .empty
    case .single :
      if let internalValue = self.mInternalValue {
        return .single (internalValue)
      }else{
        return .empty
      }
    case .multiple :
      return .multiple
    }
  }

  //····················································································································

  override var propval : CommentInSchematic? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_CommentInSchematic
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_CommentInSchematic : ReadOnlyObject_CommentInSchematic {

  //····················································································································
 
  func setProp (_ inValue : CommentInSchematic?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_CommentInSchematic
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_CommentInSchematic : ReadWriteObject_CommentInSchematic {

  //····················································································································

  private var mModel : ReadWriteObject_CommentInSchematic? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_CommentInSchematic?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : CommentInSchematic?
    if let model = self.mModel {
      switch model.selection {
      case .empty :
        newModel = nil
      case .single (let v) :
        newModel = v
       case .multiple :
        newModel = nil
      }
    }else{
      newModel = nil
    }
    self.mInternalValue = newModel
    super.notifyModelDidChange ()
  }

  //····················································································································

  override func setProp (_ inValue : CommentInSchematic?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < CommentInSchematic? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : CommentInSchematic? {
    if let model = self.mModel {
      switch model.selection {
      case .empty, .multiple :
        return nil
      case .single (let v) :
        return v
      }
    }else{
      return nil
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    StoredObject_CommentInSchematic 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_CommentInSchematic : ReadWriteObject_CommentInSchematic, EBSignatureObserverProtocol, EBObservableObjectProtocol {

 //····················································································································

  init (usedForSignature inUsedForSignature : Bool) {
    mUsedForSignature = inUsedForSignature
    super.init ()
  }

  //····················································································································
  //   Signature ?
  //····················································································································

  private let mUsedForSignature : Bool
  
  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

 //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : CommentInSchematic) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : CommentInSchematic) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : CommentInSchematic) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : CommentInSchematic) -> Void) {
    self.mSetOppositeRelationship = inSetter
    self.mResetOppositeRelationship = inResetter
  }
  
  //····················································································································

  var mValueExplorer : NSButton? {
    didSet {
      if let unwrappedExplorer = self.mValueExplorer {
        switch self.selection {
        case .empty, .multiple :
          break ;
        case .single (let v) :
          updateManagedObjectToOneRelationshipDisplay (object: v, button: unwrappedExplorer)
        }
      }
    }
  }

 //····················································································································
  // Model will change 
  //····················································································································

  override func notifyModelDidChangeFrom (oldValue inOldValue : CommentInSchematic?) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self) { $0.mInternalValue = inOldValue }
  //---
    if let object = inOldValue {
      if self.mUsedForSignature {
        object.setSignatureObserver (observer: nil)
      }
      self.mResetOppositeRelationship? (object)
    }
  //---
    if let object = self.mInternalValue {
      if self.mUsedForSignature {
        object.setSignatureObserver (observer: self)
      }
      self.mSetOppositeRelationship? (object)
    }
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································
  // Model did change 
  //····················································································································

  override func notifyModelDidChange () {
  //--- Update explorer
    if let valueExplorer = self.mValueExplorer {
      updateManagedObjectToOneRelationshipDisplay (object: self.mInternalValue, button: valueExplorer)
    }
  //--- Notify observers
    self.postEvent ()
    self.clearSignatureCache ()
  //---
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var selection : EBSelection < CommentInSchematic? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : CommentInSchematic?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : CommentInSchematic? { return self.mInternalValue }

  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK

  //····················································································································

  private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer inObserver : EBSignatureObserverProtocol?) {
    self.mSignatureObserver?.clearSignatureCache ()
    self.mSignatureObserver = inObserver
    inObserver?.clearSignatureCache ()
    self.clearSignatureCache ()
  }

  //····················································································································

  final func signature () -> UInt32 {
    let computedSignature : UInt32
    if let s = self.mSignatureCache {
      computedSignature = s
    }else{
      computedSignature = self.computeSignature ()
      self.mSignatureCache = computedSignature
    }
    return computedSignature
  }
  
  //····················································································································

  final private func computeSignature () -> UInt32 {
    var crc : UInt32 = 0
    if let object = self.mInternalValue {
      crc.accumulateUInt32 (object.signature ())
    }
    return crc
  }

  //····················································································································

  final func clearSignatureCache () {
    if self.mSignatureCache != nil {
      self.mSignatureCache = nil
      self.mSignatureObserver?.clearSignatureCache ()
    }
  }

  //····················································································································
 
}

//----------------------------------------------------------------------------------------------------------------------


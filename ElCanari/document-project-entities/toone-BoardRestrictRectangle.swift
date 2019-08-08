//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_BoardRestrictRectangle 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_BoardRestrictRectangle : ReadOnlyAbstractObjectProperty <BoardRestrictRectangle> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : BoardRestrictRectangle?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mY_property.removeEBObserversFrom (&self.mObserversOf_mY) // Stored property
    inOldValue?.mWidth_property.removeEBObserversFrom (&self.mObserversOf_mWidth) // Stored property
    inOldValue?.mHeight_property.removeEBObserversFrom (&self.mObserversOf_mHeight) // Stored property
    inOldValue?.mIsInFrontLayer_property.removeEBObserversFrom (&self.mObserversOf_mIsInFrontLayer) // Stored property
    inOldValue?.mIsInBackLayer_property.removeEBObserversFrom (&self.mObserversOf_mIsInBackLayer) // Stored property
    inOldValue?.mX_property.removeEBObserversFrom (&self.mObserversOf_mX) // Stored property
    inOldValue?.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
    inOldValue?.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    inOldValue?.signatureForERCChecking_property.removeEBObserversFrom (&self.mObserversOf_signatureForERCChecking) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.mY_property.addEBObserversFrom (&self.mObserversOf_mY) // Stored property
    self.mInternalValue?.mWidth_property.addEBObserversFrom (&self.mObserversOf_mWidth) // Stored property
    self.mInternalValue?.mHeight_property.addEBObserversFrom (&self.mObserversOf_mHeight) // Stored property
    self.mInternalValue?.mIsInFrontLayer_property.addEBObserversFrom (&self.mObserversOf_mIsInFrontLayer) // Stored property
    self.mInternalValue?.mIsInBackLayer_property.addEBObserversFrom (&self.mObserversOf_mIsInBackLayer) // Stored property
    self.mInternalValue?.mX_property.addEBObserversFrom (&self.mObserversOf_mX) // Stored property
    self.mInternalValue?.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
    self.mInternalValue?.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    self.mInternalValue?.signatureForERCChecking_property.addEBObserversFrom (&self.mObserversOf_signatureForERCChecking) // Transient property
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
    switch prop {
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
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mY_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mY_toElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    for managedObject in inSet {
      self.mObserversOf_mY.apply { (_ observer : EBEvent) in
        managedObject.mY_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mY_fromElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    self.mObserversOf_mY.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mY_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mWidth' stored property
  //····················································································································

  private var mObserversOf_mWidth = EBWeakEventSet ()

  //····················································································································

  var mWidth_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mWidth_property_selection) {
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

  final func addEBObserverOf_mWidth (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mWidth.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mWidth_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mWidth (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mWidth.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mWidth_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mWidth_toElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    for managedObject in inSet {
      self.mObserversOf_mWidth.apply { (_ observer : EBEvent) in
        managedObject.mWidth_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mWidth_fromElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    self.mObserversOf_mWidth.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mWidth_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mHeight' stored property
  //····················································································································

  private var mObserversOf_mHeight = EBWeakEventSet ()

  //····················································································································

  var mHeight_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mHeight_property_selection) {
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

  final func addEBObserverOf_mHeight (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mHeight.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mHeight_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mHeight (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mHeight.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mHeight_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mHeight_toElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    for managedObject in inSet {
      self.mObserversOf_mHeight.apply { (_ observer : EBEvent) in
        managedObject.mHeight_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mHeight_fromElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    self.mObserversOf_mHeight.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mHeight_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mIsInFrontLayer' stored property
  //····················································································································

  private var mObserversOf_mIsInFrontLayer = EBWeakEventSet ()

  //····················································································································

  var mIsInFrontLayer_property_selection : EBSelection <Bool?> {
    if let model = self.propval {
      switch (model.mIsInFrontLayer_property_selection) {
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

  final func addEBObserverOf_mIsInFrontLayer (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mIsInFrontLayer.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mIsInFrontLayer_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mIsInFrontLayer (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mIsInFrontLayer.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mIsInFrontLayer_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mIsInFrontLayer_toElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    for managedObject in inSet {
      self.mObserversOf_mIsInFrontLayer.apply { (_ observer : EBEvent) in
        managedObject.mIsInFrontLayer_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mIsInFrontLayer_fromElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    self.mObserversOf_mIsInFrontLayer.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mIsInFrontLayer_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mIsInBackLayer' stored property
  //····················································································································

  private var mObserversOf_mIsInBackLayer = EBWeakEventSet ()

  //····················································································································

  var mIsInBackLayer_property_selection : EBSelection <Bool?> {
    if let model = self.propval {
      switch (model.mIsInBackLayer_property_selection) {
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

  final func addEBObserverOf_mIsInBackLayer (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mIsInBackLayer.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mIsInBackLayer_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mIsInBackLayer (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mIsInBackLayer.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mIsInBackLayer_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mIsInBackLayer_toElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    for managedObject in inSet {
      self.mObserversOf_mIsInBackLayer.apply { (_ observer : EBEvent) in
        managedObject.mIsInBackLayer_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mIsInBackLayer_fromElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    self.mObserversOf_mIsInBackLayer.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mIsInBackLayer_property.removeEBObserver (observer)
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
    switch prop {
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
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mX_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mX_toElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    for managedObject in inSet {
      self.mObserversOf_mX.apply { (_ observer : EBEvent) in
        managedObject.mX_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mX_fromElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    self.mObserversOf_mX.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mX_property.removeEBObserver (observer)
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
    switch prop {
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
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
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
    switch prop {
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
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'signatureForERCChecking' transient property
  //····················································································································

  private var mObserversOf_signatureForERCChecking = EBWeakEventSet ()

  //····················································································································

  var signatureForERCChecking_property_selection : EBSelection <UInt32?> {
    if let model = self.propval {
      switch (model.signatureForERCChecking_property_selection) {
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

  final func addEBObserverOf_signatureForERCChecking (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_signatureForERCChecking.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.signatureForERCChecking_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_signatureForERCChecking (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_signatureForERCChecking.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.signatureForERCChecking_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_signatureForERCChecking_toElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    for managedObject in inSet {
      self.mObserversOf_signatureForERCChecking.apply { (_ observer : EBEvent) in
        managedObject.signatureForERCChecking_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_signatureForERCChecking_fromElementsOfSet (_ inSet : Set<BoardRestrictRectangle>) {
    for managedObject in inSet {
      self.mObserversOf_signatureForERCChecking.apply { (_ observer : EBEvent) in
        managedObject.signatureForERCChecking_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientObject BoardRestrictRectangle
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientObject_BoardRestrictRectangle : ReadOnlyObject_BoardRestrictRectangle {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_BoardRestrictRectangle? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_BoardRestrictRectangle?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : BoardRestrictRectangle? 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.prop {
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

  override var prop : EBSelection < BoardRestrictRectangle? > {
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

  override var propval : BoardRestrictRectangle? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_BoardRestrictRectangle
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_BoardRestrictRectangle : ReadOnlyObject_BoardRestrictRectangle {

  //····················································································································
 
  func setProp (_ inValue : BoardRestrictRectangle?) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_BoardRestrictRectangle
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_BoardRestrictRectangle : ReadWriteObject_BoardRestrictRectangle {

  //····················································································································

  private var mModel : ReadWriteObject_BoardRestrictRectangle? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_BoardRestrictRectangle?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : BoardRestrictRectangle?
    if let model = self.mModel {
      switch model.prop {
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

  override func setProp (_ inValue : BoardRestrictRectangle?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < BoardRestrictRectangle? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : BoardRestrictRectangle? {
    if let model = self.mModel {
      switch model.prop {
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    StoredObject_BoardRestrictRectangle 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_BoardRestrictRectangle : ReadWriteObject_BoardRestrictRectangle, EBSignatureObserverProtocol {

  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

 //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : BoardRestrictRectangle) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : BoardRestrictRectangle) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : BoardRestrictRectangle) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : BoardRestrictRectangle) -> Void) {
    self.mSetOppositeRelationship = inSetter
    self.mResetOppositeRelationship = inResetter
  }
  
  //····················································································································

  var mValueExplorer : NSButton? {
    didSet {
      if let unwrappedExplorer = self.mValueExplorer {
        switch self.prop {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : BoardRestrictRectangle?) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    if let object = inOldValue {
      object.setSignatureObserver (observer: nil)
      self.mResetOppositeRelationship? (object)
    }
  //---
    if let object = self.mInternalValue {
      object.setSignatureObserver (observer: self)
      self.mSetOppositeRelationship? (object)
    }
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : BoardRestrictRectangle?) {
    self.mInternalValue = oldValue
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

  override var prop : EBSelection < BoardRestrictRectangle? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : BoardRestrictRectangle?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : BoardRestrictRectangle? { return self.mInternalValue }

  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK

  //····················································································································

  private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer inObserver : EBSignatureObserverProtocol?) {
    self.mSignatureObserver = inObserver
 // §   self.mInternalValue?.setSignatureObserver (observer: observer)
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


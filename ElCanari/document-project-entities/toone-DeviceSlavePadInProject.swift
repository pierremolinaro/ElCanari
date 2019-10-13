//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_DeviceSlavePadInProject 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_DeviceSlavePadInProject : ReadOnlyAbstractObjectProperty <DeviceSlavePadInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceSlavePadInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mCenterX_property.removeEBObserversFrom (&self.mObserversOf_mCenterX) // Stored property
    inOldValue?.mCenterY_property.removeEBObserversFrom (&self.mObserversOf_mCenterY) // Stored property
    inOldValue?.mWidth_property.removeEBObserversFrom (&self.mObserversOf_mWidth) // Stored property
    inOldValue?.mHeight_property.removeEBObserversFrom (&self.mObserversOf_mHeight) // Stored property
    inOldValue?.mHoleWidth_property.removeEBObserversFrom (&self.mObserversOf_mHoleWidth) // Stored property
    inOldValue?.mHoleHeight_property.removeEBObserversFrom (&self.mObserversOf_mHoleHeight) // Stored property
    inOldValue?.mShape_property.removeEBObserversFrom (&self.mObserversOf_mShape) // Stored property
    inOldValue?.mStyle_property.removeEBObserversFrom (&self.mObserversOf_mStyle) // Stored property
    inOldValue?.descriptor_property.removeEBObserversFrom (&self.mObserversOf_descriptor) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.mCenterX_property.addEBObserversFrom (&self.mObserversOf_mCenterX) // Stored property
    self.mInternalValue?.mCenterY_property.addEBObserversFrom (&self.mObserversOf_mCenterY) // Stored property
    self.mInternalValue?.mWidth_property.addEBObserversFrom (&self.mObserversOf_mWidth) // Stored property
    self.mInternalValue?.mHeight_property.addEBObserversFrom (&self.mObserversOf_mHeight) // Stored property
    self.mInternalValue?.mHoleWidth_property.addEBObserversFrom (&self.mObserversOf_mHoleWidth) // Stored property
    self.mInternalValue?.mHoleHeight_property.addEBObserversFrom (&self.mObserversOf_mHoleHeight) // Stored property
    self.mInternalValue?.mShape_property.addEBObserversFrom (&self.mObserversOf_mShape) // Stored property
    self.mInternalValue?.mStyle_property.addEBObserversFrom (&self.mObserversOf_mStyle) // Stored property
    self.mInternalValue?.descriptor_property.addEBObserversFrom (&self.mObserversOf_descriptor) // Transient property
  }

  //····················································································································
  //   Observers of 'mCenterX' stored property
  //····················································································································

  private var mObserversOf_mCenterX = EBWeakEventSet ()

  //····················································································································

  var mCenterX_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mCenterX_property_selection) {
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

  final func addEBObserverOf_mCenterX (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver, postEvent: inPostEvent)
    self.mObserversOf_mCenterX.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mCenterX_property.addEBObserver (inObserver, postEvent: inPostEvent)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mCenterX (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mCenterX.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mCenterX_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mCenterX_toElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mCenterX.apply { (_ observer : EBEvent) in
        managedObject.mCenterX_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mCenterX_fromElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    self.mObserversOf_mCenterX.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mCenterX_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mCenterY' stored property
  //····················································································································

  private var mObserversOf_mCenterY = EBWeakEventSet ()

  //····················································································································

  var mCenterY_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mCenterY_property_selection) {
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

  final func addEBObserverOf_mCenterY (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver, postEvent: inPostEvent)
    self.mObserversOf_mCenterY.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mCenterY_property.addEBObserver (inObserver, postEvent: inPostEvent)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mCenterY (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mCenterY.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mCenterY_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mCenterY_toElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mCenterY.apply { (_ observer : EBEvent) in
        managedObject.mCenterY_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mCenterY_fromElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    self.mObserversOf_mCenterY.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mCenterY_property.removeEBObserver (observer)
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

  final func addEBObserverOf_mWidth (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver, postEvent: inPostEvent)
    self.mObserversOf_mWidth.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mWidth_property.addEBObserver (inObserver, postEvent: inPostEvent)
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

  final func addEBObserversOf_mWidth_toElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mWidth.apply { (_ observer : EBEvent) in
        managedObject.mWidth_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mWidth_fromElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
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

  final func addEBObserverOf_mHeight (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver, postEvent: inPostEvent)
    self.mObserversOf_mHeight.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mHeight_property.addEBObserver (inObserver, postEvent: inPostEvent)
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

  final func addEBObserversOf_mHeight_toElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mHeight.apply { (_ observer : EBEvent) in
        managedObject.mHeight_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mHeight_fromElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    self.mObserversOf_mHeight.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mHeight_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mHoleWidth' stored property
  //····················································································································

  private var mObserversOf_mHoleWidth = EBWeakEventSet ()

  //····················································································································

  var mHoleWidth_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mHoleWidth_property_selection) {
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

  final func addEBObserverOf_mHoleWidth (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver, postEvent: inPostEvent)
    self.mObserversOf_mHoleWidth.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mHoleWidth_property.addEBObserver (inObserver, postEvent: inPostEvent)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mHoleWidth (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mHoleWidth.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mHoleWidth_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mHoleWidth_toElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mHoleWidth.apply { (_ observer : EBEvent) in
        managedObject.mHoleWidth_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mHoleWidth_fromElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    self.mObserversOf_mHoleWidth.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mHoleWidth_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mHoleHeight' stored property
  //····················································································································

  private var mObserversOf_mHoleHeight = EBWeakEventSet ()

  //····················································································································

  var mHoleHeight_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mHoleHeight_property_selection) {
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

  final func addEBObserverOf_mHoleHeight (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver, postEvent: inPostEvent)
    self.mObserversOf_mHoleHeight.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mHoleHeight_property.addEBObserver (inObserver, postEvent: inPostEvent)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mHoleHeight (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mHoleHeight.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mHoleHeight_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mHoleHeight_toElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mHoleHeight.apply { (_ observer : EBEvent) in
        managedObject.mHoleHeight_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mHoleHeight_fromElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    self.mObserversOf_mHoleHeight.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mHoleHeight_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mShape' stored property
  //····················································································································

  private var mObserversOf_mShape = EBWeakEventSet ()

  //····················································································································

  var mShape_property_selection : EBSelection <PadShape?> {
    if let model = self.propval {
      switch (model.mShape_property_selection) {
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

  final func addEBObserverOf_mShape (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver, postEvent: inPostEvent)
    self.mObserversOf_mShape.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mShape_property.addEBObserver (inObserver, postEvent: inPostEvent)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mShape (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mShape.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mShape_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mShape_toElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mShape.apply { (_ observer : EBEvent) in
        managedObject.mShape_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mShape_fromElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    self.mObserversOf_mShape.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mShape_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mStyle' stored property
  //····················································································································

  private var mObserversOf_mStyle = EBWeakEventSet ()

  //····················································································································

  var mStyle_property_selection : EBSelection <SlavePadStyle?> {
    if let model = self.propval {
      switch (model.mStyle_property_selection) {
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

  final func addEBObserverOf_mStyle (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver, postEvent: inPostEvent)
    self.mObserversOf_mStyle.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mStyle_property.addEBObserver (inObserver, postEvent: inPostEvent)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mStyle (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mStyle.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mStyle_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mStyle_toElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mStyle.apply { (_ observer : EBEvent) in
        managedObject.mStyle_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mStyle_fromElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    self.mObserversOf_mStyle.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mStyle_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'descriptor' transient property
  //····················································································································

  private var mObserversOf_descriptor = EBWeakEventSet ()

  //····················································································································

  var descriptor_property_selection : EBSelection <SlavePadDescriptor?> {
    if let model = self.propval {
      switch (model.descriptor_property_selection) {
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

  final func addEBObserverOf_descriptor (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver, postEvent: inPostEvent)
    self.mObserversOf_descriptor.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.descriptor_property.addEBObserver (inObserver, postEvent: inPostEvent)
    }
  }

  //····················································································································

  final func removeEBObserverOf_descriptor (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_descriptor.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.descriptor_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_descriptor_toElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_descriptor.apply { (_ observer : EBEvent) in
        managedObject.descriptor_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_descriptor_fromElementsOfSet (_ inSet : Set<DeviceSlavePadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_descriptor.apply { (_ observer : EBEvent) in
        managedObject.descriptor_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientObject DeviceSlavePadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientObject_DeviceSlavePadInProject : ReadOnlyObject_DeviceSlavePadInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_DeviceSlavePadInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_DeviceSlavePadInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : DeviceSlavePadInProject? 
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

  override var prop : EBSelection < DeviceSlavePadInProject? > {
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

  override var propval : DeviceSlavePadInProject? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_DeviceSlavePadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_DeviceSlavePadInProject : ReadOnlyObject_DeviceSlavePadInProject {

  //····················································································································
 
  func setProp (_ inValue : DeviceSlavePadInProject?) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_DeviceSlavePadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_DeviceSlavePadInProject : ReadWriteObject_DeviceSlavePadInProject {

  //····················································································································

  private var mModel : ReadWriteObject_DeviceSlavePadInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_DeviceSlavePadInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : DeviceSlavePadInProject?
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

  override func setProp (_ inValue : DeviceSlavePadInProject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < DeviceSlavePadInProject? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : DeviceSlavePadInProject? {
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
//    StoredObject_DeviceSlavePadInProject 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_DeviceSlavePadInProject : ReadWriteObject_DeviceSlavePadInProject, EBSignatureObserverProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : DeviceSlavePadInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : DeviceSlavePadInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : DeviceSlavePadInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : DeviceSlavePadInProject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceSlavePadInProject?) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
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

  @objc func performUndo (_ oldValue : DeviceSlavePadInProject?) {
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

  override var prop : EBSelection < DeviceSlavePadInProject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : DeviceSlavePadInProject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : DeviceSlavePadInProject? { return self.mInternalValue }

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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_DeviceMasterPadInProject 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_DeviceMasterPadInProject : ReadOnlyAbstractObjectProperty <DeviceMasterPadInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceMasterPadInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mCenterX_property.removeEBObserversFrom (&self.mObserversOf_mCenterX) // Stored property
    inOldValue?.mCenterY_property.removeEBObserversFrom (&self.mObserversOf_mCenterY) // Stored property
    inOldValue?.mWidth_property.removeEBObserversFrom (&self.mObserversOf_mWidth) // Stored property
    inOldValue?.mHeight_property.removeEBObserversFrom (&self.mObserversOf_mHeight) // Stored property
    inOldValue?.mHoleDiameter_property.removeEBObserversFrom (&self.mObserversOf_mHoleDiameter) // Stored property
    inOldValue?.mShape_property.removeEBObserversFrom (&self.mObserversOf_mShape) // Stored property
    inOldValue?.mStyle_property.removeEBObserversFrom (&self.mObserversOf_mStyle) // Stored property
    inOldValue?.mName_property.removeEBObserversFrom (&self.mObserversOf_mName) // Stored property
  //--- Add observers to added objects
    self.mInternalValue?.mCenterX_property.addEBObserversFrom (&self.mObserversOf_mCenterX) // Stored property
    self.mInternalValue?.mCenterY_property.addEBObserversFrom (&self.mObserversOf_mCenterY) // Stored property
    self.mInternalValue?.mWidth_property.addEBObserversFrom (&self.mObserversOf_mWidth) // Stored property
    self.mInternalValue?.mHeight_property.addEBObserversFrom (&self.mObserversOf_mHeight) // Stored property
    self.mInternalValue?.mHoleDiameter_property.addEBObserversFrom (&self.mObserversOf_mHoleDiameter) // Stored property
    self.mInternalValue?.mShape_property.addEBObserversFrom (&self.mObserversOf_mShape) // Stored property
    self.mInternalValue?.mStyle_property.addEBObserversFrom (&self.mObserversOf_mStyle) // Stored property
    self.mInternalValue?.mName_property.addEBObserversFrom (&self.mObserversOf_mName) // Stored property
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

  final func addEBObserverOf_mCenterX (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mCenterX.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mCenterX_property.addEBObserver (inObserver)
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

  final func addEBObserversOf_mCenterX_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mCenterX.apply { (_ observer : EBEvent) in
        managedObject.mCenterX_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mCenterX_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
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

  final func addEBObserverOf_mCenterY (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mCenterY.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mCenterY_property.addEBObserver (inObserver)
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

  final func addEBObserversOf_mCenterY_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mCenterY.apply { (_ observer : EBEvent) in
        managedObject.mCenterY_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mCenterY_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
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

  final func addEBObserversOf_mWidth_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mWidth.apply { (_ observer : EBEvent) in
        managedObject.mWidth_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mWidth_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
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

  final func addEBObserversOf_mHeight_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mHeight.apply { (_ observer : EBEvent) in
        managedObject.mHeight_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mHeight_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mHeight.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mHeight_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mHoleDiameter' stored property
  //····················································································································

  private var mObserversOf_mHoleDiameter = EBWeakEventSet ()

  //····················································································································

  var mHoleDiameter_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mHoleDiameter_property_selection) {
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

  final func addEBObserverOf_mHoleDiameter (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mHoleDiameter.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mHoleDiameter_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mHoleDiameter (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mHoleDiameter.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mHoleDiameter_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mHoleDiameter_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mHoleDiameter.apply { (_ observer : EBEvent) in
        managedObject.mHoleDiameter_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mHoleDiameter_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mHoleDiameter.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mHoleDiameter_property.removeEBObserver (observer)
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

  final func addEBObserverOf_mShape (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mShape.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mShape_property.addEBObserver (inObserver)
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

  final func addEBObserversOf_mShape_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mShape.apply { (_ observer : EBEvent) in
        managedObject.mShape_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mShape_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
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

  var mStyle_property_selection : EBSelection <PadStyle?> {
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

  final func addEBObserverOf_mStyle (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mStyle.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mStyle_property.addEBObserver (inObserver)
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

  final func addEBObserversOf_mStyle_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mStyle.apply { (_ observer : EBEvent) in
        managedObject.mStyle_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mStyle_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mStyle.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mStyle_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mName' stored property
  //····················································································································

  private var mObserversOf_mName = EBWeakEventSet ()

  //····················································································································

  var mName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mName_property_selection) {
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

  final func addEBObserverOf_mName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mName_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mName.apply { (_ observer : EBEvent) in
        managedObject.mName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mName_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observable toMany property: mSlavePads
  //····················································································································

  private var mObserversOf_mSlavePads = EBWeakEventSet ()

  //····················································································································

  var mSlavePads_property_selection : EBSelection <[DeviceSlavePadInProject]> {
    if let model = self.propval {
      switch (model.mSlavePads_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .empty
    }
  }

  //····················································································································

  final func addEBObserverOf_mSlavePads (_ inObserver : EBEvent) {
    self.mObserversOf_mSlavePads.insert (inObserver)
    if let object = self.propval {
      object.mSlavePads_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSlavePads (_ inObserver : EBEvent) {
    self.mObserversOf_mSlavePads.remove (inObserver)
    if let object = self.propval {
      object.mSlavePads_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientObject DeviceMasterPadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientObject_DeviceMasterPadInProject : ReadOnlyObject_DeviceMasterPadInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_DeviceMasterPadInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_DeviceMasterPadInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : DeviceMasterPadInProject? 
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

  override var prop : EBSelection < DeviceMasterPadInProject? > {
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

  override var propval : DeviceMasterPadInProject? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_DeviceMasterPadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_DeviceMasterPadInProject : ReadOnlyObject_DeviceMasterPadInProject {

  //····················································································································
 
  func setProp (_ inValue : DeviceMasterPadInProject?) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_DeviceMasterPadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_DeviceMasterPadInProject : ReadWriteObject_DeviceMasterPadInProject {

  //····················································································································

  private var mModel : ReadWriteObject_DeviceMasterPadInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_DeviceMasterPadInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : DeviceMasterPadInProject?
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

  override func setProp (_ inValue : DeviceMasterPadInProject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < DeviceMasterPadInProject? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : DeviceMasterPadInProject? {
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
//    StoredObject_DeviceMasterPadInProject 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_DeviceMasterPadInProject : ReadWriteObject_DeviceMasterPadInProject, EBSignatureObserverProtocol {

  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

 //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : DeviceMasterPadInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : DeviceMasterPadInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : DeviceMasterPadInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : DeviceMasterPadInProject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceMasterPadInProject?) {
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

  @objc func performUndo (_ oldValue : DeviceMasterPadInProject?) {
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

  override var prop : EBSelection < DeviceMasterPadInProject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : DeviceMasterPadInProject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : DeviceMasterPadInProject? { return self.mInternalValue }

  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK

  //····················································································································

  private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer : EBSignatureObserverProtocol?) {
    self.mSignatureObserver = observer
    self.mInternalValue?.setSignatureObserver (observer: observer)
  }

  //····················································································································

  final func signature () -> UInt32 {
    let computedSignature : UInt32
    if let s = self.mSignatureCache {
      computedSignature = s
    }else{
      computedSignature = computeSignature ()
      self.mSignatureCache = computedSignature
    }
    return computedSignature
  }
  
  //····················································································································

  final func computeSignature () -> UInt32 {
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


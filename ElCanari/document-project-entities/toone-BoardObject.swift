//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_BoardObject 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_BoardObject : ReadOnlyAbstractObjectProperty <BoardObject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : BoardObject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.isPlacedInBoard_property.removeEBObserversFrom (&self.mObserversOf_isPlacedInBoard) // Transient property
    inOldValue?.issues_property.removeEBObserversFrom (&self.mObserversOf_issues) // Transient property
    inOldValue?.isVia_property.removeEBObserversFrom (&self.mObserversOf_isVia) // Transient property
    inOldValue?.trackLength_property.removeEBObserversFrom (&self.mObserversOf_trackLength) // Transient property
    inOldValue?.signatureForERCChecking_property.removeEBObserversFrom (&self.mObserversOf_signatureForERCChecking) // Transient property
    inOldValue?.netNameAndPadLocation_property.removeEBObserversFrom (&self.mObserversOf_netNameAndPadLocation) // Transient property
    inOldValue?.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    inOldValue?.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
    inOldValue?.errorOrWarningIssueSize_property.removeEBObserversFrom (&self.mObserversOf_errorOrWarningIssueSize) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.isPlacedInBoard_property.addEBObserversFrom (&self.mObserversOf_isPlacedInBoard) // Transient property
    self.mInternalValue?.issues_property.addEBObserversFrom (&self.mObserversOf_issues) // Transient property
    self.mInternalValue?.isVia_property.addEBObserversFrom (&self.mObserversOf_isVia) // Transient property
    self.mInternalValue?.trackLength_property.addEBObserversFrom (&self.mObserversOf_trackLength) // Transient property
    self.mInternalValue?.signatureForERCChecking_property.addEBObserversFrom (&self.mObserversOf_signatureForERCChecking) // Transient property
    self.mInternalValue?.netNameAndPadLocation_property.addEBObserversFrom (&self.mObserversOf_netNameAndPadLocation) // Transient property
    self.mInternalValue?.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    self.mInternalValue?.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
    self.mInternalValue?.errorOrWarningIssueSize_property.addEBObserversFrom (&self.mObserversOf_errorOrWarningIssueSize) // Transient property
  }

  //····················································································································
  //   Observers of 'isPlacedInBoard' transient property
  //····················································································································

  private var mObserversOf_isPlacedInBoard = EBWeakEventSet ()

  //····················································································································

  var isPlacedInBoard_property_selection : EBSelection <Bool?> {
    if let model = self.propval {
      switch (model.isPlacedInBoard_property_selection) {
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

  final func addEBObserverOf_isPlacedInBoard (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_isPlacedInBoard.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.isPlacedInBoard_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_isPlacedInBoard (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_isPlacedInBoard.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.isPlacedInBoard_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_isPlacedInBoard_toElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_isPlacedInBoard.apply { (_ observer : EBEvent) in
        managedObject.isPlacedInBoard_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_isPlacedInBoard_fromElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_isPlacedInBoard.apply { (_ observer : EBEvent) in
        managedObject.isPlacedInBoard_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  private var mObserversOf_issues = EBWeakEventSet ()

  //····················································································································

  var issues_property_selection : EBSelection <CanariIssueArray?> {
    if let model = self.propval {
      switch (model.issues_property_selection) {
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

  final func addEBObserverOf_issues (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_issues.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.issues_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_issues (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_issues.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.issues_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_issues_toElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_issues_fromElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'isVia' transient property
  //····················································································································

  private var mObserversOf_isVia = EBWeakEventSet ()

  //····················································································································

  var isVia_property_selection : EBSelection <Bool?> {
    if let model = self.propval {
      switch (model.isVia_property_selection) {
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

  final func addEBObserverOf_isVia (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_isVia.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.isVia_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_isVia (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_isVia.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.isVia_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_isVia_toElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_isVia.apply { (_ observer : EBEvent) in
        managedObject.isVia_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_isVia_fromElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_isVia.apply { (_ observer : EBEvent) in
        managedObject.isVia_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'trackLength' transient property
  //····················································································································

  private var mObserversOf_trackLength = EBWeakEventSet ()

  //····················································································································

  var trackLength_property_selection : EBSelection <Double?> {
    if let model = self.propval {
      switch (model.trackLength_property_selection) {
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

  final func addEBObserverOf_trackLength (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_trackLength.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.trackLength_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_trackLength (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_trackLength.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.trackLength_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_trackLength_toElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_trackLength.apply { (_ observer : EBEvent) in
        managedObject.trackLength_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_trackLength_fromElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_trackLength.apply { (_ observer : EBEvent) in
        managedObject.trackLength_property.removeEBObserver (observer)
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

  final func addEBObserversOf_signatureForERCChecking_toElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_signatureForERCChecking.apply { (_ observer : EBEvent) in
        managedObject.signatureForERCChecking_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_signatureForERCChecking_fromElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_signatureForERCChecking.apply { (_ observer : EBEvent) in
        managedObject.signatureForERCChecking_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'netNameAndPadLocation' transient property
  //····················································································································

  private var mObserversOf_netNameAndPadLocation = EBWeakEventSet ()

  //····················································································································

  var netNameAndPadLocation_property_selection : EBSelection <RastnetInfoArray?> {
    if let model = self.propval {
      switch (model.netNameAndPadLocation_property_selection) {
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

  final func addEBObserverOf_netNameAndPadLocation (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_netNameAndPadLocation.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netNameAndPadLocation_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_netNameAndPadLocation (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_netNameAndPadLocation.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netNameAndPadLocation_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_netNameAndPadLocation_toElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_netNameAndPadLocation.apply { (_ observer : EBEvent) in
        managedObject.netNameAndPadLocation_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_netNameAndPadLocation_fromElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_netNameAndPadLocation.apply { (_ observer : EBEvent) in
        managedObject.netNameAndPadLocation_property.removeEBObserver (observer)
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

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
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

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'errorOrWarningIssueSize' transient property
  //····················································································································

  private var mObserversOf_errorOrWarningIssueSize = EBWeakEventSet ()

  //····················································································································

  var errorOrWarningIssueSize_property_selection : EBSelection <Double?> {
    if let model = self.propval {
      switch (model.errorOrWarningIssueSize_property_selection) {
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

  final func addEBObserverOf_errorOrWarningIssueSize (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_errorOrWarningIssueSize.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.errorOrWarningIssueSize_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_errorOrWarningIssueSize (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_errorOrWarningIssueSize.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.errorOrWarningIssueSize_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_errorOrWarningIssueSize_toElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_errorOrWarningIssueSize.apply { (_ observer : EBEvent) in
        managedObject.errorOrWarningIssueSize_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_errorOrWarningIssueSize_fromElementsOfSet (_ inSet : Set<BoardObject>) {
    for managedObject in inSet {
      self.mObserversOf_errorOrWarningIssueSize.apply { (_ observer : EBEvent) in
        managedObject.errorOrWarningIssueSize_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientObject BoardObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientObject_BoardObject : ReadOnlyObject_BoardObject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_BoardObject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_BoardObject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : BoardObject? 
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

  override var prop : EBSelection < BoardObject? > {
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

  override var propval : BoardObject? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_BoardObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_BoardObject : ReadOnlyObject_BoardObject {

  //····················································································································
 
  func setProp (_ inValue : BoardObject?) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_BoardObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_BoardObject : ReadWriteObject_BoardObject {

  //····················································································································

  private var mModel : ReadWriteObject_BoardObject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_BoardObject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : BoardObject?
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

  override func setProp (_ inValue : BoardObject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < BoardObject? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : BoardObject? {
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
//    StoredObject_BoardObject 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_BoardObject : ReadWriteObject_BoardObject, EBSignatureObserverProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : BoardObject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : BoardObject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : BoardObject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : BoardObject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : BoardObject?) {
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

  @objc func performUndo (_ oldValue : BoardObject?) {
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

  override var prop : EBSelection < BoardObject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : BoardObject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : BoardObject? { return self.mInternalValue }

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


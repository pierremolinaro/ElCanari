//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_NetInProject 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_NetInProject : ReadOnlyAbstractObjectProperty <NetInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : NetInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
 //     oldValue.mNetName_property.removeEBObserversFrom (&self.mObserversOf_mNetName) // Stored property
      oldValue.mNetName_property.removeEBObserver (self.mNetName_property) // Stored property
 //     oldValue.netClassName_property.removeEBObserversFrom (&self.mObserversOf_netClassName) // Transient property
      oldValue.netClassName_property.removeEBObserver (self.netClassName_property) // Transient property
 //     oldValue.netClassTrackWidth_property.removeEBObserversFrom (&self.mObserversOf_netClassTrackWidth) // Transient property
      oldValue.netClassTrackWidth_property.removeEBObserver (self.netClassTrackWidth_property) // Transient property
 //     oldValue.netClassViaHoleDiameter_property.removeEBObserversFrom (&self.mObserversOf_netClassViaHoleDiameter) // Transient property
      oldValue.netClassViaHoleDiameter_property.removeEBObserver (self.netClassViaHoleDiameter_property) // Transient property
 //     oldValue.netClassViaPadDiameter_property.removeEBObserversFrom (&self.mObserversOf_netClassViaPadDiameter) // Transient property
      oldValue.netClassViaPadDiameter_property.removeEBObserver (self.netClassViaPadDiameter_property) // Transient property
 //     oldValue.wireColor_property.removeEBObserversFrom (&self.mObserversOf_wireColor) // Transient property
      oldValue.wireColor_property.removeEBObserver (self.wireColor_property) // Transient property
 //     oldValue.netSchematicPointsInfo_property.removeEBObserversFrom (&self.mObserversOf_netSchematicPointsInfo) // Transient property
      oldValue.netSchematicPointsInfo_property.removeEBObserver (self.netSchematicPointsInfo_property) // Transient property
 //     oldValue.trackCount_property.removeEBObserversFrom (&self.mObserversOf_trackCount) // Transient property
      oldValue.trackCount_property.removeEBObserver (self.trackCount_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
 //     newValue.mNetName_property.addEBObserversFrom (&self.mObserversOf_mNetName) // Stored property
      newValue.mNetName_property.addEBObserver (self.mNetName_property) // Stored property
  //    newValue.netClassName_property.addEBObserversFrom (&self.mObserversOf_netClassName) // Transient property
      newValue.netClassName_property.addEBObserver (self.netClassName_property) // Transient property
  //    newValue.netClassTrackWidth_property.addEBObserversFrom (&self.mObserversOf_netClassTrackWidth) // Transient property
      newValue.netClassTrackWidth_property.addEBObserver (self.netClassTrackWidth_property) // Transient property
  //    newValue.netClassViaHoleDiameter_property.addEBObserversFrom (&self.mObserversOf_netClassViaHoleDiameter) // Transient property
      newValue.netClassViaHoleDiameter_property.addEBObserver (self.netClassViaHoleDiameter_property) // Transient property
  //    newValue.netClassViaPadDiameter_property.addEBObserversFrom (&self.mObserversOf_netClassViaPadDiameter) // Transient property
      newValue.netClassViaPadDiameter_property.addEBObserver (self.netClassViaPadDiameter_property) // Transient property
  //    newValue.wireColor_property.addEBObserversFrom (&self.mObserversOf_wireColor) // Transient property
      newValue.wireColor_property.addEBObserver (self.wireColor_property) // Transient property
  //    newValue.netSchematicPointsInfo_property.addEBObserversFrom (&self.mObserversOf_netSchematicPointsInfo) // Transient property
      newValue.netSchematicPointsInfo_property.addEBObserver (self.netSchematicPointsInfo_property) // Transient property
  //    newValue.trackCount_property.addEBObserversFrom (&self.mObserversOf_trackCount) // Transient property
      newValue.trackCount_property.addEBObserver (self.trackCount_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mNetName' stored property
  //····················································································································

  final let mNetName_property = EBGenericTransientProperty <String?> ()
//  private final var mObserversOf_mNetName = EBWeakEventSet ()

  //····················································································································

  final var mNetName_property_selection : EBSelection <String?> { // §
    return self.mNetName_property.selection
  }

  //····················································································································

  final func addEBObserverOf_mNetName (_ inObserver : EBEvent) {
    self.mNetName_property.addEBObserver (inObserver)
/*    self.mObserversOf_mNetName.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mNetName_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mNetName (_ inObserver : EBEvent) {
    self.mNetName_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mNetName.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mNetName_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'netClassName' transient property
  //····················································································································

  final let netClassName_property = EBGenericTransientProperty <String?> ()
//  private final var mObserversOf_netClassName = EBWeakEventSet ()

  //····················································································································

  final var netClassName_property_selection : EBSelection <String?> {
    return self.netClassName_property.selection
  }

  //····················································································································

  final func addEBObserverOf_netClassName (_ inObserver : EBEvent) {
    self.netClassName_property.addEBObserver (inObserver)
/*    self.mObserversOf_netClassName.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netClassName_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_netClassName (_ inObserver : EBEvent) {
    self.netClassName_property.removeEBObserver (inObserver)
/*    self.mObserversOf_netClassName.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netClassName_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'netClassTrackWidth' transient property
  //····················································································································

  final let netClassTrackWidth_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_netClassTrackWidth = EBWeakEventSet ()

  //····················································································································

  final var netClassTrackWidth_property_selection : EBSelection <Int?> {
    return self.netClassTrackWidth_property.selection
  }

  //····················································································································

  final func addEBObserverOf_netClassTrackWidth (_ inObserver : EBEvent) {
    self.netClassTrackWidth_property.addEBObserver (inObserver)
/*    self.mObserversOf_netClassTrackWidth.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netClassTrackWidth_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_netClassTrackWidth (_ inObserver : EBEvent) {
    self.netClassTrackWidth_property.removeEBObserver (inObserver)
/*    self.mObserversOf_netClassTrackWidth.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netClassTrackWidth_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'netClassViaHoleDiameter' transient property
  //····················································································································

  final let netClassViaHoleDiameter_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_netClassViaHoleDiameter = EBWeakEventSet ()

  //····················································································································

  final var netClassViaHoleDiameter_property_selection : EBSelection <Int?> {
    return self.netClassViaHoleDiameter_property.selection
  }

  //····················································································································

  final func addEBObserverOf_netClassViaHoleDiameter (_ inObserver : EBEvent) {
    self.netClassViaHoleDiameter_property.addEBObserver (inObserver)
/*    self.mObserversOf_netClassViaHoleDiameter.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netClassViaHoleDiameter_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_netClassViaHoleDiameter (_ inObserver : EBEvent) {
    self.netClassViaHoleDiameter_property.removeEBObserver (inObserver)
/*    self.mObserversOf_netClassViaHoleDiameter.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netClassViaHoleDiameter_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'netClassViaPadDiameter' transient property
  //····················································································································

  final let netClassViaPadDiameter_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_netClassViaPadDiameter = EBWeakEventSet ()

  //····················································································································

  final var netClassViaPadDiameter_property_selection : EBSelection <Int?> {
    return self.netClassViaPadDiameter_property.selection
  }

  //····················································································································

  final func addEBObserverOf_netClassViaPadDiameter (_ inObserver : EBEvent) {
    self.netClassViaPadDiameter_property.addEBObserver (inObserver)
/*    self.mObserversOf_netClassViaPadDiameter.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netClassViaPadDiameter_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_netClassViaPadDiameter (_ inObserver : EBEvent) {
    self.netClassViaPadDiameter_property.removeEBObserver (inObserver)
/*    self.mObserversOf_netClassViaPadDiameter.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netClassViaPadDiameter_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'wireColor' transient property
  //····················································································································

  final let wireColor_property = EBGenericTransientProperty <NSColor?> ()
//  private final var mObserversOf_wireColor = EBWeakEventSet ()

  //····················································································································

  final var wireColor_property_selection : EBSelection <NSColor?> {
    return self.wireColor_property.selection
  }

  //····················································································································

  final func addEBObserverOf_wireColor (_ inObserver : EBEvent) {
    self.wireColor_property.addEBObserver (inObserver)
/*    self.mObserversOf_wireColor.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.wireColor_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_wireColor (_ inObserver : EBEvent) {
    self.wireColor_property.removeEBObserver (inObserver)
/*    self.mObserversOf_wireColor.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.wireColor_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'netSchematicPointsInfo' transient property
  //····················································································································

  final let netSchematicPointsInfo_property = EBGenericTransientProperty <NetInfoPointArray?> ()
//  private final var mObserversOf_netSchematicPointsInfo = EBWeakEventSet ()

  //····················································································································

  final var netSchematicPointsInfo_property_selection : EBSelection <NetInfoPointArray?> {
    return self.netSchematicPointsInfo_property.selection
  }

  //····················································································································

  final func addEBObserverOf_netSchematicPointsInfo (_ inObserver : EBEvent) {
    self.netSchematicPointsInfo_property.addEBObserver (inObserver)
/*    self.mObserversOf_netSchematicPointsInfo.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netSchematicPointsInfo_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_netSchematicPointsInfo (_ inObserver : EBEvent) {
    self.netSchematicPointsInfo_property.removeEBObserver (inObserver)
/*    self.mObserversOf_netSchematicPointsInfo.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netSchematicPointsInfo_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'trackCount' transient property
  //····················································································································

  final let trackCount_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_trackCount = EBWeakEventSet ()

  //····················································································································

  final var trackCount_property_selection : EBSelection <Int?> {
    return self.trackCount_property.selection
  }

  //····················································································································

  final func addEBObserverOf_trackCount (_ inObserver : EBEvent) {
    self.trackCount_property.addEBObserver (inObserver)
/*    self.mObserversOf_trackCount.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.trackCount_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_trackCount (_ inObserver : EBEvent) {
    self.trackCount_property.removeEBObserver (inObserver)
/*    self.mObserversOf_trackCount.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.trackCount_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observable toMany property: mPoints
  //····················································································································

  private final var mObserversOf_mPoints = EBWeakEventSet ()

  //····················································································································

  final var mPoints_property_selection : EBSelection <[PointInSchematic]> {
    if let model = self.propval {
      switch (model.mPoints_property.selection) {
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

  final func addEBObserverOf_mPoints (_ inObserver : EBEvent) {
    self.mObserversOf_mPoints.insert (inObserver)
    if let object = self.propval {
      object.mPoints_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mPoints (_ inObserver : EBEvent) {
    self.mObserversOf_mPoints.remove (inObserver)
    if let object = self.propval {
      object.mPoints_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observable toMany property: mTracks
  //····················································································································

  private final var mObserversOf_mTracks = EBWeakEventSet ()

  //····················································································································

  final var mTracks_property_selection : EBSelection <[BoardTrack]> {
    if let model = self.propval {
      switch (model.mTracks_property.selection) {
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

  final func addEBObserverOf_mTracks (_ inObserver : EBEvent) {
    self.mObserversOf_mTracks.insert (inObserver)
    if let object = self.propval {
      object.mTracks_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mTracks (_ inObserver : EBEvent) {
    self.mObserversOf_mTracks.remove (inObserver)
    if let object = self.propval {
      object.mTracks_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure mNetName simple stored property
    self.mNetName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mNetName_property.selection {
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
  //--- Configure netClassName transient property
    self.netClassName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.netClassName_property.selection {
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
  //--- Configure netClassTrackWidth transient property
    self.netClassTrackWidth_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.netClassTrackWidth_property.selection {
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
  //--- Configure netClassViaHoleDiameter transient property
    self.netClassViaHoleDiameter_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.netClassViaHoleDiameter_property.selection {
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
  //--- Configure netClassViaPadDiameter transient property
    self.netClassViaPadDiameter_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.netClassViaPadDiameter_property.selection {
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
  //--- Configure wireColor transient property
    self.wireColor_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.wireColor_property.selection {
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
  //--- Configure netSchematicPointsInfo transient property
    self.netSchematicPointsInfo_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.netSchematicPointsInfo_property.selection {
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
  //--- Configure trackCount transient property
    self.trackCount_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.trackCount_property.selection {
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
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject NetInProject
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_NetInProject : ReadOnlyObject_NetInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_NetInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_NetInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : NetInProject? 
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

  override var selection : EBSelection < NetInProject? > {
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

  override var propval : NetInProject? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_NetInProject
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_NetInProject : ReadOnlyObject_NetInProject {

  //····················································································································
 
  func setProp (_ inValue : NetInProject?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_NetInProject
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_NetInProject : ReadWriteObject_NetInProject {

  //····················································································································

  private var mModel : ReadWriteObject_NetInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_NetInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : NetInProject?
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

  override func setProp (_ inValue : NetInProject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < NetInProject? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : NetInProject? {
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
//    StoredObject_NetInProject 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_NetInProject : ReadWriteObject_NetInProject, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  weak final var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

 //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : NetInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : NetInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : NetInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : NetInProject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : NetInProject?) {
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

  override var selection : EBSelection < NetInProject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : NetInProject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : NetInProject? { return self.mInternalValue }

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


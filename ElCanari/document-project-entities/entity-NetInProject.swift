//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol NetInProject_mNetName : AnyObject {
  var mNetName : String { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol NetInProject_netClassName : AnyObject {
  var netClassName : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol NetInProject_netClassTrackWidth : AnyObject {
  var netClassTrackWidth : Int? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol NetInProject_netClassViaHoleDiameter : AnyObject {
  var netClassViaHoleDiameter : Int? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol NetInProject_netClassViaPadDiameter : AnyObject {
  var netClassViaPadDiameter : Int? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol NetInProject_wireColor : AnyObject {
  var wireColor : NSColor? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol NetInProject_netSchematicPointsInfo : AnyObject {
  var netSchematicPointsInfo : NetInfoPointArray? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol NetInProject_trackCount : AnyObject {
  var trackCount : Int? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: NetInProject
//----------------------------------------------------------------------------------------------------------------------

final class NetInProject : EBManagedObject,
         NetInProject_mNetName,
         NetInProject_netClassName,
         NetInProject_netClassTrackWidth,
         NetInProject_netClassViaHoleDiameter,
         NetInProject_netClassViaPadDiameter,
         NetInProject_wireColor,
         NetInProject_netSchematicPointsInfo,
         NetInProject_trackCount {

  //····················································································································
  //   To many property: mPoints
  //····················································································································

  final let mPoints_property = StoredArrayOf_PointInSchematic (usedForSignature: false)

  //····················································································································

  final var mPoints_property_selection : EBSelection < [PointInSchematic] > {
    return self.mPoints_property.selection
  }

  //····················································································································

  final var mPoints : [PointInSchematic] {
    get { return self.mPoints_property.propval }
    set { self.mPoints_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: mNetName
  //····················································································································

  final let mNetName_property : EBStoredProperty_String

  //····················································································································

  final func reset_mNetName_toDefaultValue () {
    self.mNetName = ""
  }

  //····················································································································

  final var mNetName : String {
    get { return self.mNetName_property.propval }
    set { self.mNetName_property.setProp (newValue) }
  }

  //····················································································································

  final var mNetName_property_selection : EBSelection <String> { return self.mNetName_property.selection }

  //····················································································································
  //   To many property: mTracks
  //····················································································································

  final let mTracks_property = StoredArrayOf_BoardTrack (usedForSignature: false)

  //····················································································································

  final var mTracks_property_selection : EBSelection < [BoardTrack] > {
    return self.mTracks_property.selection
  }

  //····················································································································

  final var mTracks : [BoardTrack] {
    get { return self.mTracks_property.propval }
    set { self.mTracks_property.setProp (newValue) }
  }

  //····················································································································
  //   To one property: mNetClass
  //····················································································································

  final let mNetClass_property = StoredObject_NetClassInProject (usedForSignature: false)

  //····················································································································

  final var mNetClass_property_selection : EBSelection <NetClassInProject?> {
    return .single (self.mNetClass_property.propval)
  }

  //····················································································································

  final var mNetClass : NetClassInProject? {
    get {
      return self.mNetClass_property.propval
    }
    set {
      if self.mNetClass_property.propval != nil {
        self.mNetClass_property.setProp (nil)
      }
      if newValue != nil {
        self.mNetClass_property.setProp (newValue)
      }
    }
  }

  //····················································································································

  final let mNetClass_none = EBGenericTransientProperty <Bool> () // §

  //····················································································································

  final var mNetClass_none_selection : EBSelection <Bool> {
     return .single (self.mNetClass_property.propval == nil)
  }

  //····················································································································
  //   Transient property: netClassName
  //····················································································································

  final let netClassName_property = EBTransientProperty_String ()

  //····················································································································

  final var netClassName_property_selection : EBSelection <String> {
    return self.netClassName_property.selection
  }

  //····················································································································

  final var netClassName : String? {
    switch self.netClassName_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netClassTrackWidth
  //····················································································································

  final let netClassTrackWidth_property = EBTransientProperty_Int ()

  //····················································································································

  final var netClassTrackWidth_property_selection : EBSelection <Int> {
    return self.netClassTrackWidth_property.selection
  }

  //····················································································································

  final var netClassTrackWidth : Int? {
    switch self.netClassTrackWidth_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netClassViaHoleDiameter
  //····················································································································

  final let netClassViaHoleDiameter_property = EBTransientProperty_Int ()

  //····················································································································

  final var netClassViaHoleDiameter_property_selection : EBSelection <Int> {
    return self.netClassViaHoleDiameter_property.selection
  }

  //····················································································································

  final var netClassViaHoleDiameter : Int? {
    switch self.netClassViaHoleDiameter_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netClassViaPadDiameter
  //····················································································································

  final let netClassViaPadDiameter_property = EBTransientProperty_Int ()

  //····················································································································

  final var netClassViaPadDiameter_property_selection : EBSelection <Int> {
    return self.netClassViaPadDiameter_property.selection
  }

  //····················································································································

  final var netClassViaPadDiameter : Int? {
    switch self.netClassViaPadDiameter_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: wireColor
  //····················································································································

  final let wireColor_property = EBTransientProperty_NSColor ()

  //····················································································································

  final var wireColor_property_selection : EBSelection <NSColor> {
    return self.wireColor_property.selection
  }

  //····················································································································

  final var wireColor : NSColor? {
    switch self.wireColor_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: netSchematicPointsInfo
  //····················································································································

  final let netSchematicPointsInfo_property = EBTransientProperty_NetInfoPointArray ()

  //····················································································································

  final var netSchematicPointsInfo_property_selection : EBSelection <NetInfoPointArray> {
    return self.netSchematicPointsInfo_property.selection
  }

  //····················································································································

  final var netSchematicPointsInfo : NetInfoPointArray? {
    switch self.netSchematicPointsInfo_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: trackCount
  //····················································································································

  final let trackCount_property = EBTransientProperty_Int ()

  //····················································································································

  final var trackCount_property_selection : EBSelection <Int> {
    return self.trackCount_property.selection
  }

  //····················································································································

  final var trackCount : Int? {
    switch self.trackCount_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    self.mNetName_property = EBStoredProperty_String (defaultValue: "", undoManager: ebUndoManager)
    super.init (ebUndoManager)
    self.mNetClass_none.mReadModelFunction = { [weak self] in // §
      if let uwSelf = self {
        return .single (uwSelf.mNetClass_property.propval == nil)
      }else{
        return .empty
      }
    }
    self.mNetClass_property.addEBObserver (self.mNetClass_none)
  //--- To many property: mPoints (has opposite relationship)
    self.mPoints_property.ebUndoManager = self.ebUndoManager
    self.mPoints_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNet_property.setProp (me) } },
      resetter: { inObject in inObject.mNet_property.setProp (nil) }
    )
  //--- To many property: mTracks (has opposite relationship)
    self.mTracks_property.ebUndoManager = self.ebUndoManager
    self.mTracks_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNet_property.setProp (me) } },
      resetter: { inObject in inObject.mNet_property.setProp (nil) }
    )
  //--- To one property: mNetClass (has opposite to many relationship: mNets)
    self.mNetClass_property.ebUndoManager = self.ebUndoManager
    self.mNetClass_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNets_property.add (me) } },
      resetter: { [weak self] inObject in if let me = self { inObject.mNets_property.remove (me) } }
    )
  //--- Atomic property: netClassName
    self.netClassName_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mNetClass_property.mNetClassName_property.selection) {
        case (.single (let v0)) :
          return .single (transient_NetInProject_netClassName (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mNetClass_property.addEBObserverOf_mNetClassName (self.netClassName_property)
  //--- Atomic property: netClassTrackWidth
    self.netClassTrackWidth_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mNetClass_property.mTrackWidth_property.selection) {
        case (.single (let v0)) :
          return .single (transient_NetInProject_netClassTrackWidth (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mNetClass_property.addEBObserverOf_mTrackWidth (self.netClassTrackWidth_property)
  //--- Atomic property: netClassViaHoleDiameter
    self.netClassViaHoleDiameter_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mNetClass_property.mViaHoleDiameter_property.selection) {
        case (.single (let v0)) :
          return .single (transient_NetInProject_netClassViaHoleDiameter (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mNetClass_property.addEBObserverOf_mViaHoleDiameter (self.netClassViaHoleDiameter_property)
  //--- Atomic property: netClassViaPadDiameter
    self.netClassViaPadDiameter_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mNetClass_property.mViaPadDiameter_property.selection) {
        case (.single (let v0)) :
          return .single (transient_NetInProject_netClassViaPadDiameter (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mNetClass_property.addEBObserverOf_mViaPadDiameter (self.netClassViaPadDiameter_property)
  //--- Atomic property: wireColor
    self.wireColor_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mNetClass_property.mNetClassColor_property.selection) {
        case (.single (let v0)) :
          return .single (transient_NetInProject_wireColor (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mNetClass_property.addEBObserverOf_mNetClassColor (self.wireColor_property)
  //--- Atomic property: netSchematicPointsInfo
    self.netSchematicPointsInfo_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mPoints_property.selection) {
        case (.single (let v0)) :
          return .single (transient_NetInProject_netSchematicPointsInfo (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mPoints_property.addEBObserverOf_netInfoForPoint (self.netSchematicPointsInfo_property)
  //--- Atomic property: trackCount
    self.trackCount_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.mTracks_property.count_property.selection) {
        case (.single (let v0)) :
          return .single (transient_NetInProject_trackCount (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.mTracks_property.addEBObserver (self.trackCount_property)
  //--- Install undoers and opposite setter for relationships
    self.mPoints_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNet_property.setProp (me) } },
      resetter: { inObject in inObject.mNet_property.setProp (nil) }
    )
    self.mTracks_property.setOppositeRelationShipFunctions (
      setter: { [weak self] inObject in if let me = self { inObject.mNet_property.setProp (me) } },
      resetter: { inObject in inObject.mNet_property.setProp (nil) }
    )
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.mNetClass_property.mNetClassName_property.removeEBObserver (self.netClassName_property)
    // self.mNetClass_property.mTrackWidth_property.removeEBObserver (self.netClassTrackWidth_property)
    // self.mNetClass_property.mViaHoleDiameter_property.removeEBObserver (self.netClassViaHoleDiameter_property)
    // self.mNetClass_property.mViaPadDiameter_property.removeEBObserver (self.netClassViaPadDiameter_property)
    // self.mNetClass_property.mNetClassColor_property.removeEBObserver (self.wireColor_property)
    // self.mPoints_property.removeEBObserverOf_netInfoForPoint (self.netSchematicPointsInfo_property)
    // self.mTracks_property.removeEBObserver (self.trackCount_property)
  //--- Unregister properties for handling signature
  }

  //····················································································································
  //    Extern delegates
  //····················································································································


  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    super.populateExplorerWindow (&y, view:view)
    createEntryForPropertyNamed (
      "mNetName",
      idx: self.mNetName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mNetName_property.mObserverExplorer,
      valueExplorer: &self.mNetName_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "netClassName",
      idx: self.netClassName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netClassName_property.mObserverExplorer,
      valueExplorer: &self.netClassName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netClassTrackWidth",
      idx: self.netClassTrackWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netClassTrackWidth_property.mObserverExplorer,
      valueExplorer: &self.netClassTrackWidth_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netClassViaHoleDiameter",
      idx: self.netClassViaHoleDiameter_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netClassViaHoleDiameter_property.mObserverExplorer,
      valueExplorer: &self.netClassViaHoleDiameter_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netClassViaPadDiameter",
      idx: self.netClassViaPadDiameter_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netClassViaPadDiameter_property.mObserverExplorer,
      valueExplorer: &self.netClassViaPadDiameter_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "wireColor",
      idx: self.wireColor_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.wireColor_property.mObserverExplorer,
      valueExplorer: &self.wireColor_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "netSchematicPointsInfo",
      idx: self.netSchematicPointsInfo_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.netSchematicPointsInfo_property.mObserverExplorer,
      valueExplorer: &self.netSchematicPointsInfo_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "trackCount",
      idx: self.trackCount_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.trackCount_property.mObserverExplorer,
      valueExplorer: &self.trackCount_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "mPoints",
      idx:mPoints_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mPoints_property.mValueExplorer
    )
    createEntryForToManyRelationshipNamed (
      "mTracks",
      idx:mTracks_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mTracks_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForToOneRelationshipNamed (
      "mNetClass",
      idx:self.mNetClass_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&self.mNetClass_property.mValueExplorer
    )
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- To many property: mPoints
    self.mPoints_property.mValueExplorer = nil
  //--- Atomic property: mNetName
    self.mNetName_property.mObserverExplorer = nil
    self.mNetName_property.mValueExplorer = nil
  //--- To many property: mTracks
    self.mTracks_property.mValueExplorer = nil
  //--- To one property: mNetClass
    self.mNetClass_property.mObserverExplorer = nil
    self.mNetClass_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mPoints = []
    self.mTracks = []
  //---
    super.cleanUpToManyRelationships ()
  }

  //····················································································································
  //    cleanUpToOneRelationships
  //····················································································································

  override internal func cleanUpToOneRelationships () {
    self.mNetClass = nil
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- To many property: mPoints
    self.store (
      managedObjectArray: self.mPoints_property.propval,
      relationshipName: "mPoints",
      intoDictionary: ioDictionary
    )
  //--- Atomic property: mNetName
    self.mNetName_property.storeIn (dictionary: ioDictionary, forKey: "mNetName")
  //--- To many property: mTracks
    self.store (
      managedObjectArray: self.mTracks_property.propval,
      relationshipName: "mTracks",
      intoDictionary: ioDictionary
    )
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  //--- To many property: mPoints
    self.mPoints_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mPoints",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [PointInSchematic])
  //--- To many property: mTracks
    self.mTracks_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mTracks",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [BoardTrack])
  //--- To one property: mNetClass
    do{
      let possibleEntity = readEntityFromDictionary (
        inRelationshipName: "mNetClass",
        inDictionary: inDictionary,
        managedObjectArray: &managedObjectArray
      )
      if let entity = possibleEntity as? NetClassInProject {
        self.mNetClass_property.setProp (entity)
      }
    }
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mNetName
    self.mNetName_property.readFrom (dictionary: inDictionary, forKey: "mNetName")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "mNetName\n"
  //--- To one relationships
    ioString += "mNetClass\n"
  //--- To many relationships
    ioString += "mPoints\n"
    ioString += "mTracks\n"
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.mNetName.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
    if let object = self.mNetClass {
      ioData.append (base62Encoded: object.savingIndex)
    }
    ioData.append (ascii: .lineFeed)
  //--- To many relationships
    do{
      var optionalFirstIndex : Int? = nil
      var rangeCount = 0
      for object in self.mPoints {
        if let firstIndex = optionalFirstIndex {
          if object.savingIndex == (firstIndex + 1) {
            rangeCount += 1
            optionalFirstIndex = object.savingIndex
          }else if rangeCount > 0 {
            ioData.append (ascii: .colon)
            ioData.append (base62Encoded: rangeCount)
            ioData.append (ascii: .space)
            ioData.append (base62Encoded: object.savingIndex)
            rangeCount = 0
            optionalFirstIndex = object.savingIndex
          }else{
            ioData.append (ascii: .space)
            ioData.append (base62Encoded: object.savingIndex)
            optionalFirstIndex = object.savingIndex
          }
        }else{
          ioData.append (base62Encoded: object.savingIndex)
          optionalFirstIndex = object.savingIndex
        }
      }
      if optionalFirstIndex != nil, rangeCount > 0 {
        ioData.append (ascii: .colon)
        ioData.append (base62Encoded: rangeCount)
      }
      ioData.append (ascii: .lineFeed)
    }
    do{
      var optionalFirstIndex : Int? = nil
      var rangeCount = 0
      for object in self.mTracks {
        if let firstIndex = optionalFirstIndex {
          if object.savingIndex == (firstIndex + 1) {
            rangeCount += 1
            optionalFirstIndex = object.savingIndex
          }else if rangeCount > 0 {
            ioData.append (ascii: .colon)
            ioData.append (base62Encoded: rangeCount)
            ioData.append (ascii: .space)
            ioData.append (base62Encoded: object.savingIndex)
            rangeCount = 0
            optionalFirstIndex = object.savingIndex
          }else{
            ioData.append (ascii: .space)
            ioData.append (base62Encoded: object.savingIndex)
            optionalFirstIndex = object.savingIndex
          }
        }else{
          ioData.append (base62Encoded: object.savingIndex)
          optionalFirstIndex = object.savingIndex
        }
      }
      if optionalFirstIndex != nil, rangeCount > 0 {
        ioData.append (ascii: .colon)
        ioData.append (base62Encoded: rangeCount)
      }
      ioData.append (ascii: .lineFeed)
    }
  }

  //····················································································································
  //    setUpWithTextDictionary
  //····················································································································

  override func setUpWithTextDictionary (_ inDictionary : [String : NSRange],
                                         _ inObjectArray : [EBManagedObject],
                                         _ inData : Data,
                                         _ inParallelObjectSetupContext : ParallelObjectSetupContext) {
    super.setUpWithTextDictionary (inDictionary, inObjectArray, inData, inParallelObjectSetupContext)
    inParallelObjectSetupContext.addOperation {
    //--- Atomic properties
      if let range = inDictionary ["mNetName"], let value = String.unarchiveFromDataRange (inData, range) {
        self.mNetName = value
      }
    //--- To one relationships
      if let range = inDictionary ["mNetClass"], let objectIndex = inData.base62EncodedInt (range: range) {
        let object = inObjectArray [objectIndex] as! NetClassInProject
        inParallelObjectSetupContext.addToOneSetupDeferredOperation { self.mNetClass = object }
      }
    //--- To many relationships
      if let range = inDictionary ["mPoints"], range.length > 0 {
        var relationshipArray = [PointInSchematic] ()
        let indexArray = inData.base62EncodedIntArray (fromRange: range)
        for idx in indexArray {
          relationshipArray.append (inObjectArray [idx] as! PointInSchematic)
        }
        inParallelObjectSetupContext.addToManySetupDeferredOperation { self.mPoints = relationshipArray }
      }
      if let range = inDictionary ["mTracks"], range.length > 0 {
        var relationshipArray = [BoardTrack] ()
        let indexArray = inData.base62EncodedIntArray (fromRange: range)
        for idx in indexArray {
          relationshipArray.append (inObjectArray [idx] as! BoardTrack)
        }
        inParallelObjectSetupContext.addToManySetupDeferredOperation { self.mTracks = relationshipArray }
      }
    }
  //--- End of addOperation
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: mPoints
    for managedObject in self.mPoints {
      objects.append (managedObject)
    }
  //--- To many property: mTracks
    for managedObject in self.mTracks {
      objects.append (managedObject)
    }
  //--- To one property: mNetClass
    if let object = self.mNetClass {
      objects.append (object)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: mPoints
    for managedObject in self.mPoints {
      objects.append (managedObject)
    }
  //--- To many property: mTracks
    for managedObject in self.mTracks {
      objects.append (managedObject)
    }
  //--- To one property: mNetClass
    if let object = self.mNetClass {
      objects.append (object)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


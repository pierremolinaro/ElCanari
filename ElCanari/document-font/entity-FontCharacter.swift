//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol FontCharacter_codePoint : class {
  var codePoint : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontCharacter_advance : class {
  var advance : Int { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontCharacter_mWarnsWhenNoSegment : class {
  var mWarnsWhenNoSegment : Bool { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontCharacter_mWarnsWhenAdvanceIsZero : class {
  var mWarnsWhenAdvanceIsZero : Bool { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontCharacter_segmentArrayForDrawing : class {
  var segmentArrayForDrawing : CharacterSegmentListClass? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontCharacter_gerberCode : class {
  var gerberCode : CharacterGerberCodeClass? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontCharacter_gerberCodeInstructionCountMessage : class {
  var gerberCodeInstructionCountMessage : String? { get }
}

//----------------------------------------------------------------------------------------------------------------------

protocol FontCharacter_issues : class {
  var issues : CanariIssueArray? { get }
}

//----------------------------------------------------------------------------------------------------------------------
//    Entity: FontCharacter
//----------------------------------------------------------------------------------------------------------------------

class FontCharacter : EBManagedObject,
         FontCharacter_codePoint,
         FontCharacter_advance,
         FontCharacter_mWarnsWhenNoSegment,
         FontCharacter_mWarnsWhenAdvanceIsZero,
         FontCharacter_segmentArrayForDrawing,
         FontCharacter_gerberCode,
         FontCharacter_gerberCodeInstructionCountMessage,
         FontCharacter_issues {

  //····················································································································
  //   Atomic property: codePoint
  //····················································································································

  let codePoint_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_codePoint_toDefaultValue () {
    self.codePoint = 0
  }

  //····················································································································

  final var codePoint : Int {
    get { return self.codePoint_property.propval }
    set { self.codePoint_property.setProp (newValue) }
  }

  //····················································································································

  final var codePoint_property_selection : EBSelection <Int> { return self.codePoint_property.prop }

  //····················································································································
  //   Atomic property: advance
  //····················································································································

  let advance_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  final func reset_advance_toDefaultValue () {
    self.advance = 0
  }

  //····················································································································

  final var advance : Int {
    get { return self.advance_property.propval }
    set { self.advance_property.setProp (newValue) }
  }

  //····················································································································

  final var advance_property_selection : EBSelection <Int> { return self.advance_property.prop }

  //····················································································································
  //   Atomic property: mWarnsWhenNoSegment
  //····················································································································

  let mWarnsWhenNoSegment_property = EBStoredProperty_Bool (defaultValue: true)

  //····················································································································

  final func reset_mWarnsWhenNoSegment_toDefaultValue () {
    self.mWarnsWhenNoSegment = true
  }

  //····················································································································

  final var mWarnsWhenNoSegment : Bool {
    get { return self.mWarnsWhenNoSegment_property.propval }
    set { self.mWarnsWhenNoSegment_property.setProp (newValue) }
  }

  //····················································································································

  final var mWarnsWhenNoSegment_property_selection : EBSelection <Bool> { return self.mWarnsWhenNoSegment_property.prop }

  //····················································································································
  //   Atomic property: mWarnsWhenAdvanceIsZero
  //····················································································································

  let mWarnsWhenAdvanceIsZero_property = EBStoredProperty_Bool (defaultValue: true)

  //····················································································································

  final func reset_mWarnsWhenAdvanceIsZero_toDefaultValue () {
    self.mWarnsWhenAdvanceIsZero = true
  }

  //····················································································································

  final var mWarnsWhenAdvanceIsZero : Bool {
    get { return self.mWarnsWhenAdvanceIsZero_property.propval }
    set { self.mWarnsWhenAdvanceIsZero_property.setProp (newValue) }
  }

  //····················································································································

  final var mWarnsWhenAdvanceIsZero_property_selection : EBSelection <Bool> { return self.mWarnsWhenAdvanceIsZero_property.prop }

  //····················································································································
  //   To many property: segments
  //····················································································································

  let segments_property = StoredArrayOf_SegmentForFontCharacter (usedForSignature: true)

  //····················································································································

  var segments_property_selection : EBSelection < [SegmentForFontCharacter] > {
    return self.segments_property.prop
  }

  //····················································································································

  var segments : [SegmentForFontCharacter] {
    get { return self.segments_property.propval }
    set { self.segments_property.setProp (newValue) }
  }

  //····················································································································
  //   Transient property: segmentArrayForDrawing
  //····················································································································

  let segmentArrayForDrawing_property = EBTransientProperty_CharacterSegmentListClass ()

  //····················································································································

  var segmentArrayForDrawing_property_selection : EBSelection <CharacterSegmentListClass> {
    return self.segmentArrayForDrawing_property.prop
  }

  //····················································································································

  var segmentArrayForDrawing : CharacterSegmentListClass? {
    switch self.segmentArrayForDrawing_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: gerberCode
  //····················································································································

  let gerberCode_property = EBTransientProperty_CharacterGerberCodeClass ()

  //····················································································································

  var gerberCode_property_selection : EBSelection <CharacterGerberCodeClass> {
    return self.gerberCode_property.prop
  }

  //····················································································································

  var gerberCode : CharacterGerberCodeClass? {
    switch self.gerberCode_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: gerberCodeInstructionCountMessage
  //····················································································································

  let gerberCodeInstructionCountMessage_property = EBTransientProperty_String ()

  //····················································································································

  var gerberCodeInstructionCountMessage_property_selection : EBSelection <String> {
    return self.gerberCodeInstructionCountMessage_property.prop
  }

  //····················································································································

  var gerberCodeInstructionCountMessage : String? {
    switch self.gerberCodeInstructionCountMessage_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: issues
  //····················································································································

  let issues_property = EBTransientProperty_CanariIssueArray ()

  //····················································································································

  var issues_property_selection : EBSelection <CanariIssueArray> {
    return self.issues_property.prop
  }

  //····················································································································

  var issues : CanariIssueArray? {
    switch self.issues_property_selection {
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
    super.init (ebUndoManager)
    self.configureObject ()
  }
  
  //····················································································································

  private final func configureObject () {
  //--- Atomic property: codePoint
    self.codePoint_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: advance
    self.advance_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mWarnsWhenNoSegment
    self.mWarnsWhenNoSegment_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mWarnsWhenAdvanceIsZero
    self.mWarnsWhenAdvanceIsZero_property.ebUndoManager = self.ebUndoManager
  //--- To many property: segments (no option)
    self.segments_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: segmentArrayForDrawing
    self.segmentArrayForDrawing_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.segments_property_selection.kind ()
        kind &= unwSelf.segments_property_selection.kind ()
        kind &= unwSelf.segments_property_selection.kind ()
        kind &= unwSelf.segments_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.segments_property_selection, unwSelf.segments_property_selection, unwSelf.segments_property_selection, unwSelf.segments_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_FontCharacter_segmentArrayForDrawing (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.segments_property.addEBObserverOf_x1 (self.segmentArrayForDrawing_property)
    self.segments_property.addEBObserverOf_y1 (self.segmentArrayForDrawing_property)
    self.segments_property.addEBObserverOf_x2 (self.segmentArrayForDrawing_property)
    self.segments_property.addEBObserverOf_y2 (self.segmentArrayForDrawing_property)
  //--- Atomic property: gerberCode
    self.gerberCode_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.segmentArrayForDrawing_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.segmentArrayForDrawing_property_selection) {
          case (.single (let v0)) :
            return .single (transient_FontCharacter_gerberCode (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.segmentArrayForDrawing_property.addEBObserver (self.gerberCode_property)
  //--- Atomic property: gerberCodeInstructionCountMessage
    self.gerberCodeInstructionCountMessage_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.gerberCode_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.gerberCode_property_selection) {
          case (.single (let v0)) :
            return .single (transient_FontCharacter_gerberCodeInstructionCountMessage (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.gerberCode_property.addEBObserver (self.gerberCodeInstructionCountMessage_property)
  //--- Atomic property: issues
    self.issues_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.codePoint_property_selection.kind ()
        kind &= unwSelf.advance_property_selection.kind ()
        kind &= unwSelf.mWarnsWhenNoSegment_property_selection.kind ()
        kind &= unwSelf.mWarnsWhenAdvanceIsZero_property_selection.kind ()
        kind &= unwSelf.segments_property.count_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.codePoint_property_selection, unwSelf.advance_property_selection, unwSelf.mWarnsWhenNoSegment_property_selection, unwSelf.mWarnsWhenAdvanceIsZero_property_selection, unwSelf.segments_property.count_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
            return .single (transient_FontCharacter_issues (v0, v1, v2, v3, v4))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.codePoint_property.addEBObserver (self.issues_property)
    self.advance_property.addEBObserver (self.issues_property)
    self.mWarnsWhenNoSegment_property.addEBObserver (self.issues_property)
    self.mWarnsWhenAdvanceIsZero_property.addEBObserver (self.issues_property)
    self.segments_property.addEBObserver (self.issues_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
    self.advance_property.setSignatureObserver (observer: self)
    self.codePoint_property.setSignatureObserver (observer: self)
    self.mWarnsWhenAdvanceIsZero_property.setSignatureObserver (observer: self)
    self.mWarnsWhenNoSegment_property.setSignatureObserver (observer: self)
    self.segments_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.segments_property.removeEBObserverOf_x1 (self.segmentArrayForDrawing_property)
    self.segments_property.removeEBObserverOf_y1 (self.segmentArrayForDrawing_property)
    self.segments_property.removeEBObserverOf_x2 (self.segmentArrayForDrawing_property)
    self.segments_property.removeEBObserverOf_y2 (self.segmentArrayForDrawing_property)
    self.segmentArrayForDrawing_property.removeEBObserver (self.gerberCode_property)
    self.gerberCode_property.removeEBObserver (self.gerberCodeInstructionCountMessage_property)
    self.codePoint_property.removeEBObserver (self.issues_property)
    self.advance_property.removeEBObserver (self.issues_property)
    self.mWarnsWhenNoSegment_property.removeEBObserver (self.issues_property)
    self.mWarnsWhenAdvanceIsZero_property.removeEBObserver (self.issues_property)
    self.segments_property.removeEBObserver (self.issues_property)
  //--- Unregister properties for handling signature
    self.advance_property.setSignatureObserver (observer: nil)
    self.codePoint_property.setSignatureObserver (observer: nil)
    self.mWarnsWhenAdvanceIsZero_property.setSignatureObserver (observer: nil)
    self.mWarnsWhenNoSegment_property.setSignatureObserver (observer: nil)
    self.segments_property.setSignatureObserver (observer: nil)
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
      "codePoint",
      idx: self.codePoint_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.codePoint_property.mObserverExplorer,
      valueExplorer: &self.codePoint_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "advance",
      idx: self.advance_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.advance_property.mObserverExplorer,
      valueExplorer: &self.advance_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mWarnsWhenNoSegment",
      idx: self.mWarnsWhenNoSegment_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mWarnsWhenNoSegment_property.mObserverExplorer,
      valueExplorer: &self.mWarnsWhenNoSegment_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mWarnsWhenAdvanceIsZero",
      idx: self.mWarnsWhenAdvanceIsZero_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mWarnsWhenAdvanceIsZero_property.mObserverExplorer,
      valueExplorer: &self.mWarnsWhenAdvanceIsZero_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "segmentArrayForDrawing",
      idx: self.segmentArrayForDrawing_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.segmentArrayForDrawing_property.mObserverExplorer,
      valueExplorer: &self.segmentArrayForDrawing_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "gerberCode",
      idx: self.gerberCode_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.gerberCode_property.mObserverExplorer,
      valueExplorer: &self.gerberCode_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "gerberCodeInstructionCountMessage",
      idx: self.gerberCodeInstructionCountMessage_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.gerberCodeInstructionCountMessage_property.mObserverExplorer,
      valueExplorer: &self.gerberCodeInstructionCountMessage_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "issues",
      idx: self.issues_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.issues_property.mObserverExplorer,
      valueExplorer: &self.issues_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "segments",
      idx:segments_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&segments_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: codePoint
    self.codePoint_property.mObserverExplorer = nil
    self.codePoint_property.mValueExplorer = nil
  //--- Atomic property: advance
    self.advance_property.mObserverExplorer = nil
    self.advance_property.mValueExplorer = nil
  //--- Atomic property: mWarnsWhenNoSegment
    self.mWarnsWhenNoSegment_property.mObserverExplorer = nil
    self.mWarnsWhenNoSegment_property.mValueExplorer = nil
  //--- Atomic property: mWarnsWhenAdvanceIsZero
    self.mWarnsWhenAdvanceIsZero_property.mObserverExplorer = nil
    self.mWarnsWhenAdvanceIsZero_property.mValueExplorer = nil
  //--- To many property: segments
    self.segments_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.segments = []
  //---
    super.cleanUpToManyRelationships ()
  }

  //····················································································································
  //    cleanUpToOneRelationships
  //····················································································································

  override internal func cleanUpToOneRelationships () {
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: codePoint
    self.codePoint_property.storeIn (dictionary: ioDictionary, forKey: "codePoint")
  //--- Atomic property: advance
    self.advance_property.storeIn (dictionary: ioDictionary, forKey: "advance")
  //--- Atomic property: mWarnsWhenNoSegment
    self.mWarnsWhenNoSegment_property.storeIn (dictionary: ioDictionary, forKey: "mWarnsWhenNoSegment")
  //--- Atomic property: mWarnsWhenAdvanceIsZero
    self.mWarnsWhenAdvanceIsZero_property.storeIn (dictionary: ioDictionary, forKey: "mWarnsWhenAdvanceIsZero")
  //--- To many property: segments
    self.store (
      managedObjectArray: self.segments_property.propval,
      relationshipName: "segments",
      intoDictionary: ioDictionary
    )
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  //--- To many property: segments
    self.segments_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "segments",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [SegmentForFontCharacter])
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: codePoint
    self.codePoint_property.readFrom (dictionary: inDictionary, forKey: "codePoint")
  //--- Atomic property: advance
    self.advance_property.readFrom (dictionary: inDictionary, forKey: "advance")
  //--- Atomic property: mWarnsWhenNoSegment
    self.mWarnsWhenNoSegment_property.readFrom (dictionary: inDictionary, forKey: "mWarnsWhenNoSegment")
  //--- Atomic property: mWarnsWhenAdvanceIsZero
    self.mWarnsWhenAdvanceIsZero_property.readFrom (dictionary: inDictionary, forKey: "mWarnsWhenAdvanceIsZero")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "codePoint\n"
    ioString += "advance\n"
    ioString += "mWarnsWhenNoSegment\n"
    ioString += "mWarnsWhenAdvanceIsZero\n"
  //--- To one relationships
  //--- To many relationships
    ioString += "segments\n"
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.codePoint.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.advance.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mWarnsWhenNoSegment.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.mWarnsWhenAdvanceIsZero.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
  //--- To many relationships
    do{
      var optionalFirstIndex : Int? = nil
      var rangeCount = 0
      for object in self.segments {
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

  override func setUpWithTextDictionary (_ inDictionary : [String : Data], _ inObjectArray : [EBManagedObject]) {
    super.setUpWithTextDictionary (inDictionary, inObjectArray)
  //--- Atomic properties
    if let stringData = inDictionary ["codePoint"], let value = Int.unarchiveFromStringData (stringData) {
      self.codePoint = value
    }
    if let stringData = inDictionary ["advance"], let value = Int.unarchiveFromStringData (stringData) {
      self.advance = value
    }
    if let stringData = inDictionary ["mWarnsWhenNoSegment"], let value = Bool.unarchiveFromStringData (stringData) {
      self.mWarnsWhenNoSegment = value
    }
    if let stringData = inDictionary ["mWarnsWhenAdvanceIsZero"], let value = Bool.unarchiveFromStringData (stringData) {
      self.mWarnsWhenAdvanceIsZero = value
    }
  //--- To one relationships
  //--- To many relationships
    if let stringData = inDictionary ["segments"], stringData.count > 0 {
      var relationshipArray = [SegmentForFontCharacter] ()
      let indexArray = stringData.base62EncodedIntArray ()
      // Swift.print ("TOMANY '\(s)', \(a)")
      for idx in indexArray {
        relationshipArray.append (inObjectArray [idx] as! SegmentForFontCharacter)
      }
      //self.segments = []
      self.segments = relationshipArray
    }
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: segments
    for managedObject in self.segments {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: segments
    for managedObject in self.segments {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.advance_property.signature ())
    crc.accumulateUInt32 (self.codePoint_property.signature ())
    crc.accumulateUInt32 (self.mWarnsWhenAdvanceIsZero_property.signature ())
    crc.accumulateUInt32 (self.mWarnsWhenNoSegment_property.signature ())
    crc.accumulateUInt32 (self.segments_property.signature ())
    return crc
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


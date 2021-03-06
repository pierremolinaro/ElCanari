//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_comments : AnyObject {
  var comments : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_nominalSize : AnyObject {
  var nominalSize : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_selectedTab : AnyObject {
  var selectedTab : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_selectedInspector : AnyObject {
  var selectedInspector : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_currentCharacterCodePoint : AnyObject {
  var currentCharacterCodePoint : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_currentCharacterCodePointString : AnyObject {
  var currentCharacterCodePointString : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_sampleStringBezierPath : AnyObject {
  var sampleStringBezierPath : NSBezierPath? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_sampleStringBezierPathWidth : AnyObject {
  var sampleStringBezierPathWidth : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_sampleStringBezierPathAscent : AnyObject {
  var sampleStringBezierPathAscent : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_sampleStringBezierPathDescent : AnyObject {
  var sampleStringBezierPathDescent : String? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_definedCharacters : AnyObject {
  var definedCharacters : DefinedCharactersInDevice? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol FontRoot_issues : AnyObject {
  var issues : CanariIssueArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: FontRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class FontRoot : EBManagedObject,
         FontRoot_comments,
         FontRoot_nominalSize,
         FontRoot_selectedTab,
         FontRoot_selectedInspector,
         FontRoot_currentCharacterCodePoint,
         FontRoot_currentCharacterCodePointString,
         FontRoot_sampleStringBezierPath,
         FontRoot_sampleStringBezierPathWidth,
         FontRoot_sampleStringBezierPathAscent,
         FontRoot_sampleStringBezierPathDescent,
         FontRoot_definedCharacters,
         FontRoot_issues {

  //····················································································································
  //   Atomic property: comments
  //····················································································································

  final let comments_property : EBStoredProperty_String

  //····················································································································

  final func reset_comments_toDefaultValue () {
    self.comments = ""
  }

  //····················································································································

  final var comments : String {
    get { return self.comments_property.propval }
    set { self.comments_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: nominalSize
  //····················································································································

  final let nominalSize_property : EBStoredProperty_Int

  //····················································································································

  final func reset_nominalSize_toDefaultValue () {
    self.nominalSize = 14
  }

  //····················································································································

  final var nominalSize : Int {
    get { return self.nominalSize_property.propval }
    set { self.nominalSize_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: selectedTab
  //····················································································································

  final let selectedTab_property : EBStoredProperty_Int

  //····················································································································

  final func reset_selectedTab_toDefaultValue () {
    self.selectedTab = 0
  }

  //····················································································································

  final var selectedTab : Int {
    get { return self.selectedTab_property.propval }
    set { self.selectedTab_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: selectedInspector
  //····················································································································

  final let selectedInspector_property : EBStoredProperty_Int

  //····················································································································

  final func reset_selectedInspector_toDefaultValue () {
    self.selectedInspector = 0
  }

  //····················································································································

  final var selectedInspector : Int {
    get { return self.selectedInspector_property.propval }
    set { self.selectedInspector_property.setProp (newValue) }
  }

  //····················································································································
  //   Atomic property: currentCharacterCodePoint
  //····················································································································

  final let currentCharacterCodePoint_property : EBStoredProperty_Int

  //····················································································································

  final func reset_currentCharacterCodePoint_toDefaultValue () {
    self.currentCharacterCodePoint = 32
  }

  //····················································································································

  final var currentCharacterCodePoint : Int {
    get { return self.currentCharacterCodePoint_property.propval }
    set { self.currentCharacterCodePoint_property.setProp (newValue) }
  }

  //····················································································································

  final func currentCharacterCodePoint_validateAndSetProp (_ inCandidateValue : Int, windowForSheet inWindow : NSWindow?) -> Bool {
    return self.currentCharacterCodePoint_property.validateAndSetProp (inCandidateValue, windowForSheet: inWindow)
  }

  //····················································································································
  //   To many property: characters
  //····················································································································

  final let characters_property = StoredArrayOf_FontCharacter (usedForSignature: true)

  //····················································································································

  //····················································································································

  final var characters : [FontCharacter] {
    get { return self.characters_property.propval }
    set { self.characters_property.setProp (newValue) }
  }

  //····················································································································
  //   Transient property: currentCharacterCodePointString
  //····················································································································

  final let currentCharacterCodePointString_property = EBTransientProperty_String ()

  //····················································································································

  final var currentCharacterCodePointString : String? {
    switch self.currentCharacterCodePointString_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: sampleStringBezierPath
  //····················································································································

  final let sampleStringBezierPath_property = EBTransientProperty_NSBezierPath ()

  //····················································································································

  final var sampleStringBezierPath : NSBezierPath? {
    switch self.sampleStringBezierPath_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: sampleStringBezierPathWidth
  //····················································································································

  final let sampleStringBezierPathWidth_property = EBTransientProperty_String ()

  //····················································································································

  final var sampleStringBezierPathWidth : String? {
    switch self.sampleStringBezierPathWidth_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: sampleStringBezierPathAscent
  //····················································································································

  final let sampleStringBezierPathAscent_property = EBTransientProperty_String ()

  //····················································································································

  final var sampleStringBezierPathAscent : String? {
    switch self.sampleStringBezierPathAscent_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: sampleStringBezierPathDescent
  //····················································································································

  final let sampleStringBezierPathDescent_property = EBTransientProperty_String ()

  //····················································································································

  final var sampleStringBezierPathDescent : String? {
    switch self.sampleStringBezierPathDescent_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: definedCharacters
  //····················································································································

  final let definedCharacters_property = EBTransientProperty_DefinedCharactersInDevice ()

  //····················································································································

  final var definedCharacters : DefinedCharactersInDevice? {
    switch self.definedCharacters_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: issues
  //····················································································································

  final let issues_property = EBTransientProperty_CanariIssueArray ()

  //····················································································································

  final var issues : CanariIssueArray? {
    switch self.issues_property.selection {
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
    self.comments_property = EBStoredProperty_String (defaultValue: "", undoManager: ebUndoManager)
    self.nominalSize_property = EBStoredProperty_Int (defaultValue: 14, undoManager: ebUndoManager)
    self.selectedTab_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.selectedInspector_property = EBStoredProperty_Int (defaultValue: 0, undoManager: ebUndoManager)
    self.currentCharacterCodePoint_property = EBStoredProperty_Int (defaultValue: 32, undoManager: ebUndoManager)
    super.init (ebUndoManager)
  //--- Atomic property: currentCharacterCodePoint
    self.currentCharacterCodePoint_property.validationFunction = { [weak self] in
      return self?.validate_currentCharacterCodePoint (currentValue: $0, proposedValue: $1) ?? .rejectWithBeep
    }
  //--- To many property: characters (no option)
    self.characters_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: currentCharacterCodePointString
    self.currentCharacterCodePointString_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.currentCharacterCodePoint_property.selection) {
        case (.single (let v0)) :
          return .single (transient_FontRoot_currentCharacterCodePointString (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.currentCharacterCodePoint_property.addEBObserver (self.currentCharacterCodePointString_property)
  //--- Atomic property: sampleStringBezierPath
    self.sampleStringBezierPath_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.nominalSize_property.selection, unwSelf.characters_property.selection, unwSelf.characters_property.selection, preferences_sampleString_property.selection, preferences_sampleStringSize_property.selection) {
        case (.single (let v0), .single (let v1), .single (let v2), .single (let v3), .single (let v4)) :
          return .single (transient_FontRoot_sampleStringBezierPath (v0, v1, v2, v3, v4))
        case (.multiple, .multiple, .multiple, .multiple, .multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.nominalSize_property.addEBObserver (self.sampleStringBezierPath_property)
    self.characters_property.addEBObserverOf_segmentArrayForDrawing (self.sampleStringBezierPath_property)
    self.characters_property.addEBObserverOf_advance (self.sampleStringBezierPath_property)
    preferences_sampleString_property.addEBObserver (self.sampleStringBezierPath_property)
    preferences_sampleStringSize_property.addEBObserver (self.sampleStringBezierPath_property)
  //--- Atomic property: sampleStringBezierPathWidth
    self.sampleStringBezierPathWidth_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.sampleStringBezierPath_property.selection) {
        case (.single (let v0)) :
          return .single (transient_FontRoot_sampleStringBezierPathWidth (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.sampleStringBezierPath_property.addEBObserver (self.sampleStringBezierPathWidth_property)
  //--- Atomic property: sampleStringBezierPathAscent
    self.sampleStringBezierPathAscent_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.sampleStringBezierPath_property.selection) {
        case (.single (let v0)) :
          return .single (transient_FontRoot_sampleStringBezierPathAscent (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.sampleStringBezierPath_property.addEBObserver (self.sampleStringBezierPathAscent_property)
  //--- Atomic property: sampleStringBezierPathDescent
    self.sampleStringBezierPathDescent_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.sampleStringBezierPath_property.selection) {
        case (.single (let v0)) :
          return .single (transient_FontRoot_sampleStringBezierPathDescent (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.sampleStringBezierPath_property.addEBObserver (self.sampleStringBezierPathDescent_property)
  //--- Atomic property: definedCharacters
    self.definedCharacters_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.characters_property.selection) {
        case (.single (let v0)) :
          return .single (transient_FontRoot_definedCharacters (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.characters_property.addEBObserverOf_codePoint (self.definedCharacters_property)
  //--- Atomic property: issues
    self.issues_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch (unwSelf.characters_property.selection) {
        case (.single (let v0)) :
          return .single (transient_FontRoot_issues (v0))
        case (.multiple) :
          return .multiple
        default :
          return .empty
        }
      }else{
        return .empty
      }
    }
    self.characters_property.addEBObserverOf_issues (self.issues_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
    self.characters_property.setSignatureObserver (observer: self)
    self.comments_property.setSignatureObserver (observer: self)
    self.nominalSize_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    // self.currentCharacterCodePoint_property.removeEBObserver (self.currentCharacterCodePointString_property)
    // self.nominalSize_property.removeEBObserver (self.sampleStringBezierPath_property)
    // self.characters_property.removeEBObserverOf_segmentArrayForDrawing (self.sampleStringBezierPath_property)
    // self.characters_property.removeEBObserverOf_advance (self.sampleStringBezierPath_property)
    // preferences_sampleString_property.removeEBObserver (self.sampleStringBezierPath_property)
    // preferences_sampleStringSize_property.removeEBObserver (self.sampleStringBezierPath_property)
    // self.sampleStringBezierPath_property.removeEBObserver (self.sampleStringBezierPathWidth_property)
    // self.sampleStringBezierPath_property.removeEBObserver (self.sampleStringBezierPathAscent_property)
    // self.sampleStringBezierPath_property.removeEBObserver (self.sampleStringBezierPathDescent_property)
    // self.characters_property.removeEBObserverOf_codePoint (self.definedCharacters_property)
    // self.characters_property.removeEBObserverOf_issues (self.issues_property)
  //--- Unregister properties for handling signature
    self.characters_property.setSignatureObserver (observer: nil)
    self.comments_property.setSignatureObserver (observer: nil)
    self.nominalSize_property.setSignatureObserver (observer: nil)
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
      "comments",
      idx: self.comments_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.comments_property.mObserverExplorer,
      valueExplorer: &self.comments_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "nominalSize",
      idx: self.nominalSize_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.nominalSize_property.mObserverExplorer,
      valueExplorer: &self.nominalSize_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "selectedTab",
      idx: self.selectedTab_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.selectedTab_property.mObserverExplorer,
      valueExplorer: &self.selectedTab_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "selectedInspector",
      idx: self.selectedInspector_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.selectedInspector_property.mObserverExplorer,
      valueExplorer: &self.selectedInspector_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "currentCharacterCodePoint",
      idx: self.currentCharacterCodePoint_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.currentCharacterCodePoint_property.mObserverExplorer,
      valueExplorer: &self.currentCharacterCodePoint_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "currentCharacterCodePointString",
      idx: self.currentCharacterCodePointString_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.currentCharacterCodePointString_property.mObserverExplorer,
      valueExplorer: &self.currentCharacterCodePointString_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "sampleStringBezierPath",
      idx: self.sampleStringBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.sampleStringBezierPath_property.mObserverExplorer,
      valueExplorer: &self.sampleStringBezierPath_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "sampleStringBezierPathWidth",
      idx: self.sampleStringBezierPathWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.sampleStringBezierPathWidth_property.mObserverExplorer,
      valueExplorer: &self.sampleStringBezierPathWidth_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "sampleStringBezierPathAscent",
      idx: self.sampleStringBezierPathAscent_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.sampleStringBezierPathAscent_property.mObserverExplorer,
      valueExplorer: &self.sampleStringBezierPathAscent_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "sampleStringBezierPathDescent",
      idx: self.sampleStringBezierPathDescent_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.sampleStringBezierPathDescent_property.mObserverExplorer,
      valueExplorer: &self.sampleStringBezierPathDescent_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "definedCharacters",
      idx: self.definedCharacters_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.definedCharacters_property.mObserverExplorer,
      valueExplorer: &self.definedCharacters_property.mValueExplorer
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
      "characters",
      idx:characters_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&characters_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: comments
    self.comments_property.mObserverExplorer = nil
    self.comments_property.mValueExplorer = nil
  //--- Atomic property: nominalSize
    self.nominalSize_property.mObserverExplorer = nil
    self.nominalSize_property.mValueExplorer = nil
  //--- Atomic property: selectedTab
    self.selectedTab_property.mObserverExplorer = nil
    self.selectedTab_property.mValueExplorer = nil
  //--- Atomic property: selectedInspector
    self.selectedInspector_property.mObserverExplorer = nil
    self.selectedInspector_property.mValueExplorer = nil
  //--- Atomic property: currentCharacterCodePoint
    self.currentCharacterCodePoint_property.mObserverExplorer = nil
    self.currentCharacterCodePoint_property.mValueExplorer = nil
  //--- To many property: characters
    self.characters_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.characters = []
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
  //--- Atomic property: comments
    self.comments_property.storeIn (dictionary: ioDictionary, forKey: "comments")
  //--- Atomic property: nominalSize
    self.nominalSize_property.storeIn (dictionary: ioDictionary, forKey: "nominalSize")
  //--- Atomic property: selectedTab
    self.selectedTab_property.storeIn (dictionary: ioDictionary, forKey: "selectedTab")
  //--- Atomic property: selectedInspector
    self.selectedInspector_property.storeIn (dictionary: ioDictionary, forKey: "selectedInspector")
  //--- Atomic property: currentCharacterCodePoint
    self.currentCharacterCodePoint_property.storeIn (dictionary: ioDictionary, forKey: "currentCharacterCodePoint")
  //--- To many property: characters (Custom store)
    customStore_FontCharacter_characters (self.characters_property.propval, intoDictionary: ioDictionary)
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray: &managedObjectArray)
  //--- To many property: characters (Custom store)
    self.characters_property.setProp (customRead_FontCharacter_characters (from: inDictionary, with: self.ebUndoManager))
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: comments
    self.comments_property.readFrom (dictionary: inDictionary, forKey: "comments")
  //--- Atomic property: nominalSize
    self.nominalSize_property.readFrom (dictionary: inDictionary, forKey: "nominalSize")
  //--- Atomic property: selectedTab
    self.selectedTab_property.readFrom (dictionary: inDictionary, forKey: "selectedTab")
  //--- Atomic property: selectedInspector
    self.selectedInspector_property.readFrom (dictionary: inDictionary, forKey: "selectedInspector")
  //--- Atomic property: currentCharacterCodePoint
    self.currentCharacterCodePoint_property.readFrom (dictionary: inDictionary, forKey: "currentCharacterCodePoint")
  }


  //····················································································································
  //   appendPropertyNamesTo
  //····················································································································

  override func appendPropertyNamesTo (_ ioString : inout String) {
    super.appendPropertyNamesTo (&ioString)
  //--- Atomic properties
    ioString += "comments\n"
    ioString += "nominalSize\n"
    ioString += "selectedTab\n"
    ioString += "selectedInspector\n"
    ioString += "currentCharacterCodePoint\n"
  //--- To one relationships
  //--- To many relationships
    ioString += "characters\n"
  }

  //····················································································································
  //   appendPropertyValuesTo
  //····················································································································

  override func appendPropertyValuesTo (_ ioData : inout Data) {
    super.appendPropertyValuesTo (&ioData)
  //--- Atomic properties
    self.comments.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.nominalSize.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.selectedTab.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.selectedInspector.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
    self.currentCharacterCodePoint.appendPropertyValueTo (&ioData)
    ioData.append (ascii: .lineFeed)
  //--- To one relationships
  //--- To many relationships
    do{
      var optionalFirstIndex : Int? = nil
      var rangeCount = 0
      for object in self.characters {
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
      if let range = inDictionary ["comments"], let value = String.unarchiveFromDataRange (inData, range) {
        self.comments = value
      }
      if let range = inDictionary ["nominalSize"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.nominalSize = value
      }
      if let range = inDictionary ["selectedTab"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.selectedTab = value
      }
      if let range = inDictionary ["selectedInspector"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.selectedInspector = value
      }
      if let range = inDictionary ["currentCharacterCodePoint"], let value = Int.unarchiveFromDataRange (inData, range) {
        self.currentCharacterCodePoint = value
      }
    //--- To one relationships
    //--- To many relationships
      if let range = inDictionary ["characters"], range.length > 0 {
        var relationshipArray = [FontCharacter] ()
        let indexArray = inData.base62EncodedIntArray (fromRange: range)
        for idx in indexArray {
          relationshipArray.append (inObjectArray [idx] as! FontCharacter)
        }
        inParallelObjectSetupContext.addToManySetupDeferredOperation { self.characters = relationshipArray }
      }
    }
  //--- End of addOperation
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: characters
    for managedObject in self.characters {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: characters (custom store)
    /* for managedObject in self.characters_property.propval {
      objects.append (managedObject)
    } */
  }

  //····················································································································
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.characters_property.signature ())
    crc.accumulateUInt32 (self.comments_property.signature ())
    crc.accumulateUInt32 (self.nominalSize_property.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


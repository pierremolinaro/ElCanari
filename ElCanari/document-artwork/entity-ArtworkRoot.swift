//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_selectedTab : class {
  var selectedTab : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_comments : class {
  var comments : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_minPPTPTTTWdisplayUnit : class {
  var minPPTPTTTWdisplayUnit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_minPPTPTTTW : class {
  var minPPTPTTTW : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_minValueForOARdisplayUnit : class {
  var minValueForOARdisplayUnit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_minValueForOARinEBUnit : class {
  var minValueForOARinEBUnit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_minValueForPHDdisplayUnit : class {
  var minValueForPHDdisplayUnit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_minValueForPHDinEBUnit : class {
  var minValueForPHDinEBUnit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_minValueForBoardLimitWidthDisplayUnit : class {
  var minValueForBoardLimitWidthDisplayUnit : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_minValueForBoardLimitWidth : class {
  var minValueForBoardLimitWidth : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_drillDataFileExtension : class {
  var drillDataFileExtension : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ArtworkRoot_signatureForERCChecking : class {
  var signatureForERCChecking : UInt32? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: ArtworkRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ArtworkRoot : EBManagedObject,
         ArtworkRoot_selectedTab,
         ArtworkRoot_comments,
         ArtworkRoot_minPPTPTTTWdisplayUnit,
         ArtworkRoot_minPPTPTTTW,
         ArtworkRoot_minValueForOARdisplayUnit,
         ArtworkRoot_minValueForOARinEBUnit,
         ArtworkRoot_minValueForPHDdisplayUnit,
         ArtworkRoot_minValueForPHDinEBUnit,
         ArtworkRoot_minValueForBoardLimitWidthDisplayUnit,
         ArtworkRoot_minValueForBoardLimitWidth,
         ArtworkRoot_drillDataFileExtension,
         ArtworkRoot_signatureForERCChecking {

  //····················································································································
  //   Atomic property: selectedTab
  //····················································································································

  let selectedTab_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var selectedTab : Int {
    get { return self.selectedTab_property.propval }
    set { self.selectedTab_property.setProp (newValue) }
  }

  //····················································································································

  var selectedTab_property_selection : EBSelection <Int> { return self.selectedTab_property.prop }

  //····················································································································
  //   Atomic property: comments
  //····················································································································

  let comments_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var comments : String {
    get { return self.comments_property.propval }
    set { self.comments_property.setProp (newValue) }
  }

  //····················································································································

  var comments_property_selection : EBSelection <String> { return self.comments_property.prop }

  //····················································································································
  //   Atomic property: minPPTPTTTWdisplayUnit
  //····················································································································

  let minPPTPTTTWdisplayUnit_property = EBStoredProperty_Int (defaultValue: 90)

  //····················································································································

  var minPPTPTTTWdisplayUnit : Int {
    get { return self.minPPTPTTTWdisplayUnit_property.propval }
    set { self.minPPTPTTTWdisplayUnit_property.setProp (newValue) }
  }

  //····················································································································

  var minPPTPTTTWdisplayUnit_property_selection : EBSelection <Int> { return self.minPPTPTTTWdisplayUnit_property.prop }

  //····················································································································
  //   Atomic property: minPPTPTTTW
  //····················································································································

  let minPPTPTTTW_property = EBStoredProperty_Int (defaultValue: 18000)

  //····················································································································

  var minPPTPTTTW : Int {
    get { return self.minPPTPTTTW_property.propval }
    set { self.minPPTPTTTW_property.setProp (newValue) }
  }

  //····················································································································

  var minPPTPTTTW_property_selection : EBSelection <Int> { return self.minPPTPTTTW_property.prop }

  //····················································································································
  //   Atomic property: minValueForOARdisplayUnit
  //····················································································································

  let minValueForOARdisplayUnit_property = EBStoredProperty_Int (defaultValue: 90)

  //····················································································································

  var minValueForOARdisplayUnit : Int {
    get { return self.minValueForOARdisplayUnit_property.propval }
    set { self.minValueForOARdisplayUnit_property.setProp (newValue) }
  }

  //····················································································································

  var minValueForOARdisplayUnit_property_selection : EBSelection <Int> { return self.minValueForOARdisplayUnit_property.prop }

  //····················································································································
  //   Atomic property: minValueForOARinEBUnit
  //····················································································································

  let minValueForOARinEBUnit_property = EBStoredProperty_Int (defaultValue: 18000)

  //····················································································································

  var minValueForOARinEBUnit : Int {
    get { return self.minValueForOARinEBUnit_property.propval }
    set { self.minValueForOARinEBUnit_property.setProp (newValue) }
  }

  //····················································································································

  var minValueForOARinEBUnit_property_selection : EBSelection <Int> { return self.minValueForOARinEBUnit_property.prop }

  //····················································································································
  //   Atomic property: minValueForPHDdisplayUnit
  //····················································································································

  let minValueForPHDdisplayUnit_property = EBStoredProperty_Int (defaultValue: 90)

  //····················································································································

  var minValueForPHDdisplayUnit : Int {
    get { return self.minValueForPHDdisplayUnit_property.propval }
    set { self.minValueForPHDdisplayUnit_property.setProp (newValue) }
  }

  //····················································································································

  var minValueForPHDdisplayUnit_property_selection : EBSelection <Int> { return self.minValueForPHDdisplayUnit_property.prop }

  //····················································································································
  //   Atomic property: minValueForPHDinEBUnit
  //····················································································································

  let minValueForPHDinEBUnit_property = EBStoredProperty_Int (defaultValue: 18000)

  //····················································································································

  var minValueForPHDinEBUnit : Int {
    get { return self.minValueForPHDinEBUnit_property.propval }
    set { self.minValueForPHDinEBUnit_property.setProp (newValue) }
  }

  //····················································································································

  var minValueForPHDinEBUnit_property_selection : EBSelection <Int> { return self.minValueForPHDinEBUnit_property.prop }

  //····················································································································
  //   Atomic property: minValueForBoardLimitWidthDisplayUnit
  //····················································································································

  let minValueForBoardLimitWidthDisplayUnit_property = EBStoredProperty_Int (defaultValue: 90000)

  //····················································································································

  var minValueForBoardLimitWidthDisplayUnit : Int {
    get { return self.minValueForBoardLimitWidthDisplayUnit_property.propval }
    set { self.minValueForBoardLimitWidthDisplayUnit_property.setProp (newValue) }
  }

  //····················································································································

  var minValueForBoardLimitWidthDisplayUnit_property_selection : EBSelection <Int> { return self.minValueForBoardLimitWidthDisplayUnit_property.prop }

  //····················································································································
  //   Atomic property: minValueForBoardLimitWidth
  //····················································································································

  let minValueForBoardLimitWidth_property = EBStoredProperty_Int (defaultValue: 90000)

  //····················································································································

  var minValueForBoardLimitWidth : Int {
    get { return self.minValueForBoardLimitWidth_property.propval }
    set { self.minValueForBoardLimitWidth_property.setProp (newValue) }
  }

  //····················································································································

  var minValueForBoardLimitWidth_property_selection : EBSelection <Int> { return self.minValueForBoardLimitWidth_property.prop }

  //····················································································································
  //   Atomic property: drillDataFileExtension
  //····················································································································

  let drillDataFileExtension_property = EBStoredProperty_String (defaultValue: "drf")

  //····················································································································

  var drillDataFileExtension : String {
    get { return self.drillDataFileExtension_property.propval }
    set { self.drillDataFileExtension_property.setProp (newValue) }
  }

  //····················································································································

  var drillDataFileExtension_property_selection : EBSelection <String> { return self.drillDataFileExtension_property.prop }

  //····················································································································
  //   To many property: fileGenerationParameterArray
  //····················································································································

  let fileGenerationParameterArray_property = StoredArrayOf_ArtworkFileGenerationParameters (usedForSignature: true)

  //····················································································································

  var fileGenerationParameterArray_property_selection : EBSelection < [ArtworkFileGenerationParameters] > {
    return self.fileGenerationParameterArray_property.prop
  }

  //····················································································································

  var fileGenerationParameterArray : [ArtworkFileGenerationParameters] {
    get { return self.fileGenerationParameterArray_property.propval }
    set { self.fileGenerationParameterArray_property.setProp (newValue) }
  }

  //····················································································································
  //   Transient property: signatureForERCChecking
  //····················································································································

  let signatureForERCChecking_property = EBTransientProperty_UInt32 ()

  //····················································································································

  var signatureForERCChecking_property_selection : EBSelection <UInt32> {
    return self.signatureForERCChecking_property.prop
  }

  //····················································································································

  var signatureForERCChecking : UInt32? {
    switch self.signatureForERCChecking_property_selection {
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
  //--- Atomic property: selectedTab
    self.selectedTab_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: comments
    self.comments_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: minPPTPTTTWdisplayUnit
    self.minPPTPTTTWdisplayUnit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: minPPTPTTTW
    self.minPPTPTTTW_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: minValueForOARdisplayUnit
    self.minValueForOARdisplayUnit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: minValueForOARinEBUnit
    self.minValueForOARinEBUnit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: minValueForPHDdisplayUnit
    self.minValueForPHDdisplayUnit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: minValueForPHDinEBUnit
    self.minValueForPHDinEBUnit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: minValueForBoardLimitWidthDisplayUnit
    self.minValueForBoardLimitWidthDisplayUnit_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: minValueForBoardLimitWidth
    self.minValueForBoardLimitWidth_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: drillDataFileExtension
    self.drillDataFileExtension_property.ebUndoManager = self.ebUndoManager
  //--- To many property: fileGenerationParameterArray (no option)
    self.fileGenerationParameterArray_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: signatureForERCChecking
    self.signatureForERCChecking_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.minPPTPTTTW_property_selection.kind ()
        kind &= unwSelf.minValueForOARinEBUnit_property_selection.kind ()
        kind &= unwSelf.minValueForBoardLimitWidth_property_selection.kind ()
        kind &= unwSelf.minValueForPHDinEBUnit_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.minPPTPTTTW_property_selection, unwSelf.minValueForOARinEBUnit_property_selection, unwSelf.minValueForBoardLimitWidth_property_selection, unwSelf.minValueForPHDinEBUnit_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_ArtworkRoot_signatureForERCChecking (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.minPPTPTTTW_property.addEBObserver (self.signatureForERCChecking_property)
    self.minValueForOARinEBUnit_property.addEBObserver (self.signatureForERCChecking_property)
    self.minValueForBoardLimitWidth_property.addEBObserver (self.signatureForERCChecking_property)
    self.minValueForPHDinEBUnit_property.addEBObserver (self.signatureForERCChecking_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
    self.comments_property.setSignatureObserver (observer: self)
    self.drillDataFileExtension_property.setSignatureObserver (observer: self)
    self.fileGenerationParameterArray_property.setSignatureObserver (observer: self)
    self.minPPTPTTTW_property.setSignatureObserver (observer: self)
    self.minValueForBoardLimitWidth_property.setSignatureObserver (observer: self)
    self.minValueForOARinEBUnit_property.setSignatureObserver (observer: self)
    self.minValueForPHDinEBUnit_property.setSignatureObserver (observer: self)
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.minPPTPTTTW_property.removeEBObserver (self.signatureForERCChecking_property)
    self.minValueForOARinEBUnit_property.removeEBObserver (self.signatureForERCChecking_property)
    self.minValueForBoardLimitWidth_property.removeEBObserver (self.signatureForERCChecking_property)
    self.minValueForPHDinEBUnit_property.removeEBObserver (self.signatureForERCChecking_property)
  //--- Unregister properties for handling signature
    self.comments_property.setSignatureObserver (observer: nil)
    self.drillDataFileExtension_property.setSignatureObserver (observer: nil)
    self.fileGenerationParameterArray_property.setSignatureObserver (observer: nil)
    self.minPPTPTTTW_property.setSignatureObserver (observer: nil)
    self.minValueForBoardLimitWidth_property.setSignatureObserver (observer: nil)
    self.minValueForOARinEBUnit_property.setSignatureObserver (observer: nil)
    self.minValueForPHDinEBUnit_property.setSignatureObserver (observer: nil)
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
      "selectedTab",
      idx: self.selectedTab_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.selectedTab_property.mObserverExplorer,
      valueExplorer: &self.selectedTab_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "comments",
      idx: self.comments_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.comments_property.mObserverExplorer,
      valueExplorer: &self.comments_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "minPPTPTTTWdisplayUnit",
      idx: self.minPPTPTTTWdisplayUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.minPPTPTTTWdisplayUnit_property.mObserverExplorer,
      valueExplorer: &self.minPPTPTTTWdisplayUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "minPPTPTTTW",
      idx: self.minPPTPTTTW_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.minPPTPTTTW_property.mObserverExplorer,
      valueExplorer: &self.minPPTPTTTW_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "minValueForOARdisplayUnit",
      idx: self.minValueForOARdisplayUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.minValueForOARdisplayUnit_property.mObserverExplorer,
      valueExplorer: &self.minValueForOARdisplayUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "minValueForOARinEBUnit",
      idx: self.minValueForOARinEBUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.minValueForOARinEBUnit_property.mObserverExplorer,
      valueExplorer: &self.minValueForOARinEBUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "minValueForPHDdisplayUnit",
      idx: self.minValueForPHDdisplayUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.minValueForPHDdisplayUnit_property.mObserverExplorer,
      valueExplorer: &self.minValueForPHDdisplayUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "minValueForPHDinEBUnit",
      idx: self.minValueForPHDinEBUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.minValueForPHDinEBUnit_property.mObserverExplorer,
      valueExplorer: &self.minValueForPHDinEBUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "minValueForBoardLimitWidthDisplayUnit",
      idx: self.minValueForBoardLimitWidthDisplayUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.minValueForBoardLimitWidthDisplayUnit_property.mObserverExplorer,
      valueExplorer: &self.minValueForBoardLimitWidthDisplayUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "minValueForBoardLimitWidth",
      idx: self.minValueForBoardLimitWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.minValueForBoardLimitWidth_property.mObserverExplorer,
      valueExplorer: &self.minValueForBoardLimitWidth_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "drillDataFileExtension",
      idx: self.drillDataFileExtension_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.drillDataFileExtension_property.mObserverExplorer,
      valueExplorer: &self.drillDataFileExtension_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y: &y, view: view)
    createEntryForPropertyNamed (
      "signatureForERCChecking",
      idx: self.signatureForERCChecking_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.signatureForERCChecking_property.mObserverExplorer,
      valueExplorer: &self.signatureForERCChecking_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y: &y, view: view)
    createEntryForToManyRelationshipNamed (
      "fileGenerationParameterArray",
      idx:fileGenerationParameterArray_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&fileGenerationParameterArray_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y: &y, view: view)
    createEntryForTitle ("ToOne Relationships", y: &y, view: view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: selectedTab
    self.selectedTab_property.mObserverExplorer = nil
    self.selectedTab_property.mValueExplorer = nil
  //--- Atomic property: comments
    self.comments_property.mObserverExplorer = nil
    self.comments_property.mValueExplorer = nil
  //--- Atomic property: minPPTPTTTWdisplayUnit
    self.minPPTPTTTWdisplayUnit_property.mObserverExplorer = nil
    self.minPPTPTTTWdisplayUnit_property.mValueExplorer = nil
  //--- Atomic property: minPPTPTTTW
    self.minPPTPTTTW_property.mObserverExplorer = nil
    self.minPPTPTTTW_property.mValueExplorer = nil
  //--- Atomic property: minValueForOARdisplayUnit
    self.minValueForOARdisplayUnit_property.mObserverExplorer = nil
    self.minValueForOARdisplayUnit_property.mValueExplorer = nil
  //--- Atomic property: minValueForOARinEBUnit
    self.minValueForOARinEBUnit_property.mObserverExplorer = nil
    self.minValueForOARinEBUnit_property.mValueExplorer = nil
  //--- Atomic property: minValueForPHDdisplayUnit
    self.minValueForPHDdisplayUnit_property.mObserverExplorer = nil
    self.minValueForPHDdisplayUnit_property.mValueExplorer = nil
  //--- Atomic property: minValueForPHDinEBUnit
    self.minValueForPHDinEBUnit_property.mObserverExplorer = nil
    self.minValueForPHDinEBUnit_property.mValueExplorer = nil
  //--- Atomic property: minValueForBoardLimitWidthDisplayUnit
    self.minValueForBoardLimitWidthDisplayUnit_property.mObserverExplorer = nil
    self.minValueForBoardLimitWidthDisplayUnit_property.mValueExplorer = nil
  //--- Atomic property: minValueForBoardLimitWidth
    self.minValueForBoardLimitWidth_property.mObserverExplorer = nil
    self.minValueForBoardLimitWidth_property.mValueExplorer = nil
  //--- Atomic property: drillDataFileExtension
    self.drillDataFileExtension_property.mObserverExplorer = nil
    self.drillDataFileExtension_property.mValueExplorer = nil
  //--- To many property: fileGenerationParameterArray
    self.fileGenerationParameterArray_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.fileGenerationParameterArray = []
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
  //--- Atomic property: selectedTab
    self.selectedTab_property.storeIn (dictionary: ioDictionary, forKey:"selectedTab")
  //--- Atomic property: comments
    self.comments_property.storeIn (dictionary: ioDictionary, forKey:"comments")
  //--- Atomic property: minPPTPTTTWdisplayUnit
    self.minPPTPTTTWdisplayUnit_property.storeIn (dictionary: ioDictionary, forKey:"minPPTPTTTWdisplayUnit")
  //--- Atomic property: minPPTPTTTW
    self.minPPTPTTTW_property.storeIn (dictionary: ioDictionary, forKey:"minPPTPTTTW")
  //--- Atomic property: minValueForOARdisplayUnit
    self.minValueForOARdisplayUnit_property.storeIn (dictionary: ioDictionary, forKey:"minValueForOARdisplayUnit")
  //--- Atomic property: minValueForOARinEBUnit
    self.minValueForOARinEBUnit_property.storeIn (dictionary: ioDictionary, forKey:"minValueForOARinEBUnit")
  //--- Atomic property: minValueForPHDdisplayUnit
    self.minValueForPHDdisplayUnit_property.storeIn (dictionary: ioDictionary, forKey:"minValueForPHDdisplayUnit")
  //--- Atomic property: minValueForPHDinEBUnit
    self.minValueForPHDinEBUnit_property.storeIn (dictionary: ioDictionary, forKey:"minValueForPHDinEBUnit")
  //--- Atomic property: minValueForBoardLimitWidthDisplayUnit
    self.minValueForBoardLimitWidthDisplayUnit_property.storeIn (dictionary: ioDictionary, forKey:"minValueForBoardLimitWidthDisplayUnit")
  //--- Atomic property: minValueForBoardLimitWidth
    self.minValueForBoardLimitWidth_property.storeIn (dictionary: ioDictionary, forKey:"minValueForBoardLimitWidth")
  //--- Atomic property: drillDataFileExtension
    self.drillDataFileExtension_property.storeIn (dictionary: ioDictionary, forKey:"drillDataFileExtension")
  //--- To many property: fileGenerationParameterArray
    self.store (
      managedObjectArray: self.fileGenerationParameterArray_property.propval,
      relationshipName: "fileGenerationParameterArray",
      intoDictionary: ioDictionary
    )
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: fileGenerationParameterArray
    self.fileGenerationParameterArray_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "fileGenerationParameterArray",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [ArtworkFileGenerationParameters])
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: selectedTab
    self.selectedTab_property.readFrom (dictionary: inDictionary, forKey:"selectedTab")
  //--- Atomic property: comments
    self.comments_property.readFrom (dictionary: inDictionary, forKey:"comments")
  //--- Atomic property: minPPTPTTTWdisplayUnit
    self.minPPTPTTTWdisplayUnit_property.readFrom (dictionary: inDictionary, forKey:"minPPTPTTTWdisplayUnit")
  //--- Atomic property: minPPTPTTTW
    self.minPPTPTTTW_property.readFrom (dictionary: inDictionary, forKey:"minPPTPTTTW")
  //--- Atomic property: minValueForOARdisplayUnit
    self.minValueForOARdisplayUnit_property.readFrom (dictionary: inDictionary, forKey:"minValueForOARdisplayUnit")
  //--- Atomic property: minValueForOARinEBUnit
    self.minValueForOARinEBUnit_property.readFrom (dictionary: inDictionary, forKey:"minValueForOARinEBUnit")
  //--- Atomic property: minValueForPHDdisplayUnit
    self.minValueForPHDdisplayUnit_property.readFrom (dictionary: inDictionary, forKey:"minValueForPHDdisplayUnit")
  //--- Atomic property: minValueForPHDinEBUnit
    self.minValueForPHDinEBUnit_property.readFrom (dictionary: inDictionary, forKey:"minValueForPHDinEBUnit")
  //--- Atomic property: minValueForBoardLimitWidthDisplayUnit
    self.minValueForBoardLimitWidthDisplayUnit_property.readFrom (dictionary: inDictionary, forKey:"minValueForBoardLimitWidthDisplayUnit")
  //--- Atomic property: minValueForBoardLimitWidth
    self.minValueForBoardLimitWidth_property.readFrom (dictionary: inDictionary, forKey:"minValueForBoardLimitWidth")
  //--- Atomic property: drillDataFileExtension
    self.drillDataFileExtension_property.readFrom (dictionary: inDictionary, forKey:"drillDataFileExtension")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: fileGenerationParameterArray
    for managedObject in self.fileGenerationParameterArray {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: fileGenerationParameterArray
    for managedObject in self.fileGenerationParameterArray {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (self.comments_property.signature ())
    crc.accumulateUInt32 (self.drillDataFileExtension_property.signature ())
    crc.accumulateUInt32 (self.fileGenerationParameterArray_property.signature ())
    crc.accumulateUInt32 (self.minPPTPTTTW_property.signature ())
    crc.accumulateUInt32 (self.minValueForBoardLimitWidth_property.signature ())
    crc.accumulateUInt32 (self.minValueForOARinEBUnit_property.signature ())
    crc.accumulateUInt32 (self.minValueForPHDinEBUnit_property.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


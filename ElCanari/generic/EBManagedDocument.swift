//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private let WINDOW_HEIGHT_METADATADICTIONARY_KEY = "WindowHeight"
private let WINDOW_WIDTH_METADATADICTIONARY_KEY  = "WindowWidth"

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private var gDebugMenuItemsAdded = false
private let kLogReadFileDuration = false

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  EBManagedDocument
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBManagedDocument : NSDocument, EBUserClassNameProtocol {

  //····················································································································

  var mRootObject : EBManagedObject?
  private var mReadMetadataStatus : UInt8 = 0
  private var mMetadataDictionary = [String : Any] ()
  private var mUndoManager = EBUndoManager ()

  //····················································································································
  //    init
  //····················································································································

  override init () {
    super.init ()
    noteObjectAllocation (self)
    self.undoManager = self.mUndoManager
    self.mUndoManager.disableUndoRegistration ()
    self.mRootObject = newInstanceOfEntityNamed (self.mUndoManager, rootEntityClassName ())!
    self.mUndoManager.enableUndoRegistration ()
  }

  //····················································································································
  //    deinit
  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //    ebUndoManager
  //····················································································································

  final var ebUndoManager : EBUndoManager {
    return self.mUndoManager
  }

  //····················································································································
  //    rootEntityClassName
  //····················································································································

  func rootEntityClassName () -> String {
    return ""
  }

  //····················································································································
  //  SAVE
  //····················································································································

  func metadataStatusForSaving () -> UInt8 {
    return 0 ;
  }

  //····················································································································

  func saveMetadataDictionary (version : Int, metadataDictionary : inout [String : Any]) {
  }

  //····················································································································

  override func data (ofType typeName : String) throws -> Data {
  //--- Update document version
    var version = self.mVersion.propval
    switch self.mVersionShouldChangeObserver.prop {
    case .empty, .multiple :
      break
    case .single (let shouldChange) :
      if shouldChange {
        version += 1
        self.mVersion.setProp (version)
        self.mVersionShouldChangeObserver.updateStartUpSignature ()
      }
    }
  //--- Save metadata dictionary
    self.saveMetadataDictionary (version: version, metadataDictionary : &self.mMetadataDictionary)
  //--- Add the witdth and the height of main window to metadata dictionary
    if let unwrappedWindowForSheet = windowForSheet { // Document has been opened in the user interface
      if unwrappedWindowForSheet.styleMask.contains(.resizable) { // Only if window is resizable
        let windowSize = unwrappedWindowForSheet.frame.size ;
        self.mMetadataDictionary [WINDOW_WIDTH_METADATADICTIONARY_KEY] = windowSize.width
        self.mMetadataDictionary [WINDOW_HEIGHT_METADATADICTIONARY_KEY] = windowSize.height
      }
    }
  //---
    var fileData = Data ()
  //--- Append signature
    fileData.appendSignature ()
  //--- Write status
    fileData.append (metadataStatusForSaving ())
  //--- Append metadata dictionary
    let metaData = try PropertyListSerialization.data (fromPropertyList: self.mMetadataDictionary,
      format:PropertyListSerialization.PropertyListFormat.binary,
      options:0
    )
    fileData.append (1)
    fileData.appendAutosizedData (metaData)
  //--- Append document data
    let documentData = try dataForSavingFromRootObject ()
    fileData.append (6)
    fileData.appendAutosizedData (documentData)
  //--- Append final byte
    fileData.append (0)
  //---
    return fileData
  }

  //····················································································································

  private func dataForSavingFromRootObject () throws -> Data {
  //--- Get objectsto save from root object
    let rootObject = self.mRootObject!
    var reachableObjectArray = [rootObject]
    var reachableObjectSet = Set ([rootObject])
    var objectsToExploreArray = [rootObject]
    while let objectToExplore = objectsToExploreArray.last {
      objectsToExploreArray.removeLast ()
      var accessible = [EBManagedObject] ()
      objectToExplore.accessibleObjectsForSaveOperation (objects: &accessible)
      for managedObject in accessible {
        if !reachableObjectSet.contains (managedObject) {
          reachableObjectSet.insert (managedObject)
          reachableObjectArray.append (managedObject)
          objectsToExploreArray.append (managedObject)
        }
      }
    }
  //--- Set savingIndex for each object
    var idx = 0
    for object in reachableObjectArray {
      object.savingIndex = idx
      idx += 1
    }
  //---
    var saveDataArray : [NSDictionary] = []
    for object in reachableObjectArray {
      let d = NSMutableDictionary ()
      object.saveIntoDictionary (d)
      saveDataArray.append (d)
    }
    return try PropertyListSerialization.data (fromPropertyList: saveDataArray,
      format:PropertyListSerialization.PropertyListFormat.binary,
      options:0
    )
  }

  //····················································································································
  //  Reachable objects from root object
  //····················································································································

  private func reachableObjectsFromRootObject () -> [EBManagedObject] {
    let rootObject = self.mRootObject!
    var reachableObjectArray = [rootObject]
    var reachableObjectSet = Set ([rootObject])
    var objectsToExploreArray = [rootObject]
    while let objectToExplore = objectsToExploreArray.last {
      objectsToExploreArray.removeLast ()
      var accessible = [EBManagedObject] ()
      objectToExplore.accessibleObjects (objects: &accessible)
      for managedObject in accessible {
        if !reachableObjectSet.contains (managedObject) {
          reachableObjectSet.insert (managedObject)
          reachableObjectArray.append (managedObject)
          objectsToExploreArray.append (managedObject)
        }
      }
    }
    return reachableObjectArray
  }

  //····················································································································
  //    READ DOCUMENT FROM FILE
  //····················································································································

  override func read (from data : Data, ofType typeName : String) throws {
    self.ebUndoManager.disableUndoRegistration ()
  //--- Load file
    let (metadataStatus, metadataDictionary, possibleRootObject) = try loadEasyBindingFile (self.ebUndoManager, from: data)
  //--- Store Status
    self.mReadMetadataStatus = metadataStatus
  //--- Store metadata dictionary
    self.mMetadataDictionary = metadataDictionary
  //--- Read version from file
    self.mVersion.setProp (self.readVersionFromMetadataDictionary (metadataDictionary))
  //--- Store root object
    self.mRootObject = possibleRootObject
  //---
    if mRootObject == nil {
      let dictionary = [
        "Cannot Open Document" :  NSLocalizedDescriptionKey,
        "Root object cannot be read" :  NSLocalizedRecoverySuggestionErrorKey
      ]
      throw NSError (
        domain:Bundle.main.bundleIdentifier!,
        code:1,
        userInfo:dictionary
      )
    }
  //---
    self.ebUndoManager.enableUndoRegistration ()
  }

  //····················································································································

  func readVersionFromMetadataDictionary (_ metadataDictionary : [String : Any]) -> Int {
    return 0
  }

  //····················································································································
  //   showWindows
  //····················································································································

  override final func showWindows () {
    super.showWindows ()
    if let unwrappedWindowForSheet = self.windowForSheet, // Document has been opened in the user interface
          unwrappedWindowForSheet.styleMask.contains (.resizable), // Only if window is resizable
          let windowWidth = self.mMetadataDictionary [WINDOW_WIDTH_METADATADICTIONARY_KEY] as? CGFloat,
          let windowHeight = self.mMetadataDictionary [WINDOW_HEIGHT_METADATADICTIONARY_KEY] as? CGFloat {
      let newSize = NSSize (width: windowWidth, height: windowHeight)
      var windowFrame : NSRect = unwrappedWindowForSheet.frame
      windowFrame.size = newSize
      unwrappedWindowForSheet.setFrame (windowFrame, display: true)
    }
    flushOutletEvents ()
  }

  //····················································································································
  //   showObjectExplorerWindow:
  //····················································································································

  @IBAction func showObjectExplorerWindow (_ : AnyObject) {
    if mDocumentExplorerWindow == nil {
      self.createAndPopulateObjectExplorerWindow ()
    }
    self.mDocumentExplorerWindow?.makeKeyAndOrderFront (nil)
  }

  //····················································································································
  //   createAndPopulateObjectExplorerWindow
  //····················································································································

  func createAndPopulateObjectExplorerWindow () {
  //-------------------------------------------------- Create Window
    let r = NSRect (x: 20.0, y: 20.0, width: 10.0, height: 10.0)
    self.mDocumentExplorerWindow = NSWindow (
      contentRect: r,
      styleMask: [.titled, .closable],
      backing: .buffered,
      defer: true,
      screen: nil
    )
  //-------------------------------------------------- Adding properties
    let view = NSView (frame: r)
    var y : CGFloat = 0.0
    self.populateExplorerWindow (&y, view: view)
  //-------------------------------------------------- Finish Window construction
  //--- Resize View
    let viewFrame = NSRect (x: 0.0, y: 0.0, width: EXPLORER_ROW_WIDTH, height: y)
    view.frame = viewFrame
  //--- Set content size
    self.mDocumentExplorerWindow?.setContentSize (NSSize (width: EXPLORER_ROW_WIDTH + 16.0, height: fmin (600.0, y)))
  //--- Set close button as 'remove window' button
    let closeButton = self.mDocumentExplorerWindow?.standardWindowButton (.closeButton)
    closeButton?.target = self
    closeButton?.action = #selector(EBManagedDocument.deleteDocumentWindowAction(_:))
  //--- Set window title
    self.mDocumentExplorerWindow?.title = "Document " + className
  //--- Add Scroll view
    let frame = NSRect (x: 0.0, y: 0.0, width: EXPLORER_ROW_WIDTH, height: y)
    let sw = NSScrollView (frame: frame)
    sw.hasVerticalScroller = true
    sw.documentView = view
    self.mDocumentExplorerWindow?.contentView = sw
  }

  //····················································································································
  //   deleteDocumentWindowAction
  //····················································································································

  @objc func deleteDocumentWindowAction (_ : Any) {
    self.clearObjectExplorer ()
  }

  //····················································································································
  //   clearObjectExplorer
  //····················································································································

  func clearObjectExplorer () {
    let closeButton = mDocumentExplorerWindow?.standardWindowButton (.closeButton)
    closeButton?.target = nil
    self.mDocumentExplorerWindow?.orderOut (nil)
    self.mDocumentExplorerWindow = nil
    self.mAccessibleObjectsExplorerPopUpButton = nil
    self.mRootObjectExplorerButton = nil
  }

  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  var mDocumentExplorerWindow : NSWindow? = nil

  var mAccessibleObjectsExplorerPopUpButton : NSPopUpButton? = nil

  var mRootObjectExplorerButton : NSButton? = nil {
    didSet {
      if let valueExplorer = self.mRootObjectExplorerButton {
        updateManagedObjectToOneRelationshipDisplay (object: self.mRootObject, button: valueExplorer)
      }
    }
  }

  //····················································································································

  func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    if let rootObject = self.mRootObject {
      createEntryForToOneRelationshipNamed (
        "Root",
        idx: rootObject.ebObjectIndex,
        y: &y,
        view: view,
        valueExplorer: &self.mRootObjectExplorerButton
      )
      createEntryForToManyRelationshipNamed (
        "Entities",
        idx: rootObject.ebObjectIndex,
        y: &y,
        view: view,
        valueExplorer: &self.mAccessibleObjectsExplorerPopUpButton
      )
    }
  }

  //····················································································································

  func updateReachableEntitiesPopUpButton () {
    if let accessibleObjectsExplorerPopUpButton = self.mAccessibleObjectsExplorerPopUpButton {
      let selectedObjects = reachableObjectsFromRootObject ()
      updateManagedObjectToManyRelationshipDisplay (objectArray: selectedObjects, popUpButton: accessibleObjectsExplorerPopUpButton)
    }
  }

  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController : NSWindowController) {
    super.windowControllerDidLoadNib (aController)
  //--- Signature observer
    self.mRootObject?.setSignatureObserver (observer: self.mSignatureObserver)
    self.mSignatureObserver.setRootObject (self.mRootObject!)
  //--- Version did change observer
    self.mVersionShouldChangeObserver.setSignatureObserverAndUndoManager (self.mSignatureObserver, self.ebUndoManager)
    self.mSignatureObserver.addEBObserver (self.mVersionShouldChangeObserver)
  //--- Add Debug menu items ?
    if !gDebugMenuItemsAdded {
      gDebugMenuItemsAdded = true
      let menuItem = NSMenuItem (
        title: "Explore document",
        action: #selector (EBManagedDocument.showObjectExplorerWindow(_:)),
        keyEquivalent: ""
      )
      addItemToDebugMenu (menuItem)
    }
  }

  //····················································································································
  //   removeWindowController
  //····················································································································

  func removeUserInterface () {
    self.mSignatureObserver.removeEBObserver (self.mVersionShouldChangeObserver)
    self.clearObjectExplorer ()
  }

  //····················································································································

  override final func removeWindowController (_ inWindowController : NSWindowController) {
  //--- Remove user interface
    self.removeUserInterface ()
  //--- Remove all entities
    let allEntities = self.reachableObjectsFromRootObject ()
    for entity in allEntities {
      entity.cleanUpRelationshipsAndRemoveAllObservers ()
    }
  //---
    super.removeWindowController (inWindowController)
  //--- Horrible hack: run a method 5s in future in main thread, for preventing the document to deallocated in background thread
    let deadline = DispatchTime (uptimeNanoseconds: DispatchTime.now ().uptimeNanoseconds + 5 * 1_000_000_000)
    DispatchQueue.main.asyncAfter (deadline: deadline) { self.nop () }
  }

  //····················································································································

  @objc func nop () {
  }

  //····················································································································
  //    Signature observer
  //····················································································································

  private var mSignatureObserver = EBSignatureObserverEvent ()

  //····················································································································

  var signatureObserver_property : EBSignatureObserverEvent { return self.mSignatureObserver }

  //····················································································································
  //    Version
  //····················································································································

  private var mVersion = EBStoredProperty_Int (defaultValue: 0) // No undo manager

  //····················································································································

  var versionObserver_property : EBStoredProperty_Int { return self.mVersion }

  //····················································································································
  //    Version observer
  //····················································································································

  private var mVersionShouldChangeObserver = EBVersionShouldChangeObserver ()

  //····················································································································

  var versionShouldChangeObserver_property : EBVersionShouldChangeObserver {
    return self.mVersionShouldChangeObserver
  }

  //····················································································································
  //    Reset version and signature
  //····················································································································

  func resetVersionAndSignature () {
    self.ebUndoManager.registerUndo (
      withTarget: self,
      selector: #selector (performUndoVersionNumber(_:)),
      object: NSNumber (value: self.mVersion.propval)
    )
    self.mVersion.setProp (0)
    self.mVersionShouldChangeObserver.clearStartUpSignature ()
  }

  //····················································································································

  @objc func performUndoVersionNumber (_ oldValue : NSNumber) {
    self.ebUndoManager.registerUndo (
      withTarget: self,
      selector: #selector (performUndoVersionNumber(_:)),
      object: NSNumber (value: self.mVersion.propval)
    )
    self.mVersion.setProp (oldValue.intValue)
  }

  //····················································································································
  // Menu Events
  //····················································································································

  override func validateMenuItem (_ inMenuItem : NSMenuItem) -> Bool {
    let validate : Bool
    let action = inMenuItem.action
    if action == #selector (EBManagedDocument.printDocument(_:)) {
      validate = self.windowForSheet?.firstResponder is EBView
    }else{
      validate = super.validateMenuItem (inMenuItem)
    }
    // NSLog ("VALIDATE \(action) -> \(validate)")
    return validate
  }

  //····················································································································
  //   PRINT
  //····················································································································

  @objc override func printDocument (_ inSender : Any?) {
    if let view = self.windowForSheet?.firstResponder as? EBView {
      let printOperation = NSPrintOperation (view: view, printInfo: self.printInfo)
      let printPanel = printOperation.printPanel
      printPanel.options = [printPanel.options, .showsPaperSize, .showsOrientation, .showsScaling]
      self.runModalPrintOperation (printOperation, delegate: nil, didRun: nil, contextInfo: nil)
    }
  }

  //····················································································································
  // Providing the drag image, called by a source drag table view (CanariDragSourceTableView)
  //····················································································································

  func dragImageForRows (with dragRows: IndexSet,
                         tableColumns: [NSTableColumn],
                         event dragEvent: NSEvent,
                         offset dragImageOffset: NSPointPointer) -> NSImage {
    return NSImage (named: NSImage.Name ("exclamation"))!
  }

  //····················································································································
  //   Drag destination
  //····················································································································
  //The six NSDraggingDestination methods are invoked in a distinct order:
  //
  // ① As the image is dragged into the destination’s boundaries, the destination is sent a draggingEntered: message.
  //       The method should return a value that indicates which dragging operation the destination will perform.
  // ② While the image remains within the destination, a series of draggingUpdated: messages are sent.
  //       The method should return a value that indicates which dragging operation the destination will perform.
  // ③ If the image is dragged out of the destination, draggingExited: is sent and the sequence of`
  //       NSDraggingDestination messages stops. If it re-enters, the sequence begins again (with a new
  //       draggingEntered: message).
  // ④ When the image is released, it either slides back to its source (and breaks the sequence) or a
  //       prepareForDragOperation: message is sent to the destination, depending on the value returned by the most
  //       recent invocation of draggingEntered: or draggingUpdated:.
  // ⑤  If the prepareForDragOperation: message returned YES, a performDragOperation: message is sent.
  // ⑥  Finally, if performDragOperation: returned YES, concludeDragOperation: is sent.
  //····················································································································

  func draggingEntered (_ sender: NSDraggingInfo, _ destinationScrollView : NSScrollView) -> NSDragOperation {
    // NSLog ("draggingEntered")
    return .copy
  }

  //····················································································································

  func draggingUpdated (_ sender: NSDraggingInfo, _ destinationScrollView : NSScrollView) -> NSDragOperation {
    // NSLog ("draggingUpdated")
    return .copy
  }

  //····················································································································

  func draggingExited (_ sender: NSDraggingInfo?, _ destinationScrollView : NSScrollView) {
    // NSLog ("draggingExited")
  }

  //····················································································································

  func prepareForDragOperation (_ sender: NSDraggingInfo, _ destinationScrollView : NSScrollView) -> Bool {
    // NSLog ("prepareForDragOperation")
    return true
  }

  //····················································································································

  func performDragOperation (_ sender: NSDraggingInfo, _ destinationScrollView : NSScrollView) -> Bool {
    // NSLog ("performDragOperation")
    return false
  }

  //····················································································································

  func concludeDragOperation (_ inSender: NSDraggingInfo?, _ destinationScrollView : NSScrollView) {
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  EBVersionShouldChangeObserver
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBVersionShouldChangeObserver : EBTransientProperty_Bool, EBSignatureObserverProtocol {

  //····················································································································

  private weak var mUndoManager : EBUndoManager? // SOULD BE WEAK
  private weak var mSignatureObserver : EBSignatureObserverEvent? // SOULD BE WEAK
  private var mSignatureAtStartUp : UInt32 = 0

  //····················································································································

  override init () {
    super.init ()
    self.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        return .single (unwSelf.mSignatureAtStartUp != unwSelf.signature ())
      }else{
        return .empty
      }
    }
  }

  //····················································································································

  final func setSignatureObserverAndUndoManager (_ signatureObserver : EBSignatureObserverEvent, _ ebUndoManager : EBUndoManager?) {
    self.mUndoManager = ebUndoManager
    self.mSignatureObserver = signatureObserver
    self.mSignatureAtStartUp = signatureObserver.signature ()
  }

  //····················································································································

  final func updateStartUpSignature () {
    if let signatureObserver = self.mSignatureObserver {
      self.mSignatureAtStartUp = signatureObserver.signature ()
      self.postEvent ()
    }
  }

  //····················································································································

  func signature () -> UInt32 {
    if let signatureObserver = self.mSignatureObserver {
      return signatureObserver.signature ()
    }else{
      return 0
    }
  }

  //····················································································································

  func clearSignatureCache () {
    self.postEvent ()
  }

  //····················································································································
  // clearStartUpSignature
  //····················································································································

  func clearStartUpSignature () {
    self.mUndoManager?.registerUndo (withTarget: self, selector:#selector (performUndo(_:)), object:NSNumber (value: mSignatureAtStartUp))
    self.mSignatureAtStartUp = 0
    self.postEvent ()
  }

  //····················································································································

  @objc func performUndo (_ oldValue : NSNumber) {
    self.mUndoManager?.registerUndo (withTarget: self, selector:#selector (performUndo(_:)), object:NSNumber (value: mSignatureAtStartUp))
    self.mSignatureAtStartUp = oldValue.uint32Value
    self.postEvent ()
  }

  //····················································································································

}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  EBSignatureObserverEvent
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBSignatureObserverEvent : EBTransientProperty_Int, EBSignatureObserverProtocol {

  //····················································································································

  private weak var mRootObject : EBSignatureObserverProtocol? // SOULD BE WEAK

  //····················································································································

  override init () {
    super.init ()
    self.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        return .single (Int (unwSelf.signature ()))
      }else{
        return .empty
      }
    }
  }

  //····················································································································

  final func setRootObject (_ rootObject : EBSignatureObserverProtocol) {
    self.mRootObject = rootObject
  }

  //····················································································································

  func signature () -> UInt32 {
    if let rootObject = self.mRootObject {
      return rootObject.signature ()
    }else{
      return 0
    }
  }

  //····················································································································

  func clearSignatureCache () {
    self.postEvent ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

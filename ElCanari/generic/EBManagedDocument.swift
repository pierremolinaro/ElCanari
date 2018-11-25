//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let kFormatSignature = "PM-BINARY-FORMAT"
private let EBVersion = "EBVersion"
let kEntityKey = "--entity"

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private var gDebugMenuItemsAdded = false
private let kLogReadFileDuration = false

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  EBManagedDocument
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBManagedDocument : NSDocument, EBUserClassNameProtocol {
  var mRootObject : EBManagedObject?

  private var mReadMetadataStatus : UInt8 = 0
  private var mMetadataDictionary : NSMutableDictionary = [:]
  private var mManagedObjectContext : EBManagedObjectContext

  //····················································································································
  //    init
  //····················································································································

  override init () {
    let theUndoManager = EBUndoManager ()
    mManagedObjectContext = EBManagedObjectContext (undoManager:theUndoManager)
    super.init ()
    noteObjectAllocation (self)
    undoManager = theUndoManager
    theUndoManager.disableUndoRegistration ()
    mRootObject = try! mManagedObjectContext.newInstanceOfEntityNamed (inEntityTypeName: rootEntityClassName ())
    theUndoManager.enableUndoRegistration ()
  }

  //····················································································································
  //    deinit
  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //    managedObjectContext
  //····················································································································

  final var managedObjectContext : EBManagedObjectContext {
    return self.mManagedObjectContext
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

  func saveMetadataDictionary (version : Int, metadataDictionary : inout NSMutableDictionary) {
    metadataDictionary.setObject (NSNumber (value:version), forKey:EBVersion  as NSCopying)
  }

  //····················································································································

  override func data (ofType typeName: String) throws -> Data {
  //--- Update document version
    var version = mVersion.propval
    switch mVersionShouldChangeObserver.prop {
    case .empty, .multiple :
      break
    case .single (let shouldChange) :
      if shouldChange {
        version += 1
        mVersion.setProp (version)
        mVersionShouldChangeObserver.updateStartUpSignature ()
      }
    }
  //--- Save metadata dictionary
    saveMetadataDictionary (version: version, metadataDictionary : &mMetadataDictionary)
  //--- Add the witdth and the height of main window to metadata dictionary
    if let unwrappedWindowForSheet = windowForSheet { // Document has been opened in the user interface
      if unwrappedWindowForSheet.styleMask.contains(.resizable) { // Only if window is resizable
        let windowSize = unwrappedWindowForSheet.frame.size ;
        mMetadataDictionary.setObject (NSNumber (value: Double (windowSize.width)), forKey:"EBWindowWidth" as NSCopying)
        mMetadataDictionary.setObject (NSNumber (value: Double (windowSize.height)), forKey:"EBWindowHeight" as NSCopying)
      }
    }else{ // Document has not been opened in the user interface, use values read from file, if they exist
/*      NSDictionary * metadataDictionaryReadFromFile = self.metadataDictionaryReadFromFile ;
      NSNumber * v = [metadataDictionaryReadFromFile objectForKey:@"EBWindowWidth"] ;
      if (nil != v) {
        [metadataDictionary setObject:v forKey:@"EBWindowWidth"] ;
      }
      v = [metadataDictionaryReadFromFile objectForKey:@"EBWindowHeight"] ;
      if (nil != v) {
        [metadataDictionary setObject:v forKey:@"EBWindowHeight"] ;
      }*/
    }
  //---
    var fileData = Data ()
    var trace : String? = nil
  //--- Append signature
    fileData.writeSignature (trace: &trace)
  //--- Write status
    fileData.writeByte (inByte: metadataStatusForSaving (), trace:&trace)
  //--- Append metadata dictionary
    let metaData = try PropertyListSerialization.data (fromPropertyList: mMetadataDictionary,
      format:PropertyListSerialization.PropertyListFormat.binary,
      options:0
    )
    fileData.writeByte (inByte: 1, trace:&trace)
    fileData.writeAutosizedData (inData: metaData, trace:&trace)
  //--- Append document data
    let documentData = try dataForSavingFromRootObject ()
    fileData.writeByte (inByte: 6, trace:&trace)
    fileData.writeAutosizedData (inData: documentData, trace:&trace)
  //--- Append final byte
    fileData.writeByte (inByte: 0, trace:&trace)
  //---
    return fileData as Data ;
  }

  //····················································································································

  func dataForSavingFromRootObject () throws -> Data {
    let objectsToSaveArray : [EBManagedObject] = mManagedObjectContext.reachableObjectsFromRootObject (rootObject: mRootObject!)
  //--- Set savingIndex for each object
    var idx = 0 ;
    for object in objectsToSaveArray {
      object.savingIndex = idx
      idx += 1
    }
  //---
    var saveDataArray : [NSDictionary] = []
    for object in objectsToSaveArray {
      let d : NSMutableDictionary = [
        kEntityKey : object.className.pathExtension
      ]
      object.saveIntoDictionary (d)
      saveDataArray.append (d)
    }
    return try PropertyListSerialization.data (fromPropertyList: saveDataArray,
      format:PropertyListSerialization.PropertyListFormat.binary,
      options:0
    )
  }

  //····················································································································
  //    READ DOCUMENT FROM FILE
  //····················································································································

  override func read (from data: Data, ofType typeName: String) throws {
    undoManager?.disableUndoRegistration ()
  //--- Load file
    let (metadataStatus, metadataDictionary, possibleRootObject) = try self.managedObjectContext.loadEasyBindingFile (from: data)
  //--- Store Status
    self.mReadMetadataStatus = metadataStatus
  //--- Store metadata dictionary
    self.mMetadataDictionary = metadataDictionary.mutableCopy () as! NSMutableDictionary
  //--- Read version from file
    self.mVersion.setProp (readVersionFromMetadataDictionary (metadataDictionary: metadataDictionary))
  //--- Free current root object
    if let currentRootObject = self.mRootObject {
      self.managedObjectContext.removeManagedObject (currentRootObject)
    }
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
    undoManager?.enableUndoRegistration ()
  }

  //····················································································································

  func readVersionFromMetadataDictionary (metadataDictionary : NSDictionary) -> Int {
    var result = 0
    if let versionNumber = metadataDictionary.object (forKey: EBVersion as NSCopying) as? NSNumber {
      result = versionNumber.intValue
    }
    return result
  }

  //····················································································································
  //   showWindows
  //····················································································································

  override func showWindows () {
    super.showWindows ()
    if let unwrappedWindowForSheet = windowForSheet { // Document has been opened in the user interface
      if unwrappedWindowForSheet.styleMask.contains (.resizable) { // Only if window is resizable
        let windowWidthNumber : NSNumber? = mMetadataDictionary.object (forKey: "EBWindowWidth") as? NSNumber
        let windowHeightNumber : NSNumber? = mMetadataDictionary.object (forKey: "EBWindowHeight") as? NSNumber
        if (nil != windowWidthNumber) && (nil != windowHeightNumber) {
          let newSize = NSSize (width: CGFloat (windowWidthNumber!.doubleValue), height: CGFloat (windowHeightNumber!.doubleValue))
          var windowFrame : NSRect = unwrappedWindowForSheet.frame
          windowFrame.size = newSize
          unwrappedWindowForSheet.setFrame (windowFrame, display:true)
        }
      }
    }
  }

  //····················································································································
  //   C H E C K    E N T I T Y   R E A C H A B I L I T Y
  //····················································································································

  @IBAction func checkEntityReachability (_: AnyObject) {
    if let rootObject = mRootObject, let window = windowForSheet {
      mManagedObjectContext.checkEntityReachabilityFromObject (rootObject: rootObject, windowForSheet:window)
    }
  }

  //····················································································································
  //   showObjectExplorerWindow:
  //····················································································································

  @IBAction func showObjectExplorerWindow (_: AnyObject) {
    if mExplorerWindow == nil {
      createAndPopulateObjectExplorerWindow ()
    }
    mExplorerWindow?.makeKeyAndOrderFront (nil)
  }

  //····················································································································
  //   createAndPopulateObjectExplorerWindow
  //····················································································································

  func createAndPopulateObjectExplorerWindow () {
  //-------------------------------------------------- Create Window
    let r = NSRect (x:20.0, y:20.0, width:10.0, height:10.0)
    mExplorerWindow = NSWindow (
      contentRect:r,
      styleMask:[.titled, .closable],
      backing:.buffered,
      defer:true,
      screen:nil
    )
  //-------------------------------------------------- Adding properties
    let view = NSView (frame:r)
    var y : CGFloat = 0.0
    populateExplorerWindow (&y, view:view)
  //-------------------------------------------------- Finish Window construction
  //--- Resize View
    let viewFrame = NSRect (x:0.0, y:0.0, width:EXPLORER_ROW_WIDTH, height:y)
    view.frame = viewFrame
  //--- Set content size
    mExplorerWindow?.setContentSize (NSSize (width:EXPLORER_ROW_WIDTH + 16.0, height:fmin (600.0, y)))
  //--- Set close button as 'remove window' button
    let closeButton : NSButton? = mExplorerWindow?.standardWindowButton (NSWindow.ButtonType.closeButton)
    closeButton?.target = self
    closeButton?.action = #selector(EBManagedDocument.deleteDocumentWindowAction(_:))
  //--- Set window title
    mExplorerWindow!.title = "Document " + className
  //--- Add Scroll view
    let frame = NSRect (x:0.0, y:0.0, width:EXPLORER_ROW_WIDTH, height:y)
    let sw = NSScrollView (frame:frame)
    sw.hasVerticalScroller = true
    sw.documentView = view
    mExplorerWindow!.contentView = sw
  }

  //····················································································································
  //   deleteDocumentWindowAction
  //····················································································································

  @objc func deleteDocumentWindowAction (_ : Any) {
    clearObjectExplorer ()
  }

  //····················································································································
  //   clearObjectExplorer
  //····················································································································

  func clearObjectExplorer () {
    let closeButton = mExplorerWindow?.standardWindowButton (NSWindow.ButtonType.closeButton)
    closeButton!.target = nil
    mExplorerWindow?.orderOut (nil)
    mExplorerWindow = nil
  }

  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  var mExplorerWindow : NSWindow?

  //····················································································································

  var mValueExplorer : NSButton? {
    didSet {
      if let unwrappedExplorer = mValueExplorer {
        updateManagedObjectToOneRelationshipDisplay (object: mRootObject, button:unwrappedExplorer)
      }
    }
  }

  //····················································································································

  func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    if let rootObject = mRootObject {
      createEntryForToOneRelationshipNamed (
        "Root",
        idx:rootObject.mEasyBindingsObjectIndex,
        y: &y,
        view: view,
        valueExplorer:&mValueExplorer
      )
    }
  }
  
  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
  //--- Signature obbserver
    mRootObject?.setSignatureObserver (observer: mSignatureObserver)
    mSignatureObserver.setRootObject (mRootObject!)
  //--- Version did change observer
    mVersionShouldChangeObserver.setSignatureObserverAndUndoManager (mSignatureObserver, self.mManagedObjectContext.undoManager())
    mSignatureObserver.addEBObserver (mVersionShouldChangeObserver)
  //--- Add Debug menu items ?
    if !gDebugMenuItemsAdded {
      gDebugMenuItemsAdded = true
      var menuItem = NSMenuItem (
        title:"Explore document",
        action:#selector(EBManagedDocument.showObjectExplorerWindow(_:)),
        keyEquivalent:""
      )
      addItemToDebugMenu (menuItem)
/*      menuItem = NSMenuItem (
        title:"Check Relationships",
        action:"checkRelationships:",
        keyEquivalent:""
      )
      addItemToDebugMenu (menuItem) */
      menuItem = NSMenuItem (
        title:"Check All Objects are Reachable",
        action:#selector(EBManagedDocument.checkEntityReachability(_:)),
        keyEquivalent:""
      )
      addItemToDebugMenu (menuItem)
    }
  //-------------- Check relationships
/*      NSUserDefaultsController * sudc = [NSUserDefaultsController sharedUserDefaultsController] ;
      const BOOL check = [[[sudc values] value_for_key:@"checkDocumentRelationships"] boolValue] ;
      if (check) {
        [self.windowForSheet makeKeyAndOrderFront:nil] ;
        [self checkRelationships:nil] ;
      }*/
  }

  //····················································································································
  //   removeWindowController
  //····················································································································

  func removeUserInterface () {
    mSignatureObserver.removeEBObserver (mVersionShouldChangeObserver)
    mManagedObjectContext.reset ()
  }

  //····················································································································

  override func removeWindowController (_ inWindowController : NSWindowController) {
    DispatchQueue.main.asyncAfter (deadline: .now (), execute: { self.removeUserInterface () })
    super.removeWindowController (inWindowController)
  }

  //····················································································································
  //    Signature observer
  //····················································································································

  private var mSignatureObserver = EBSignatureObserverEvent ()

  //····················································································································

  var signatureObserver_property : EBSignatureObserverEvent {
    get {
      return mSignatureObserver
    }
  }

  //····················································································································
  //    Version
  //····················································································································

  private var mVersion = EBStoredProperty_Int (0) // No undo manager

  //····················································································································

  final func incrementVersionNumber () {
    mVersion.setProp (mVersion.propval + 1)
  }

  //····················································································································

  var versionObserver_property : EBStoredProperty_Int {
    get {
      return mVersion
    }
  }

  //····················································································································
  //    Version observer
  //····················································································································

  private var mVersionShouldChangeObserver = EBVersionShouldChangeObserver ()

  //····················································································································

  var versionShouldChangeObserver_property : EBVersionShouldChangeObserver {
    get {
      return mVersionShouldChangeObserver
    }
  }

  //····················································································································
  //    Reset version and signature
  //····················································································································

  func resetVersionAndSignature () {
    let undoManager = self.mManagedObjectContext.undoManager ()
    undoManager?.registerUndo (
      withTarget: self,
      selector: #selector (performUndoVersionNumber(_:)),
      object: NSNumber (value: mVersion.propval)
    )
    mVersion.setProp (0)
    mVersionShouldChangeObserver.clearStartUpSignature ()
  }
  
  //····················································································································

  @objc func performUndoVersionNumber (_ oldValue : NSNumber) {
    let undoManager = self.mManagedObjectContext.undoManager()
    undoManager?.registerUndo (
      withTarget: self,
      selector: #selector (performUndoVersionNumber(_:)),
      object: NSNumber (value: mVersion.propval)
    )
    mVersion.setProp (oldValue.intValue)
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
      self.runModalPrintOperation (printOperation, delegate:nil, didRun:nil, contextInfo:nil)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//     Data extension
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Data {

  mutating func writeSignature (trace: inout String?) {
    trace? += String (format:"%03lu %03lu ", count / 1000, count % 1000)
    for c in kFormatSignature.utf8 {
      let byte : UInt8 = UInt8 (c)
      self.append (byte)
      trace? += String (format:"%02hhX ", byte)
    }
    trace? += "\n"
  }

  //····················································································································

  mutating func writeAutosizedData (inData: Data,
                                    trace: inout String?) {
    writeAutosizedUnsigned (inValue: UInt64 (inData.count), trace:&trace)
    trace? += String (format:"%03lu %03lu ", count / 1000, count % 1000)
    append (inData)
    trace? += "(data, count \(inData.count))\n"
  }

  //····················································································································

  mutating func writeByte (inByte: UInt8,
                           trace: inout String?) {
    trace? += String (format:"%03lu %03lu ", count / 1000, count % 1000)
    trace? += String (format:"%02hhX ", inByte)
    var byte = inByte
    append (&byte, count:1)
    trace? += "\n"
  }

  //····················································································································

  mutating func writeAutosizedUnsigned (inValue: UInt64,
                                        trace: inout String?) {
    trace? += String (format:"%03lu %03lu ", count / 1000, count % 1000)
    trace? += "U "
    var value = inValue
    repeat{
      var byte : UInt8 = UInt8 (value & 0x7F)
      value >>= 7
      if (value != 0) {
        byte |= 0x80
      }
      trace? += String (format:"%02hhX ", byte)
      append (byte)
    }while value != 0
    trace? += "\n"
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  EBVersionShouldChangeObserver
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBVersionShouldChangeObserver : EBTransientProperty_Bool, EBSignatureObserverProtocol {

  private weak var mUndoManager : EBUndoManager? // SOULD BE WEAK
  private weak var mSignatureObserver : EBSignatureObserverEvent? // SOULD BE WEAK
  private var mSignatureAtStartUp : UInt32 = 0

  override init () {
    super.init ()
    self.readModelFunction = { [weak self] in
      if let unwSelf = self {
        return .single (unwSelf.mSignatureAtStartUp != unwSelf.signature ())
      }else{
        return .empty
      }
    }
  }

  //····················································································································

  final func setSignatureObserverAndUndoManager (_ signatureObserver : EBSignatureObserverEvent, _ undoManager : EBUndoManager?) {
    mUndoManager = undoManager
    mSignatureObserver = signatureObserver
    mSignatureAtStartUp = signatureObserver.signature ()
  }

  //····················································································································

  final func updateStartUpSignature () {
    if let signatureObserver = mSignatureObserver {
      mSignatureAtStartUp = signatureObserver.signature ()
      postEvent ()
    }
  }

  //····················································································································

  func signature () -> UInt32 {
    if let signatureObserver = mSignatureObserver {
      return signatureObserver.signature ()
    }else{
      return 0
    }
  }

  //····················································································································

  func clearSignatureCache () {
    postEvent ()
  }

  //····················································································································
  // clearStartUpSignature
  //····················································································································
  
  func clearStartUpSignature () {
    mUndoManager?.registerUndo (withTarget: self, selector:#selector (performUndo(_:)), object:NSNumber (value: mSignatureAtStartUp))
    mSignatureAtStartUp = 0
    postEvent ()
  }

  //····················································································································

  @objc func performUndo (_ oldValue : NSNumber) {
    mUndoManager?.registerUndo (withTarget: self, selector:#selector (performUndo(_:)), object:NSNumber (value: mSignatureAtStartUp))
    mSignatureAtStartUp = oldValue.uint32Value
    postEvent ()
  }

  //····················································································································

}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  EBSignatureObserverEvent
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBSignatureObserverEvent : EBTransientProperty_Int, EBSignatureObserverProtocol {

  private weak var mRootObject : EBSignatureObserverProtocol? // SOULD BE WEAK

  override init () {
    super.init ()
    self.readModelFunction = { [weak self] in
      if let unwSelf = self {
        return .single (Int (unwSelf.signature ()))
      }else{
        return .empty
      }
    }
  }

  //····················································································································

  final func setRootObject (_ rootObject : EBSignatureObserverProtocol) {
    mRootObject = rootObject
  }

  //····················································································································

  func signature () -> UInt32 {
    if let rootObject = mRootObject {
      return rootObject.signature ()
    }else{
      return 0
    }
  }

  //····················································································································

  func clearSignatureCache () {
    postEvent ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

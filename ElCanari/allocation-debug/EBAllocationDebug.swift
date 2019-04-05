//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private let prefsEnableObjectAllocationDebugString        = "EBAllocationDebug:enableObjectAllocationDebug"
private let prefsEnableObjectAllocationStatsWindowVisible = "EBAllocationDebug:allocationStatsWindowVisible"
private let prefsEnableObjectAllocationStatsDisplayFilter = "EBAllocationDebug:allocationStatsDisplayFilter"
private let prefsReuseTableViewCells                      = "EBAllocationDebug:reuseTableViewCells"

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private var gEnableObjectAllocationDebug = UserDefaults.standard.bool (forKey: prefsEnableObjectAllocationDebugString)

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func reuseTableViewCells () -> Bool {
  var result = !gEnableObjectAllocationDebug
  if !result {
    result = UserDefaults.standard.bool (forKey: prefsReuseTableViewCells)
  }
  return result
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Public routines
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func noteObjectAllocation (_ inObject : EBUserClassNameProtocol) {  // NOT ALWAYS IN MAIN THREAD
  if gEnableObjectAllocationDebug {
    let className = String (describing:type (of: inObject))
    if Thread.isMainThread {
      pmNoteObjectAllocation (className)
    }else{
      DispatchQueue.main.async { pmNoteObjectAllocation (className) }
    }
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func noteObjectDeallocation (_ inObject : EBUserClassNameProtocol) { // NOT ALWAYS IN MAIN THREAD
  if gEnableObjectAllocationDebug {
    let className = String (describing: type (of: inObject))
    if Thread.isMainThread {
      pmNoteObjectDeallocation (className)
    }else{
      DispatchQueue.main.async { pmNoteObjectDeallocation (className) }
    }
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func addItemToDebugMenu (_ item : NSMenuItem) {
  buildDebugObject ()
  gDebugObject?.installDebugMenu ()
  gDebugObject?.mDebugMenu?.addItem (item)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Allocation private routines
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate var gLiveObjectCountByClass = [String : Int] ()
fileprivate var gTotalAllocatedObjectCountByClass = [String : Int] ()
fileprivate var gSnapShotDictionary = [String : Int] ()
fileprivate var gRefreshDisplay = false

//······················································································································
//    pmNoteObjectAllocation:
//······················································································································

fileprivate func pmNoteObjectAllocation (_ inObjectClassName : String) {
  let currentLiveCount = gLiveObjectCountByClass [inObjectClassName] ?? 0
  gLiveObjectCountByClass [inObjectClassName] = currentLiveCount + 1
  let currentCount = gTotalAllocatedObjectCountByClass [inObjectClassName] ?? 0
  gTotalAllocatedObjectCountByClass [inObjectClassName] = currentCount + 1
  gRefreshDisplay = true
}

//······················································································································
//    pmNoteObjectDeallocation
//······················································································································

fileprivate func pmNoteObjectDeallocation (_ inObjectClassName : String) {
  let currentCount = gLiveObjectCountByClass [inObjectClassName] ?? 0
  if currentCount > 1 {
    gLiveObjectCountByClass [inObjectClassName] = currentCount - 1
  }else{
    gLiveObjectCountByClass [inObjectClassName] = nil
  }
  gRefreshDisplay = true
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Private routine
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func buildDebugObject () {
  if nil == gDebugObject {
    let debugObject = EBAllocationDebug ()
    gDebugObject = debugObject
    let mainBundle = Bundle.main
    let ok = mainBundle.loadNibNamed ("EBAllocationDebug", owner: debugObject, topLevelObjects: &debugObject.mTopLevelObjects)
    if !ok {
      presentErrorWindow (#file, #line, "Cannot load 'EBAllocationDebug' nib file")
    }
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBAllocationItemDisplay class
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBAllocationItemDisplay) class EBAllocationItemDisplay : NSObject {
  @objc dynamic var mClassname : String
  @objc dynamic var mAllCount : Int
  @objc dynamic var mLive : Int
  @objc dynamic var mSnapshot : Int

  init (classname : String, allCount : Int, live : Int, snapshot : Int) {
    mClassname = classname
    mAllCount = allCount
    mLive = live
    mSnapshot = snapshot
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private var gDebugObject : EBAllocationDebug? = nil

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBAllocationDebug) class EBAllocationDebug : NSObject, NSTableViewDataSource, NSWindowDelegate {
  @IBOutlet var mPerformSnapShotButton : NSButton? = nil
  @IBOutlet var mAllocationStatsWindowVisibleAtLaunchCheckbox : NSButton? = nil
  @IBOutlet var mDisplayFilterPopUpButton : NSPopUpButton? = nil
  @IBOutlet var mDebugMenu : NSMenu? = nil
  @IBOutlet var mAllocationStatsWindow : NSWindow? = nil
  @IBOutlet var mCurrentlyAllocatedObjectCountTextField : NSTextField? = nil
  @IBOutlet var mTotalAllocatedObjectCountTextField : NSTextField? = nil
  @IBOutlet var mStatsTableView : NSTableView? = nil
  @IBOutlet var mEnableObjectAllocationDebug : NSButton? = nil
  @IBOutlet var mReuseTableViewCellsButton : NSButton? = nil

  //····················································································································

  fileprivate var mTopLevelObjects : NSArray? = nil
  private var mDebugMenuInstalled = false

  //····················································································································

  private var mAllocationStatsWindowVisibleAtLaunch : Bool = true {
    didSet {
      let state = NSControl.StateValue (rawValue: self.mAllocationStatsWindowVisibleAtLaunch ? 1 : 0)
      self.mAllocationStatsWindowVisibleAtLaunchCheckbox?.state = state
    }
  }

  //····················································································································

  private var mAllocatedObjectCount : Int = 0 {
    didSet {
      self.mCurrentlyAllocatedObjectCountTextField?.stringValue = "\(self.mAllocatedObjectCount)"
    }
  }

  //····················································································································

  private var mTotalAllocatedObjectCount : Int = 0 {
    didSet {
      self.mTotalAllocatedObjectCountTextField?.stringValue = "\(self.mTotalAllocatedObjectCount)"
    }
  }

  //····················································································································

  private var mDisplayFilter : Int = 0 {
    didSet {
      gRefreshDisplay = true
    }
  }

  //····················································································································

  private var mAllocationStatsDataSource = NSMutableArray ()

  private var mRefreshTimer : Timer? = nil

  //····················································································································
  //    init
  //····················································································································

   override init () {
    super.init ()
    assert (gDebugObject == nil, "EBAllocationDebug already exists", file: #file, line: #line)
    let nc = NotificationCenter.default
    nc.addObserver (self,
      selector: #selector (EBAllocationDebug.applicationWillTerminateAction(_:)),
      name: NSApplication.willTerminateNotification,
      object: nil
    )
    gDebugObject = self
//    pmInstallDebugMenu ()
  }

  //····················································································································
  //    pmInstallDebugMenu
  //····················································································································

  fileprivate func installDebugMenu () {
    if !self.mDebugMenuInstalled {
      if let menu = NSApp.mainMenu {
        let item = NSMenuItem (
          title: "",
          action: nil,
          keyEquivalent: ""
        )
        item.submenu = self.mDebugMenu
        menu.addItem (item)
        self.mDebugMenuInstalled = true
      }
    }
  }

  //····················································································································
  //    awakeFromNib
  //····················································································································

  override func awakeFromNib () {
  // NSLog (@"%s %p %p", __PRETTY_FUNCTION__, self, mDebugMenu) ;
  //--- Allocation Window visibility
    let df = UserDefaults.standard
    self.mAllocationStatsWindowVisibleAtLaunch = df.bool (forKey: prefsEnableObjectAllocationStatsWindowVisible)
    self.mDisplayFilter = df.integer (forKey: prefsEnableObjectAllocationStatsDisplayFilter)
  //--- Enable / disable object allocation debug
    self.mEnableObjectAllocationDebug?.bind (
      NSBindingName.value,
      to: NSUserDefaultsController.shared ,
      withKeyPath: "values." + prefsEnableObjectAllocationDebugString,
      options: nil
    )
    if gEnableObjectAllocationDebug {
      self.mReuseTableViewCellsButton?.bind (
        NSBindingName.value,
        to: NSUserDefaultsController.shared ,
        withKeyPath: "values." + prefsReuseTableViewCells,
        options: nil
      )
    }else{
      self.mReuseTableViewCellsButton?.state = NSControl.StateValue.on
    }
    self.mDisplayFilterPopUpButton?.isEnabled = gEnableObjectAllocationDebug
    self.mStatsTableView?.isEnabled = gEnableObjectAllocationDebug
    self.mPerformSnapShotButton?.isEnabled = gEnableObjectAllocationDebug
    self.mReuseTableViewCellsButton?.isEnabled = gEnableObjectAllocationDebug
    self.mCurrentlyAllocatedObjectCountTextField?.isEnabled = gEnableObjectAllocationDebug
    self.mTotalAllocatedObjectCountTextField?.isEnabled = gEnableObjectAllocationDebug
  //--- will call windowDidBecomeKey: and windowWillClose:
    self.mAllocationStatsWindow?.delegate = self
  //--- Allocation stats window visibility at Launch
    self.mAllocationStatsWindowVisibleAtLaunchCheckbox?.state = NSControl.StateValue (rawValue: mAllocationStatsWindowVisibleAtLaunch ? 1 : 0)
    self.mAllocationStatsWindowVisibleAtLaunchCheckbox?.target = self
    self.mAllocationStatsWindowVisibleAtLaunchCheckbox?.action = #selector(EBAllocationDebug.setAllocationStatsWindowVisibleAtLaunchAction(_:))
    if self.mAllocationStatsWindowVisibleAtLaunch {
      self.mAllocationStatsWindow?.makeKeyAndOrderFront (nil)
    }
    self.mDisplayFilterPopUpButton?.selectItem (at: mDisplayFilter)
    self.mDisplayFilterPopUpButton?.target = self
    self.mDisplayFilterPopUpButton?.action = #selector(EBAllocationDebug.setDisplayFilerAction(_:))
    let columns = self.mStatsTableView!.tableColumns as NSArray
    if columns.count > 0 {
      let firstColumn = columns [0] as! NSTableColumn
      self.mStatsTableView!.sortDescriptors = NSArray (object:firstColumn.sortDescriptorPrototype!) as! [NSSortDescriptor]
    }
    self.installTimer ()
  }

  //····················································································································
  //    installTimer
  //····················································································································

  private func installTimer () {
    if self.mRefreshTimer == nil {
      let timer = Timer (
        timeInterval: 1.0,
        target: self,
        selector: #selector (EBAllocationDebug.refreshDisplay(_:)),
        userInfo: nil,
        repeats: true
      )
      RunLoop.current.add (timer, forMode: .default)
      self.mRefreshTimer = timer
      gRefreshDisplay = true
      self.displayAllocation ()
    }
  }

  //····················································································································
  //    windowDidBecomeKey: install timer and release it
  //····················································································································

  func windowDidBecomeKey (_ notification: Notification) {
    self.installTimer ()
  }

  //····················································································································
  //    windowWillClose: invalidate timer and release timer
  //····················································································································

  func windowWillClose (_ : Notification) {
    if let timer = self.mRefreshTimer {
      timer.invalidate ()
      self.mRefreshTimer = nil
    }
  }

  //····················································································································
  //    refreshDisplay:
  //····················································································································

  @objc func refreshDisplay (_ timer : Timer) {
    self.displayAllocation ()
  }

  //····················································································································
  //    setAllocationStatsWindowVisibleAtLaunchAction:
  //····················································································································

  @objc func setAllocationStatsWindowVisibleAtLaunchAction (_: Any?) {
    self.mAllocationStatsWindowVisibleAtLaunch = self.mAllocationStatsWindowVisibleAtLaunchCheckbox?.state.rawValue != 0
  }

  //····················································································································
  //    setDisplayFilerAction:
  //····················································································································

  @objc func setDisplayFilerAction (_: Any?) {
    if let displayFilterPopUpButton = self.mDisplayFilterPopUpButton {
      self.mDisplayFilter = displayFilterPopUpButton.indexOfSelectedItem
    }
  }

  //····················································································································
  //    applicationWillTerminateAction:
  //····················································································································

  @objc func applicationWillTerminateAction (_ : Notification) {
    let ud = UserDefaults.standard
    ud.set (self.mAllocationStatsWindowVisibleAtLaunch, forKey: prefsEnableObjectAllocationStatsWindowVisible)
    ud.set (self.mDisplayFilter, forKey: prefsEnableObjectAllocationStatsDisplayFilter)
  }

  //····················································································································
  //    performSnapShotAction:
  //····················································································································

  @IBAction func performSnapShotAction (_: AnyObject) {
    gSnapShotDictionary = gLiveObjectCountByClass // [:]
    gRefreshDisplay = true
  }

  //····················································································································
  //    displayAllocation
  //····················································································································

  private func displayAllocation () {
    // NSLog ("displayAllocation \(self.mRefreshDisplay)")
    if gRefreshDisplay {
      gRefreshDisplay = false
    //---
      var liveObjectCount = 0
      var totalObjectCount = 0
    //---
      self.mAllocationStatsDataSource = NSMutableArray ()
      for (className, totalByClass) in gTotalAllocatedObjectCountByClass {
        let liveByClass = gLiveObjectCountByClass [className] ?? 0
        let snapShotByClass = gSnapShotDictionary [className] ?? 0
        liveObjectCount += liveByClass
        totalObjectCount += totalByClass
        var display = true
        if 1 == self.mDisplayFilter {
          display = liveByClass != 0 ;
        }else if 2 == self.mDisplayFilter {
          display = liveByClass != snapShotByClass ;
        }
        if display {
          self.mAllocationStatsDataSource.add (EBAllocationItemDisplay (
            classname : className,
            allCount : totalByClass,
            live : liveByClass,
            snapshot : snapShotByClass
          ))
        }
      }
      self.mAllocatedObjectCount = liveObjectCount
      self.mTotalAllocatedObjectCount = totalObjectCount
    //---
      let sortDescriptors : [NSSortDescriptor] = self.mStatsTableView?.sortDescriptors ?? []
      self.mAllocationStatsDataSource.sort (using: sortDescriptors)
      self.mStatsTableView?.dataSource = self
      self.mStatsTableView?.reloadData ()
    }
  }

  //····················································································································
  //    T A B L E   V I E W    D A T A    S O U R C E
  //····················································································································

  func tableView (_ aTableView : NSTableView,
                  objectValueFor objectValueForTableColumn: NSTableColumn?,
                  row:Int) -> Any? {
    let theRecord = self.mAllocationStatsDataSource [row] as! EBAllocationItemDisplay
    return theRecord.value (forKey: objectValueForTableColumn!.identifier.rawValue)
  }

  //····················································································································

  func numberOfRows (in _: NSTableView) -> Int {
    return self.mAllocationStatsDataSource.count
  }

  //····················································································································
  //    tableView:sortDescriptorsDidChange: NSTableViewDataSource delegate
  //····················································································································

  func tableView (_ tableView : NSTableView,
                  sortDescriptorsDidChange oldDescriptors : [NSSortDescriptor]) {
    let sortDescriptors = self.mStatsTableView?.sortDescriptors
    self.mAllocationStatsDataSource.sort (using: sortDescriptors!)
    self.mStatsTableView?.reloadData ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

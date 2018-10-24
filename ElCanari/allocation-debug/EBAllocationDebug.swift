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

func noteObjectAllocation (_ inObject : EBUserClassNameProtocol) {
  if gEnableObjectAllocationDebug {
    installDebugMenu ()
    let className = String (describing:type(of: inObject))
    gDebugObject?.pmNoteObjectAllocation (className)
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func noteObjectDeallocation (_ inObject : EBUserClassNameProtocol) {
  if gEnableObjectAllocationDebug {
    let className = String (describing: type(of: inObject))
    gDebugObject?.pmNoteObjectDeallocation (className)
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func addItemToDebugMenu (_ item : NSMenuItem) {
  installDebugMenu ()
  gDebugObject?.mDebugMenu?.addItem (item)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Private routine
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private func installDebugMenu () {
  if nil == gDebugObject {
    let debugObject = EBAllocationDebug ()
    gDebugObject = debugObject
    let mainBundle = Bundle.main
    let ok = mainBundle.loadNibNamed ("EBAllocationDebug",
                                      owner:debugObject,
                                      topLevelObjects:&debugObject.mTopLevelObjects)
    if !ok {
      presentErrorWindow (file: #file, line: #line, errorMessage: "Cannot load 'EBAllocationDebug' nib file") ;
    }
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBAllocationItemDisplay class
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBAllocationItemDisplay) class EBAllocationItemDisplay : NSObject {
  var mClassname : String
  var mAllCount : Int
  var mLive : Int
  var mSnapshot : Int

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
  @IBOutlet var mPerformSnapShotButton  : NSButton?
  @IBOutlet var mAllocationStatsWindowVisibleAtLaunchCheckbox : NSButton?
  @IBOutlet var mDisplayFilterPopUpButton : NSPopUpButton?
  @IBOutlet var mDebugMenu : NSMenu?
  @IBOutlet var mAllocationStatsWindow : NSWindow?
  @IBOutlet var mCurrentlyAllocatedObjectCountTextField : NSTextField?
  @IBOutlet var mTotalAllocatedObjectCountTextField : NSTextField?
  @IBOutlet var mStatsTableView : NSTableView?
  @IBOutlet var mEnableObjectAllocationDebug : NSButton?
  @IBOutlet var mReuseTableViewCellsButton : NSButton?


  fileprivate var mTopLevelObjects : NSArray? = nil

  private var mDebugMenuInstalled = false

  private var mAllocationStatsWindowVisibleAtLaunch : Bool = true {
    didSet {
      mAllocationStatsWindowVisibleAtLaunchCheckbox?.state = NSControl.StateValue(rawValue: mAllocationStatsWindowVisibleAtLaunch ? 1 : 0)
    }
  }

  private var mAllocatedObjectCount : Int = 0 {
    didSet {
      mCurrentlyAllocatedObjectCountTextField?.stringValue = String (format:"%d", mAllocatedObjectCount)
    }
  }

  private var mTotalAllocatedObjectCount : Int = 0 {
    didSet {
      mTotalAllocatedObjectCountTextField?.stringValue = String (format:"%d", mTotalAllocatedObjectCount)
    }
  }

  private var mDisplayFilter : Int = 0 {
    didSet {
      mRefreshDisplay = true
    }
  }

  private var mLiveObjectCountByClass = [String : Int] ()

  private var mTotalAllocatedObjectCountByClass = [String : Int] ()

  private var mSnapShotDictionary = [String : Int] ()
 
  private var mRefreshDisplay = false

  private var mAllocationStatsDataSource = NSMutableArray ()
  
  private var mRefreshTimer : Timer? = nil

  //····················································································································
  //    init
  //····················································································································
  
   override init () {
    super.init ()
    assert (gDebugObject == nil, "EBAllocationDebug already exists", file:#file, line:#line)
    let nc = NotificationCenter.default
    nc.addObserver (self,
      selector:#selector(EBAllocationDebug.applicationWillTerminateAction(_:)),
      name:NSApplication.willTerminateNotification,
      object:nil
    )
    gDebugObject = self
  }
  
  //····················································································································
  //    pmInstallDebugMenu
  //····················································································································

  private func pmInstallDebugMenu () {
    if !mDebugMenuInstalled {
      if let menu = NSApp.mainMenu {
        let item = NSMenuItem (
          title:"",
          action:nil,
          keyEquivalent:""
        )
        item.submenu = mDebugMenu
        menu.addItem (item)
        mDebugMenuInstalled = true
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
    mAllocationStatsWindowVisibleAtLaunch = df.bool (forKey: prefsEnableObjectAllocationStatsWindowVisible)
    mDisplayFilter = df.integer (forKey: prefsEnableObjectAllocationStatsDisplayFilter)
  //--- Enable / disable object allocation debug
    mEnableObjectAllocationDebug?.bind (
      NSBindingName(rawValue: NSBindingName.value.rawValue),
      to: NSUserDefaultsController.shared ,
      withKeyPath: "values." + prefsEnableObjectAllocationDebugString,
      options: nil
    )
    if gEnableObjectAllocationDebug {
      mReuseTableViewCellsButton?.bind (
        NSBindingName(rawValue: NSBindingName.value.rawValue),
        to: NSUserDefaultsController.shared ,
        withKeyPath: "values." + prefsReuseTableViewCells,
        options: nil
      )
    }else{
      mReuseTableViewCellsButton?.state = NSControl.StateValue.on
    }
    mDisplayFilterPopUpButton?.isEnabled = gEnableObjectAllocationDebug
    mStatsTableView?.isEnabled = gEnableObjectAllocationDebug
    mPerformSnapShotButton?.isEnabled = gEnableObjectAllocationDebug
    mReuseTableViewCellsButton?.isEnabled = gEnableObjectAllocationDebug
    mCurrentlyAllocatedObjectCountTextField?.isEnabled = gEnableObjectAllocationDebug
    mTotalAllocatedObjectCountTextField?.isEnabled = gEnableObjectAllocationDebug

  //--- will call windowDidBecomeKey: and windowWillClose:
    mAllocationStatsWindow?.delegate = self
  //--- Allocation stats window visibility at Launch
    mAllocationStatsWindowVisibleAtLaunchCheckbox?.state = NSControl.StateValue(rawValue: mAllocationStatsWindowVisibleAtLaunch ? 1 : 0)
    mAllocationStatsWindowVisibleAtLaunchCheckbox?.target = self
    mAllocationStatsWindowVisibleAtLaunchCheckbox?.action = #selector(EBAllocationDebug.setAllocationStatsWindowVisibleAtLaunchAction(_:))
    if mAllocationStatsWindowVisibleAtLaunch {
      mAllocationStatsWindow?.makeKeyAndOrderFront (nil)
      installTimer ()
    }
    mDisplayFilterPopUpButton?.selectItem (at: mDisplayFilter)
    mDisplayFilterPopUpButton?.target = self
    mDisplayFilterPopUpButton?.action = #selector(EBAllocationDebug.setDisplayFilerAction(_:))
    let columns = mStatsTableView!.tableColumns as NSArray
    if columns.count > 0 {
      let firstColumn = columns [0] as! NSTableColumn
      mStatsTableView!.sortDescriptors = NSArray (object:firstColumn.sortDescriptorPrototype!) as! [NSSortDescriptor]
    }
    pmInstallDebugMenu ()
  }

  //····················································································································
  //    installTimer
  //····················································································································

  func installTimer () {
    if mRefreshTimer == nil {
      displayAllocation ()
      mRefreshTimer = Timer (
        timeInterval: 1.0,
        target:self,
        selector:#selector(EBAllocationDebug.refreshDisplay(_:)),
        userInfo: nil,
        repeats: true
      )
      RunLoop.current.add (mRefreshTimer!, forMode:RunLoop.Mode.default)
      mRefreshDisplay = true
      displayAllocation ()
    }
  }

  //····················································································································
  //    windowDidBecomeKey: create and validate timer
  //····················································································································

  func windowDidBecomeKey (_: Notification) {
    installTimer ()
  }

  //····················································································································
  //    windowWillClose: invalidate timer and release timer
  //····················································································································

  func windowWillClose (_: Notification) {
    if let timer = mRefreshTimer {
      timer.invalidate ()
      mRefreshTimer = nil
    }
  }
  
  //····················································································································
  //    refreshDisplay:
  //····················································································································

  @objc func refreshDisplay (_ timer : Timer) {
    displayAllocation ()
  }
  
  //····················································································································
  //    setAllocationStatsWindowVisibleAtLaunchAction:
  //····················································································································
  
  @objc func setAllocationStatsWindowVisibleAtLaunchAction (_: Any!) {
    mAllocationStatsWindowVisibleAtLaunch = mAllocationStatsWindowVisibleAtLaunchCheckbox?.state.rawValue != 0
  }

  //····················································································································
  //    setDisplayFilerAction:
  //····················································································································
  
  @objc func setDisplayFilerAction (_: Any!) {
    if let displayFilterPopUpButton = mDisplayFilterPopUpButton {
      mDisplayFilter = displayFilterPopUpButton.indexOfSelectedItem
    }
  }

  //····················································································································
  //    applicationWillTerminateAction:
  //····················································································································
  
  @objc func applicationWillTerminateAction (_: Notification) {
    let ud = UserDefaults.standard
    ud.set (mAllocationStatsWindowVisibleAtLaunch,
      forKey:prefsEnableObjectAllocationStatsWindowVisible
    )
    ud.set (mDisplayFilter,
      forKey:prefsEnableObjectAllocationStatsDisplayFilter
    )
  }

  //····················································································································
  //    performSnapShotAction:
  //····················································································································
  
  @IBAction func performSnapShotAction (_: AnyObject) {
    mSnapShotDictionary = [:]
    for (className, liveByClass) in mLiveObjectCountByClass  {
      mSnapShotDictionary [className] = liveByClass
    }
    mRefreshDisplay = true
  }

  //····················································································································
  //    pmNoteObjectAllocation:
  //····················································································································
  
  fileprivate func pmNoteObjectAllocation (_ inObjectClassName : String) {
  //NSLog (@"objectClassName %@", inObjectClassName) ;
    let currentLiveCount = mLiveObjectCountByClass [inObjectClassName] ?? 0
    mLiveObjectCountByClass [inObjectClassName] = currentLiveCount + 1
    let currentCount = mTotalAllocatedObjectCountByClass [inObjectClassName] ?? 0
    mTotalAllocatedObjectCountByClass [inObjectClassName] = currentCount + 1
    mRefreshDisplay = true
    pmInstallDebugMenu ()
  }

  //····················································································································
  //    pmNoteObjectDeallocation
  //····················································································································
  
  fileprivate func pmNoteObjectDeallocation (_ inObjectClassName : String) {
  // NSLog (@"DEALLOC objectClassName %@", inObjectClassName) ;
    let currentCount = mLiveObjectCountByClass [inObjectClassName] ?? 0
    if currentCount > 1 {
      mLiveObjectCountByClass [inObjectClassName] = currentCount - 1
    }else{
      mLiveObjectCountByClass [inObjectClassName] = nil
    }
    mRefreshDisplay = true
  }

  //····················································································································
  //    displayAllocation
  //····················································································································

  private func displayAllocation () {
    if mRefreshDisplay {
      mRefreshDisplay = false
    //---
      var liveObjectCount : Int = 0
      var totalObjectCount : Int = 0
    //---
      mAllocationStatsDataSource = NSMutableArray ()
      for (className, totalByClass) in mTotalAllocatedObjectCountByClass {
        let liveByClass = mLiveObjectCountByClass [className] ?? 0
        let snapShotByClass : Int = mSnapShotDictionary [className] ?? 0
        liveObjectCount += liveByClass
        totalObjectCount += totalByClass
        var display = true
        if 1 == mDisplayFilter {
          display = liveByClass != 0 ;
        }else if 2 == mDisplayFilter {
          display = liveByClass != snapShotByClass ;
        }
        if display {
          mAllocationStatsDataSource.add (EBAllocationItemDisplay (
            classname : className,
            allCount : totalByClass,
            live : liveByClass,
            snapshot : snapShotByClass
          ))
        }
      }
      mAllocatedObjectCount = liveObjectCount
      mTotalAllocatedObjectCount = totalObjectCount
    //---
      let sortDescriptors : [NSSortDescriptor]! = mStatsTableView?.sortDescriptors
      mAllocationStatsDataSource.sort (using: sortDescriptors)
      mStatsTableView?.dataSource = self
      mStatsTableView?.reloadData ()
    }
  }

  //····················································································································
  //    T A B L E   V I E W    D A T A    S O U R C E
  //····················································································································

  func tableView (_ aTableView : NSTableView,
                  objectValueFor objectValueForTableColumn: NSTableColumn?,
                  row:Int) -> Any? {
    let theRecord : EBAllocationItemDisplay = mAllocationStatsDataSource [row] as! EBAllocationItemDisplay
    return theRecord.value (forKey: objectValueForTableColumn!.identifier.rawValue as String)
  }
  
  //····················································································································
  
  func numberOfRows (in _: NSTableView) -> Int {
    return mAllocationStatsDataSource.count
  }
  
  //····················································································································
  //    tableView:sortDescriptorsDidChange: NSTableViewDataSource delegate
  //····················································································································

  func tableView (_ tableView: NSTableView,
                 sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor]) {
    let sortDescriptors = mStatsTableView?.sortDescriptors
    mAllocationStatsDataSource.sort (using: sortDescriptors!)
    mStatsTableView?.reloadData ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

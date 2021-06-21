//
//  EBAllocationDebug-debug-auto-layout.swift
//  ElCanari-Debug-temporary
//
//  Created by Pierre Molinaro on 20/06/2021.
//
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

private let UPDATE_TIMER_PERIOD : Double = 2.0

//----------------------------------------------------------------------------------------------------------------------

private let prefsEnableObjectAllocationDebugString        = "EBAllocationDebug:enableObjectAllocationDebug"
private let prefsEnableObjectAllocationStatsWindowVisible = "EBAllocationDebug:allocationStatsWindowVisible"
//private let prefsEnableObjectAllocationStatsDisplayFilter = "EBAllocationDebug:allocationStatsDisplayFilter"
private let prefsReuseTableViewCells                      = "EBAllocationDebug:reuseTableViewCells"

//----------------------------------------------------------------------------------------------------------------------

private var gEnableObjectAllocationDebug = UserDefaults.standard.bool (forKey: prefsEnableObjectAllocationDebugString)

//----------------------------------------------------------------------------------------------------------------------
//    EBUserClassNameProtocol protocol
//----------------------------------------------------------------------------------------------------------------------

protocol EBUserClassNameProtocol : AnyObject {
}

//----------------------------------------------------------------------------------------------------------------------
//    Public routines
//----------------------------------------------------------------------------------------------------------------------

func noteObjectAllocation (_ inObject : EBUserClassNameProtocol) {  // NOT ALWAYS IN MAIN THREAD
  if gEnableObjectAllocationDebug {
    let className = String (describing: type (of: inObject))
    if Thread.isMainThread {
      pmNoteObjectAllocation (className)
    }else{
      DispatchQueue.main.async { pmNoteObjectAllocation (className) }
    }
  }
}

//----------------------------------------------------------------------------------------------------------------------

func noteObjectDeallocation (_ inObject : EBUserClassNameProtocol) {  // NOT ALWAYS IN MAIN THREAD
  if gEnableObjectAllocationDebug {
    let className = String (describing: type (of: inObject))
    if Thread.isMainThread {
      pmNoteObjectDeallocation (className)
    }else{
      DispatchQueue.main.async { pmNoteObjectDeallocation (className) }
    }
  }
}

//----------------------------------------------------------------------------------------------------------------------

func reuseTableViewCells () -> Bool {
  var result = !gEnableObjectAllocationDebug
  if !result {
    result = UserDefaults.standard.bool (forKey: prefsReuseTableViewCells)
  }
  return result
}

//----------------------------------------------------------------------------------------------------------------------
//    appendAllocationDebugMenuItems
//----------------------------------------------------------------------------------------------------------------------

func appendAllocationDebugMenuItems (_ inMenu : NSMenu) {
  let debugObject = EBAllocationDebug ()
  gDebugObject = debugObject
//  let mainBundle = Bundle.main
//  let ok = mainBundle.loadNibNamed ("EBAllocationDebug", owner: debugObject, topLevelObjects: &debugObject.mTopLevelObjects)
//  if !ok {
//    presentErrorWindow (#file, #line, "Cannot load 'EBAllocationDebug' nib file")
//  }
//---
  let item = NSMenuItem (
    title: "Show Allocation Stats",
    action: #selector (EBAllocationDebug.showAllocationStatWindow (_:)),
    keyEquivalent: ","
  )
  item.keyEquivalentModifierMask = [.command, .control]
  item.target = gDebugObject
  inMenu.addItem (item)
}

//----------------------------------------------------------------------------------------------------------------------
//    Allocation private routines
//----------------------------------------------------------------------------------------------------------------------

fileprivate var gTotalAllocatedObjectCountByClass = [String : Int] ()
fileprivate var gLiveObjectCountByClass = [String : Int] ()
fileprivate var gSnapShotDictionary = [String : Int] ()
fileprivate var gRefreshDisplay = false

//······················································································································
//    pmNoteObjectAllocation
//······················································································································

fileprivate func pmNoteObjectAllocation (_ inClassName : String) {
//---
  let currentCount = gTotalAllocatedObjectCountByClass [inClassName] ?? 0
  gTotalAllocatedObjectCountByClass [inClassName] = currentCount + 1
//---
  let liveCount = gLiveObjectCountByClass [inClassName] ?? 0
  gLiveObjectCountByClass [inClassName] = liveCount + 1
//---
  gRefreshDisplay = true
}

//······················································································································
//    pmNoteObjectDeallocation
//······················································································································

fileprivate func pmNoteObjectDeallocation (_ inClassName : String) {
  if let n = gLiveObjectCountByClass [inClassName] {
    if n > 1 {
      gLiveObjectCountByClass [inClassName] = n - 1
    }else{
      gLiveObjectCountByClass [inClassName] = nil
    }
  }
//---
  gRefreshDisplay = true
}

//----------------------------------------------------------------------------------------------------------------------
//   EBAllocationItemDisplay class
//----------------------------------------------------------------------------------------------------------------------

fileprivate struct EBAllocationItemDisplay {
  let className : String
  let allCount : Int
  let live : Int
  let snapShot : Int
}

//----------------------------------------------------------------------------------------------------------------------

private var gDebugObject : EBAllocationDebug? = nil

//----------------------------------------------------------------------------------------------------------------------

final class EBAllocationDebug : NSObject, NSWindowDelegate {

  //····················································································································
  //   Properties
  //····················································································································

  private var mAllocationStatsWindowVisibleAtLaunch = EBPreferencesProperty_Bool (
    defaultValue: false,
    prefKey: prefsEnableObjectAllocationStatsWindowVisible
  )

  private var mEnableAllocationDebug = EBPreferencesProperty_Bool (
    defaultValue: false,
    prefKey: prefsEnableObjectAllocationDebugString
  )

  private var mReuseTableViewCells = EBPreferencesProperty_Bool (
    defaultValue: false,
    prefKey: prefsReuseTableViewCells
  )

  private var mTotalAllocated = EBStoredProperty_Int (defaultValue: 0, undoManager: nil)

  private var mCurrentlyAllocated = EBStoredProperty_Int (defaultValue: 0, undoManager: nil)

  fileprivate var mAllocationStatsWindow = NSWindow (
    contentRect: NSRect(x: 0.0, y: 0.0, width: 600.0, height: 400.0),
    styleMask: [.titled, .closable, .miniaturizable],
    backing: .buffered,
    defer: true
  )

  fileprivate var mAllocationStatsWindowVisibleAtLaunchCheckbox = AutoLayoutSwitch (
    title: "Visible At Launch",
    small: true
  )

  fileprivate var mEnableAllocationDebugCheckbox = AutoLayoutSwitch (
    title: "Enable Allocation Debug",
    small: true
  )

  fileprivate var mReuseTableViewCellsCheckbox = AutoLayoutSwitch (
    title: "Reuse TableView Cells",
    small: true
  )

  fileprivate var mTotalAllocatedLabel = AutoLayoutIntObserverField (small: true)

  fileprivate var mCurrentlyAllocatedLabel = AutoLayoutIntObserverField (small: true)

  fileprivate var mPerformSnapShotButton = AutoLayoutButton (title: "Snap Shot", small: true)

  fileprivate var mFilterPopUpButton = AutoLayoutEnumPopUpButton (titles: ["All Classes", "Allocated Classes", "Differences with Snap Shot"])

  fileprivate var mStatsTableView = InternalAutoLayoutTableView (small: true)

  //····················································································································
  //    init
  //····················································································································

   override init () {
     super.init ()
   //--- Bindings
     _ = self.mAllocationStatsWindowVisibleAtLaunchCheckbox.bind_value (self.mAllocationStatsWindowVisibleAtLaunch)
     _ = self.mEnableAllocationDebugCheckbox.bind_value (self.mEnableAllocationDebug)
     _ = self.mReuseTableViewCellsCheckbox.bind_value (self.mReuseTableViewCells)
     _ = self.mTotalAllocatedLabel.bind_observedValue (self.mTotalAllocated)
     _ = self.mCurrentlyAllocatedLabel.bind_observedValue (self.mCurrentlyAllocated)
     _ = self.mPerformSnapShotButton.bind_run (target: self, selector: #selector (Self.performSnapShotAction (_:)))
     _ = self.mFilterPopUpButton.bind_run (target: self, selector: #selector (Self.setDisplayFilterAction (_:)))
  //--- Configure table view
    _ = self.mStatsTableView.addTextObserverColumn (
      title: "Class Name",
      identifier: "classname",
      headerAlignment: .center,
      contentAlignment: .left,
      valueDelegate: { [weak self] in return self?.mAllocationStatsDataSource [$0].className ?? "" }
    )
    _ = self.mStatsTableView.addIntObserverColumn (
      title: "Snap Shot",
      identifier: "snapshot",
      headerAlignment: .center,
      contentAlignment: .right,
      valueDelegate: { [weak self] in return self?.mAllocationStatsDataSource [$0].snapShot ?? -1 }
    )
    _ = self.mStatsTableView.addIntObserverColumn (
      title: "Live",
      identifier: "live",
      headerAlignment: .center,
      contentAlignment: .right,
      valueDelegate: { [weak self] in return self?.mAllocationStatsDataSource [$0].live ?? -1 }
    )
    _ = self.mStatsTableView.addIntObserverColumn (
      title: "Total",
      identifier: "total",
      headerAlignment: .center,
      contentAlignment: .right,
      valueDelegate: { [weak self] in return self?.mAllocationStatsDataSource [$0].allCount ?? -1 }
    )
    self.mStatsTableView.mNumberOfRowsDelegate = { [weak self] in return self?.mAllocationStatsDataSource.count ?? 0 }
   //--- Configure Window
     self.mAllocationStatsWindow.title = "Allocation Stats"
     self.mAllocationStatsWindow.isReleasedWhenClosed = false // Close button just hides the window, but do not release it
     self.mAllocationStatsWindow.delegate = self //--- will call windowDidBecomeKey: and windowWillClose:
   //--- Build window contents
      let mainVStack = AutoLayoutVerticalStackView ()
      do {
        let hStack = AutoLayoutTwoColumnsGridView ().set (margins: 20).set (bottomMargin: 0)
          .addFirstBaseLineAligned (
            left: self.mEnableAllocationDebugCheckbox,
            right: AutoLayoutStaticLabel (title: "You should restart the application for this setting to take effect.", bold: true, small: true)
              .setLeftAlignment().makeWidthExpandable()
          )
          .addSeparator ()
          .addFirstBaseLineAligned (
            left: self.mReuseTableViewCellsCheckbox,
            right: AutoLayoutStaticLabel (title: "If Checked, table view cells may be not released.", bold: true, small: true)
              .setLeftAlignment().makeWidthExpandable()
          )
          .addSeparator ()
        mainVStack.appendView (hStack)
      }
      do {
        let hStack = AutoLayoutTwoColumnsGridView ().set (margins: 20).set (topMargin: 0)
          .addFirstBaseLineAligned (
            left: AutoLayoutHorizontalStackView ().setFirstBaselineAlignment ()
              .appendView (self.mAllocationStatsWindowVisibleAtLaunchCheckbox)
              .appendFlexibleSpace (),
            right: AutoLayoutHorizontalStackView ()
              .appendFlexibleSpace ()
              .appendView (AutoLayoutStaticLabel (title: "Total Allocated", bold: true, small: true))
              .appendView (self.mTotalAllocatedLabel)
          )
          .addFirstBaseLineAligned (
            left: AutoLayoutHorizontalStackView ().setFirstBaselineAlignment ()
              .appendView (self.mPerformSnapShotButton)
              .appendView (AutoLayoutStaticLabel (title: "Display", bold: true, small: true))
              .appendView (self.mFilterPopUpButton),
            right: AutoLayoutHorizontalStackView ()
              .appendFlexibleSpace ()
              .appendView (AutoLayoutStaticLabel (title: "Currently Allocated", bold: true, small: true))
              .appendView (self.mCurrentlyAllocatedLabel)
          )
          .appendView (self.mStatsTableView)
        mainVStack.appendView (hStack)
      }
//      mainVStack.appendFlexibleSpace()
    //--- Assign main view to window
      self.mAllocationStatsWindow.contentView = mainVStack
   //--- Show Window at Launch
     if self.mAllocationStatsWindowVisibleAtLaunch.propval {
       self.mAllocationStatsWindow.makeKeyAndOrderFront (nil)
     }
  }

  //····················································································································

  private var mDisplayFilter : Int = 0 {
    didSet {
      gRefreshDisplay = true
    }
  }

  //····················································································································

  private var mAllocationStatsDataSource = [EBAllocationItemDisplay] ()

  private var mRefreshTimer : Timer? = nil

   //····················································································································
  //    installTimer
  //····················································································································

  private func installTimer () {
    if !Thread.isMainThread {
      presentErrorWindow (#file, #line, "not in main thread")
    }
    if self.mRefreshTimer == nil {
      let timer = Timer (
        timeInterval: UPDATE_TIMER_PERIOD,
        target: self,
        selector: #selector (EBAllocationDebug.refreshDisplay (_:)),
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

  @objc func showAllocationStatWindow (_ inSender : Any?) {
    self.mAllocationStatsWindow.makeKeyAndOrderFront (inSender)
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
    gRefreshDisplay = true
    self.displayAllocation ()
  }

  //····················································································································
  //    setDisplayFilterAction:
  //····················································································································

  @objc func setDisplayFilterAction (_ : Any?) {
    let idx = self.mFilterPopUpButton.indexOfSelectedItem
    self.mDisplayFilter = idx
  }

  //····················································································································
  //    performSnapShotAction:
  //····················································································································

  @IBAction func performSnapShotAction (_ : AnyObject) {
    gSnapShotDictionary = gLiveObjectCountByClass
    gRefreshDisplay = true
  }

  //····················································································································
  //    displayAllocation
  //····················································································································

  private func displayAllocation () {
    if !Thread.isMainThread {
      presentErrorWindow (#file, #line, "not in main thread")
    }
    if gRefreshDisplay {
      gRefreshDisplay = false
    //---
      var liveObjectCount = 0
      var totalObjectCount = 0
    //---
      var array = [EBAllocationItemDisplay] ()
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
          array.append (EBAllocationItemDisplay (
            className: className,
            allCount: totalByClass,
            live: liveByClass,
            snapShot: snapShotByClass
          ))
        }
      }
      self.mCurrentlyAllocated.setProp (liveObjectCount)
      self.mTotalAllocated.setProp (totalObjectCount)
    //---
//      let sortDescriptors : [NSSortDescriptor] = self.mStatsTableView?.sortDescriptors ?? []
//      array.sort (using: sortDescriptors)
      self.mAllocationStatsDataSource = array
      self.mStatsTableView.reloadData ()
    }
  }

  //····················································································································
  //    T A B L E   V I E W    D A T A    S O U R C E
  //····················································································································

//  func tableView (_ aTableView : NSTableView,
//                  objectValueFor objectValueForTableColumn : NSTableColumn?,
//                  row : Int) -> Any? {
//    if !Thread.isMainThread {
//      presentErrorWindow (#file, #line, "not in main thread")
//    }
//    let theRecord = self.mAllocationStatsDataSource [row] as! EBAllocationItemDisplay
//    return theRecord.value (forKey: objectValueForTableColumn!.identifier.rawValue)
//  }

  //····················································································································

//  func numberOfRows (in tableView : NSTableView) -> Int {
//    if !Thread.isMainThread {
//      presentErrorWindow (#file, #line, "not in main thread")
//    }
//    return self.mAllocationStatsDataSource.count
//  }

  //····················································································································
  //    tableView:sortDescriptorsDidChange: NSTableViewDataSource delegate
  //····················································································································

//  func tableView (_ tableView : NSTableView,
//                  sortDescriptorsDidChange oldDescriptors : [NSSortDescriptor]) {
////    if !Thread.isMainThread {
////      presentErrorWindow (#file, #line, "not in main thread")
////    }
////    let sortDescriptors = self.mStatsTableView?.sortDescriptors
////    self.mAllocationStatsDataSource.sort (using: sortDescriptors!)
////    self.mStatsTableView?.reloadData ()
//  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

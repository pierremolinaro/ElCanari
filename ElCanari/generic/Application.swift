//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let LOG_OPERATION_DURATION = false

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let WINDOW_HEIGHT_METADATADICTIONARY_KEY = "WindowHeight"
let WINDOW_WIDTH_METADATADICTIONARY_KEY  = "WindowWidth"

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBEvent class
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBEvent : EBObject { // SHOULD INHERIT FROM NSObject
  func postEvent () {} // Abstract method
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//fileprivate var gEventObjectIndex = 0
//
////——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//
//class EBEvent : Hashable, EBUserClassNameProtocol {
//
//  let ebObjectIndex : Int
//
//  init () {
//    self.ebObjectIndex = gEventObjectIndex
//    gEventObjectIndex += 1
//    noteObjectAllocation (self)
//  }
//
//  deinit {
//    noteObjectDeallocation (self)
//  }
//
//  public static func == (lhs: EBEvent, rhs: EBEvent) -> Bool {
//    return lhs.ebObjectIndex == rhs.ebObjectIndex
//  }
//
//  public func hash (into hasher: inout Hasher) {
//    self.ebObjectIndex.hash (into: &hasher)
//  }
//
//  func postEvent () {} // Abstract method
//}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    A P P L I C A T I O N    C L A S S
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBApplication) final class EBApplication : NSApplication {

  //····················································································································

  private var mTransientEventExplorerWindow : NSWindow? = nil

  fileprivate var mTransientEventExplorerTextView : AutoLayoutTextObserverView? = nil

  //····················································································································

  @objc func showTransientEventLogWindow (_ inSender : Any?) {
    if self.mTransientEventExplorerWindow == nil {
      self.mTransientEventExplorerWindow = NSWindow (
        contentRect: NSRect (x: 0.0, y: 0.0, width: 600.0, height: 400.0),
        styleMask: [.titled, .closable, .resizable, .miniaturizable],
        backing: .buffered,
        defer: true
      )
      self.mTransientEventExplorerWindow?.title = "Transient Event Log"
      self.mTransientEventExplorerWindow?.isReleasedWhenClosed = false // Close button just hides the window, but do not release it
  //    self.mTransientEventExplorerWindow.delegate = self // Will call windowDidBecomeKey: and windowWillClose:
      let mainVStack = AutoLayoutVerticalStackView ()
      let hStack = AutoLayoutHorizontalStackView ()
      let clearTransientEventLogButton = AutoLayoutButton (title: "Clear Transient Event Log", size: .regular)
        .bind_run (target: self, selector: #selector (Self.clearTransientEventLogWindow (_:)))
      hStack.appendView (clearTransientEventLogButton)
      hStack.appendFlexibleSpace ()
      mainVStack.appendView (hStack)
      let textView = AutoLayoutTextObserverView ()
      self.mTransientEventExplorerTextView = textView
      mainVStack.appendView (textView)
   //--- Assign main view to window
      self.mTransientEventExplorerWindow?.contentView = mainVStack
    }
    self.mTransientEventExplorerTextView?.string = ""
    self.mTransientEventExplorerWindow?.makeKeyAndOrderFront (inSender)
  }

  //····················································································································

  @objc private func clearTransientEventLogWindow (_ sender : Any?) {
    self.mTransientEventExplorerTextView?.string = ""
  }

  //····················································································································

  func appendToTransientEventLog (_ message : String) {
    if logEvents () {
      self.mTransientEventExplorerTextView?.appendMessageString (message, color: .blue)
    }
  }

  //····················································································································

  func logEvents () -> Bool {
    if Thread.isMainThread {
      return self.mTransientEventExplorerWindow?.isVisible ?? false
    }else{
      return false
    }
  }

  //····················································································································

  override func sendEvent (_ event: NSEvent) {
    super.sendEvent (event)
    flushModelEvents ()
    for doc in NSDocumentController.shared.documents {
      if let document = doc as? EBManagedXibDocument {
        document.updateReachableEntitiesPopUpButton ()
      }
    }
    flushOutletEvents ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func appendShowTransientEventLogWindowMenuItem (_ inMenu : NSMenu) {
  let item = NSMenuItem (
    title: "Show Transient Event Log Window",
    action: #selector (EBApplication.showTransientEventLogWindow (_:)),
    keyEquivalent: ""
  )
  item.keyEquivalentModifierMask = [.command, .control]
  item.target = NSApp
  inMenu.addItem (item)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func appendMessageString (_ message : String) {
  let theApp = NSApp as! EBApplication
  theApp.mTransientEventExplorerTextView?.appendMessageString (message)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func appendMessageString (_ message : String, color : NSColor) {
  let theApp = NSApp as! EBApplication
  theApp.mTransientEventExplorerTextView?.appendMessageString (message, color:color)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

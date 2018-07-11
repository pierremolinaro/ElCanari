//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBEvent class
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBEvent) class EBEvent : EBObject {
  func postEvent () {} // Abstract method
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate var gPendingOutletEvents = [EBOutletEvent] ()

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBOutletEvent class
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBOutletEvent) class EBOutletEvent : EBEvent {

  //····················································································································
  //   Properties
  //····················································································································

  var eventCallBack : Optional < () -> Void > = nil
  var mEventIsPosted = false

  //····················································································································
  //   postEvent
  //····················································································································

  override func postEvent () {
    if gPendingOutletEvents.count == 0 {
      DispatchQueue.main.asyncAfter (deadline: DispatchTime.now()) { flushOutletEvents () }
      if logEvents () {
        appendMessageString ("Post events\n")
      }
    }
    
    if logEvents () {
      let str = "  " +  explorerIndexString (self.mEasyBindingsObjectIndex) + self.className + "\n"
      if !self.mEventIsPosted {
        appendMessageString (str)
      }else{ // Event already posted
        appendMessageString (str, color: NSColor.brown)
      }
    }
    if !self.mEventIsPosted {
      self.mEventIsPosted = true
      gPendingOutletEvents.append (self)
    }
  }

  //····················································································································
  //   sendUpdateEvent
  //····················································································································

  final func sendUpdateEvent () {
    mEventIsPosted = false
    self.eventCallBack? ()
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    flushOutletEvents
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func flushOutletEvents () {
  if gPendingOutletEvents.count > 0 {
    if logEvents () {
      appendMessageString ("Flush outlet events\n", color: NSColor.blue)
    }
    while gPendingOutletEvents.count > 0 {
      let pendingOutletEvents = gPendingOutletEvents
      gPendingOutletEvents.removeAll ()
      for event in pendingOutletEvents {
        event.mEventIsPosted = false
      }
      for event in pendingOutletEvents {
        if logEvents () {
          let message = "  " +  explorerIndexString (event.mEasyBindingsObjectIndex) + event.className + "\n"
          appendMessageString (message, color: NSColor.blue)
        }
        event.sendUpdateEvent ()
      }
      if gPendingOutletEvents.count > 0 && logEvents () {
        let message = String (gPendingOutletEvents.count) +  " event(s) posted during flush\n"
        appendMessageString (message, color: NSColor.red)
      }
    }
    if logEvents () {
      appendMessageString ("——————————————————————————————————————\n", color: NSColor.blue)
    }
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    A P P E N D    T O    T R A N S I E N T    E V E N T    L O G
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func logEvents () -> Bool {
  let theApp = NSApp as! EBApplication
  return theApp.logEvents ()
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func appendToTransientEventLog (_ message : String) {
  let theApp = NSApp as! EBApplication
  theApp.appendToTransientEventLog (message)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func appendMessageString (_ message : String) {
  let theApp = NSApp as! EBApplication
  theApp.mTransientEventExplorerTextView?.appendMessageString (message)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func appendMessageString (_ message : String, color:NSColor) {
  let theApp = NSApp as! EBApplication
  theApp.mTransientEventExplorerTextView?.appendMessageString (message, color:color)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    A P P L I C A T I O N    C L A S S
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBApplication) class EBApplication : NSApplication {

  @IBOutlet var mTransientEventExplorerWindow : NSWindow?
  @IBOutlet var mTransientEventExplorerTextView : NSTextView?
 
  //····················································································································

  override func awakeFromNib () {
    let menuItem = NSMenuItem (
      title:"Show Transient Event Log Window",
      action:#selector (showTransientEventLogWindow (sender:)),
      keyEquivalent:""
    )
    addItemToDebugMenu (menuItem)
  }

  //····················································································································
 
  func showTransientEventLogWindow (sender : Any) {
    mTransientEventExplorerTextView?.string = ""
    mTransientEventExplorerWindow?.makeKeyAndOrderFront (sender)
  }
  
  //····················································································································
 
  @IBAction func clearTransientEventLogWindow (_ sender : AnyObject) {
    mTransientEventExplorerTextView?.string = ""
  }
  
  //····················································································································

  fileprivate func appendToTransientEventLog (_ message : String) {
    if logEvents () {
      mTransientEventExplorerTextView?.appendMessageString (message, color:NSColor.blue)
    }
  }
  
  //····················································································································

  fileprivate func logEvents () -> Bool {
    return (mTransientEventExplorerWindow == nil) ? false : mTransientEventExplorerWindow!.isVisible
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

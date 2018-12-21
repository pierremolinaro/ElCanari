//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBEvent class
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBEvent : EBObject {
  func postEvent () {} // Abstract method
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBOutletEvent class
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate var gPendingOutletEvents = [EBOutletEvent] ()

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBOutletEvent : EBEvent {

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
      DispatchQueue.main.async (execute: { flushOutletEvents () } )
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
        let message = String (gPendingOutletEvents.count) +  " outlet event(s) posted during flush\n"
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

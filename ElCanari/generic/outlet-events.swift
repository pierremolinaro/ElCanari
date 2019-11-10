//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBOutletEvent class
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate var gPendingOutletEvents = [EBOutletEvent] ()

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBOutletEvent : EBEvent {

  //····················································································································
  //   Properties
  //····················································································································

  var mEventCallBack : Optional < () -> Void > = nil
  fileprivate var mEventIsPosted = false

  //····················································································································
  //   postEvent
  //····················································································································

  override func postEvent () {
    if logEvents () {
      if gPendingOutletEvents.count == 0 {
        appendMessageString ("Post events\n")
      }
      let str = "  " +  explorerIndexString (self.ebObjectIndex) + self.className + "\n"
      if !self.mEventIsPosted {
        appendMessageString (str)
      }else{ // Event already posted
        appendMessageString (str, color: NSColor.brown)
      }
    }
    if !self.mEventIsPosted {
      self.mEventIsPosted = true
      if gPendingOutletEvents.count == 0 {
        DispatchQueue.main.async (flags: .barrier) { flushOutletEvents () }
      }
      gPendingOutletEvents.append (self)
    }
  }

  //····················································································································
  //   sendUpdateEvent
  //····················································································································

  final func sendUpdateEvent () {
    self.mEventIsPosted = false
    self.mEventCallBack? ()
  }

  //····················································································································
  //  unregister
  //····················································································································

  func unregister () {
    self.mEventCallBack = nil
  }

  //····················································································································

  func computeAsynchronously (_ inOperationQueue : OperationQueue) {
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
    let startOperationQueue = Date ()
    let operationQueue = OperationQueue ()
    for event in gPendingOutletEvents {
      event.computeAsynchronously (operationQueue)
    }
    operationQueue.waitUntilAllOperationsAreFinished ()
    if LOG_OPERATION_DURATION {
      let durationMS = Int (Date ().timeIntervalSince (startOperationQueue) * 1000.0)
      Swift.print ("Compute transient properties \(durationMS) ms")
    }
    let startFlushOutletEvent = Date ()
    while gPendingOutletEvents.count > 0 {
      let pendingOutletEvents = gPendingOutletEvents
      gPendingOutletEvents.removeAll ()
      for event in pendingOutletEvents {
        event.mEventIsPosted = false
      }
      for event in pendingOutletEvents {
        if logEvents () {
          let message = "  " +  explorerIndexString (event.ebObjectIndex) + event.className + "\n"
          appendMessageString (message, color: NSColor.blue)
        }
        event.sendUpdateEvent ()
      }
      if gPendingOutletEvents.count > 0 && logEvents () {
        let message = String (gPendingOutletEvents.count) +  " outlet event(s) posted during flush\n"
        appendMessageString (message, color: NSColor.red)
      }
    }
    if LOG_OPERATION_DURATION {
      let durationFlushMS = Int (Date ().timeIntervalSince (startFlushOutletEvent) * 1000.0)
      Swift.print ("Flush Outlet Events \(durationFlushMS) ms")
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

func appendMessageString (_ message : String, color : NSColor) {
  let theApp = NSApp as! EBApplication
  theApp.mTransientEventExplorerTextView?.appendMessageString (message, color:color)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

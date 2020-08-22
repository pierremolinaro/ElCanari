//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    EBModelEvent class
//----------------------------------------------------------------------------------------------------------------------

fileprivate var gPendingModelEvents = [EBModelEvent] ()
fileprivate var gCurrentModelEvent : EBModelEvent? = nil

//----------------------------------------------------------------------------------------------------------------------

final class EBModelEvent : EBEvent {

  //····················································································································
  //   Properties
  //····················································································································

  var mEventCallBack : Optional < () -> Void > = nil
  var mEventIsPosted = false

  //····················································································································
  //   postEvent
  //····················································································································

  override func postEvent () {
    if gCurrentModelEvent !== self {
      if gPendingModelEvents.count == 0 {
        if logEvents () {
          appendMessageString ("Post model events\n")
        }
      }
      if logEvents () {
        let str = "  " +  explorerIndexString (self.ebObjectIndex) + self.className + "\n"
        if !self.mEventIsPosted {
          appendMessageString (str)
        }else{ // Event already posted
          appendMessageString (str, color: NSColor.brown)
        }
      }
      if !self.mEventIsPosted {
        self.mEventIsPosted = true
        gPendingModelEvents.append (self)
      }
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
}

//----------------------------------------------------------------------------------------------------------------------
//    flushModelEvents
//----------------------------------------------------------------------------------------------------------------------

func flushModelEvents () {
  if gPendingModelEvents.count > 0 {
    if logEvents () {
      appendMessageString ("Flush model events\n", color: NSColor.blue)
    }
    while gPendingModelEvents.count > 0 {
      let pendingModelEvents = gPendingModelEvents
      gPendingModelEvents.removeAll ()
      for event in pendingModelEvents {
        event.mEventIsPosted = false
      }
      for event in pendingModelEvents {
        if logEvents () {
          let message = "  " +  explorerIndexString (event.ebObjectIndex) + event.className + "\n"
          appendMessageString (message, color: NSColor.blue)
        }
        gCurrentModelEvent = event // For prevent event to be retriggerred during event handling
        event.sendUpdateEvent ()
        gCurrentModelEvent = nil
      }
      if gPendingModelEvents.count > 0 && logEvents () {
        let message = String (gPendingModelEvents.count) +  " model event(s) posted during flush\n"
        appendMessageString (message, color: NSColor.red)
      }
    }
    if logEvents () {
      appendMessageString ("--------------------------------------\n", color: NSColor.blue)
    }
  }
}

//----------------------------------------------------------------------------------------------------------------------

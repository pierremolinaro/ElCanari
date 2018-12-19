//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

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
 
  @objc func showTransientEventLogWindow (sender : Any) {
    mTransientEventExplorerTextView?.string = ""
    mTransientEventExplorerWindow?.makeKeyAndOrderFront (sender)
  }
  
  //····················································································································
 
  @IBAction func clearTransientEventLogWindow (_ sender : AnyObject) {
    mTransientEventExplorerTextView?.string = ""
  }
  
  //····················································································································

  func appendToTransientEventLog (_ message : String) {
    if logEvents () {
      mTransientEventExplorerTextView?.appendMessageString (message, color:NSColor.blue)
    }
  }
  
  //····················································································································

  func logEvents () -> Bool {
    return (mTransientEventExplorerWindow == nil) ? false : mTransientEventExplorerWindow!.isVisible
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
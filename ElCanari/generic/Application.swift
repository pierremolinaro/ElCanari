//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    EBEvent class
//----------------------------------------------------------------------------------------------------------------------

class EBEvent : EBObject {
  func postEvent () {} // Abstract method
}

//----------------------------------------------------------------------------------------------------------------------
//    A P P L I C A T I O N    C L A S S
//----------------------------------------------------------------------------------------------------------------------

@objc(EBApplication) class EBApplication : NSApplication {

  @IBOutlet var mTransientEventExplorerWindow : NSWindow? = nil
  @IBOutlet var mTransientEventExplorerTextView : NSTextView? = nil
 
  //····················································································································

  override func awakeFromNib () {
    let menuItem = NSMenuItem (
      title: "Show Transient Event Log Window",
      action: #selector (showTransientEventLogWindow (sender:)),
      keyEquivalent: ""
    )
    addItemToDebugMenu (menuItem)
  }

  //····················································································································
 
  @objc func showTransientEventLogWindow (sender : Any?) {
    self.mTransientEventExplorerTextView?.string = ""
    self.mTransientEventExplorerWindow?.makeKeyAndOrderFront (sender)
  }
  
  //····················································································································
 
  @IBAction func clearTransientEventLogWindow (_ sender : Any?) {
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
    return self.mTransientEventExplorerWindow?.isVisible ?? false
  }

  //····················································································································

  override func sendEvent (_ event: NSEvent) {
    super.sendEvent (event)
    flushModelEvents ()
    for doc in NSDocumentController.shared.documents {
      if let document = doc as? EBManagedDocument {
        document.updateReachableEntitiesPopUpButton ()
      }
    }
    flushOutletEvents ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

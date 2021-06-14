//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//  Created by Pierre Molinaro on 14/06/2021.
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   Public functions
//----------------------------------------------------------------------------------------------------------------------

func appendShowDocumentFileOperationDurationWindowMenuItem (_ inMenu : NSMenu) {
  let menuItem = NSMenuItem (
    title: "Document Operation Duration",
    action: #selector (LogFileOperation.makeKeyAndOrderFront (_:)),
    keyEquivalent: ""
  )
  menuItem.target = gLogFileOperations
  menuItem.keyEquivalentModifierMask = [.command, .control]
  inMenu.addItem (menuItem)
}

//----------------------------------------------------------------------------------------------------------------------

func appendDocumentFileOperationInfo (_ inMessage : String) {
  gLogFileOperations.appendDocumentFileOperationInfo (inMessage)
}

//----------------------------------------------------------------------------------------------------------------------
//   Private entities
//----------------------------------------------------------------------------------------------------------------------

fileprivate var gLogFileOperations = LogFileOperation ()

//----------------------------------------------------------------------------------------------------------------------

fileprivate class LogFileOperation : EBObject {

  //····················································································································
  //  Properties
  //····················································································································

  private var mWindow = EBWindow (
    contentRect: NSRect (x: 50, y:50, width: 300, height: 300),
    styleMask: [.titled, .closable, .resizable],
    backing: .buffered,
    defer: true
  )

  private let mTextView = AutoLayoutTextView (editable: false)

  //····················································································································
  //  Init
  //····················································································································

  override init () {
    super.init ()
  //--- Configure Window
    self.mWindow.title = "Document Operation Duration"
    self.mWindow.isReleasedWhenClosed = false // Close button just hides the window, but do not release it
  //--- Build window contents
    let vStack = AutoLayoutVerticalStackView ().set (margins: 8)
    vStack.appendView (self.mTextView)
    let button = AutoLayoutButton (title: "Clear", small: true).setAction { self.mTextView.string = "" }
    vStack.appendView (button)
  //--- Assign main view to window
    self.mWindow.contentView = vStack
  }

  //····················································································································

  @objc func makeKeyAndOrderFront (_ inSender : Any?) {
    if self.mWindow.isVisible {
      self.mWindow.orderOut (inSender)
    }else{
      self.mWindow.makeKeyAndOrderFront (nil)
    }
  }

  //····················································································································

  func appendDocumentFileOperationInfo (_ inMessage : String) {
    if self.mWindow.isVisible {
      self.mTextView.string += inMessage
      _ = RunLoop.main.run (mode: .default, before: Date ())
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
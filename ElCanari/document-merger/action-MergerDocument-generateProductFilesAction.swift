//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension MergerDocument {
  @objc func generateProductFilesAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    switch self.issues_property.prop {
    case .multiple, .empty :
      break
    case .single (let issues) :
      if issues.count == 0 {
        self.generateProductFiles ()
      }else if let displaySettingView = self.mDisplaySettingView{
        let alert = NSAlert ()
        alert.messageText = "The board contains errors and / or warnings"
        alert.addButton (withTitle: "Cancel") // 1000
        alert.addButton (withTitle: "Proceed anyway") // 1001
        alert.addButton (withTitle: "Show issues") // 1002
        alert.beginSheetModal (
          for: self.windowForSheet!,
          completionHandler: {(response : NSApplication.ModalResponse) in
            // NSLog ("response \(response)")
            if response == .alertFirstButtonReturn /* 1001 */ { // Proceed anyway
              self.generateProductFiles ()
            }else if response == .alertSecondButtonReturn /* 1002 */ { // Show issues
            //--- Select board page
              self.rootObject.selectedPageIndex = 1
            //--- Remove display setting wiew
              if displaySettingView.window != nil {  // Remove from window
                displaySettingView.resignFirstResponder ()
                displaySettingView.removeFromSuperview ()
              }
            //--- Select issue in tabview
              self.mBoardInspectorSegmentedControl?.selectedSegment = 1
            //--- Select first issue
              self.mIssueTableView?.selectRowIndexes (IndexSet (integer: 0), byExtendingSelection:false)
            }
          }
        )
      }
    }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

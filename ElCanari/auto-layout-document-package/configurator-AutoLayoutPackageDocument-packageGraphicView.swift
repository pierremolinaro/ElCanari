//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension AutoLayoutPackageDocument {
  final func configure_packageGraphicView (_ inOutlet : AutoLayoutGraphicView) {
//--- START OF USER ZONE 2
          inOutlet.mScrollView?.register (document: self)
          if let packageIssueTableView = self.mPackageIssueTableView {
            packageIssueTableView.register (issueDisplayView: inOutlet)
          }
//--- END OF USER ZONE 2
  }
}

//----------------------------------------------------------------------------------------------------------------------

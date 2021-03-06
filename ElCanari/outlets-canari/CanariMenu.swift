//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class CanariMenu : NSMenu, EBUserClassNameProtocol { 

  //····················································································································

  required init (coder : NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  $populateSubmenus binding
  //····················································································································

  @objc func revealInFinder (_ sender : NSMenuItem) {
    let ws = NSWorkspace.shared
    let title = sender.title
    let ok = ws.openFile (title)
    if !ok {
      __NSBeep ()
      let alert = NSAlert ()
      alert.messageText = "Cannot open the \(title) directory"
      alert.informativeText = "This directory does not exist."
      _ = alert.runModal ()
    }
  }

  //····················································································································

  private func updateOutlet (_ object : EBReadOnlyProperty_CanariMenuItemListClass) {
    switch object.selection {
    case .empty, .multiple :
      self.removeAllItems ()
    case .single (let itemList) :
      self.removeAllItems ()
      for title in itemList.items {
        let item = self.addItem (withTitle: title, action: #selector (CanariMenu.revealInFinder(_:)), keyEquivalent: "")
        item.target = self
      }
    }
  }

  //····················································································································

  private var mValueController : EBReadOnlyPropertyController? = nil

  //····················································································································

  final func bind_populateSubmenus (_ object : EBReadOnlyProperty_CanariMenuItemListClass) {
    self.mValueController = EBReadOnlyPropertyController (
      observedObjects: [object],
      callBack: { self.updateOutlet (object) }
    )
  }

  //····················································································································

  final func unbind_populateSubmenus () {
    self.mValueController?.unregister ()
    self.mValueController = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

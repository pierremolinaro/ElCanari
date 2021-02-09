//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

class EBScrollView : NSScrollView, EBUserClassNameProtocol {

  //····················································································································
  // MARK: -
  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    noteObjectAllocation (self)
  }

  //····················································································································
  // MARK: -
  //····················································································································

  override func tile () {
    super.tile ()
    if let graphicView = self.documentView as? EBGraphicView {
      graphicView.scrollViewIsLiveResizing ()
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  fileprivate weak var mDocument : EBManagedDocument? = nil // For handling drag destination

  //····················································································································

 // var document : EBManagedDocument? { return self.mDocument }

  //····················································································································

  func register (document inDocument : EBManagedDocument) {
    self.mDocument = inDocument
  }

  //····················································································································

  func register (document inDocument : EBManagedDocument, draggedTypes : [NSPasteboard.PasteboardType]) {
    self.mDocument = inDocument
    self.registerForDraggedTypes (draggedTypes)
  }

  //····················································································································
  // MARK: -
  //  Mouse down
  //  Strangely, a NSScrollView does not respond to ctrl-click for displaying a contextual menu
  //····················································································································

  override func mouseDown (with inEvent: NSEvent) {
    let modifierFlags = inEvent.modifierFlags
    if modifierFlags.contains (.control) && !(modifierFlags.contains (.shift) || modifierFlags.contains (.option)) { // Ctrl Key On, no shift
    //  NSLog ("\(self.menu)")
      if let theMenu = self.menu {
        NSMenu.popUpContextMenu (theMenu, with: inEvent, for: self)
      }
    }else{
      super.mouseDown (with:inEvent)
    }
  }

  //····················································································································
  //   Drag destination
  //····················································································································
  // The six NSDraggingDestination methods are invoked in a distinct order:
  //
  // ① As the image is dragged into the destination’s boundaries, the destination is sent a draggingEntered: message.
  //       The method should return a value that indicates which dragging operation the destination will perform.
  // ② While the image remains within the destination, a series of draggingUpdated: messages are sent.
  //       The method should return a value that indicates which dragging operation the destination will perform.
  // ③ If the image is dragged out of the destination, draggingExited: is sent and the sequence of
  //       NSDraggingDestination messages stops. If it re-enters, the sequence begins again (with a new
  //       draggingEntered: message).
  // ④ When the image is released, it either slides back to its source (and breaks the sequence) or a
  //       prepareForDragOperation: message is sent to the destination, depending on the value returned by the most
  //       recent invocation of draggingEntered: or draggingUpdated:.
  // ⑤  If the prepareForDragOperation: message returned YES, a performDragOperation: message is sent.
  // ⑥  Finally, if performDragOperation: returned YES, concludeDragOperation: is sent.
  //
  //····················································································································

  final override func draggingEntered (_ inSender : NSDraggingInfo) -> NSDragOperation {
    if let graphicView = self.documentView as? EBGraphicView {
      graphicView.setHelperTextField ("Dragging moves duplicated objects; ESC cancels operation")
    }
    return self.mDocument?.draggingEntered (inSender, self) ?? .generic
  }

  //····················································································································

  final override func draggingUpdated (_ inSender : NSDraggingInfo) -> NSDragOperation {
    return self.mDocument?.draggingUpdated (inSender, self) ?? .generic
  }

  //····················································································································

  final override func draggingExited (_ inSender : NSDraggingInfo?) {
    self.mDocument?.draggingExited (inSender, self)
  }

  //····················································································································

  final override func prepareForDragOperation (_ inSender : NSDraggingInfo) -> Bool {
    return self.mDocument?.prepareForDragOperation (inSender, self) ?? false
  }

  //····················································································································

  final override func performDragOperation (_ inSender : NSDraggingInfo) -> Bool {
    return self.mDocument?.performDragOperation (inSender, self) ?? false
  }

  //····················································································································

  final override func concludeDragOperation (_ inSender : NSDraggingInfo?) {
    self.mDocument?.concludeDragOperation (inSender, self)
  }

  //····················································································································

  final override func draggingEnded (_ inSender : NSDraggingInfo) {
    if let graphicView = self.documentView as? EBGraphicView {
      graphicView.setHelperTextField ("Drag and drop ended")
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

//
//  MergerDocument-customized.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 25/11/2018.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate let kDragAndDropModelType = NSPasteboard.PasteboardType (rawValue: "drag.and.drop.board.model")

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(CustomizedMergerDocument) class CustomizedMergerDocument : MergerDocument {

  //····················································································································
  //    windowControllerDidLoadNib: customization of interface
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
  //--- Set document to scroll view for enabling drag and drop
    self.mComposedBoardScrollView?.register (document: self, draggedTypes: [kDragAndDropModelType])
    self.mModelDragSourceTableView?.register (document: self, draggedType: kDragAndDropModelType)
  }

  //····················································································································
  //    Drag and drop destination
  //····················································································································

  override func draggingEntered (_ sender: NSDraggingInfo, _ destinationScrollView : NSScrollView) -> NSDragOperation {
    return .copy
  }

  //····················································································································

  override func draggingUpdated (_ sender: NSDraggingInfo, _ destinationScrollView : NSScrollView) -> NSDragOperation {
    return .copy
  }

  //····················································································································

  override func performDragOperation (_ sender: NSDraggingInfo, _ destinationScrollView : NSScrollView) -> Bool {
    return true
  }

  //····················································································································

  override func concludeDragOperation (_ inSender: NSDraggingInfo?, _ destinationScrollView : NSScrollView) {
    if let sender = inSender, let documentView = destinationScrollView.documentView {
      let draggingLocationInWindow = sender.draggingLocation
      let draggingLocationInDestinationView = documentView.convert (draggingLocationInWindow, from:nil)
      // NSLog ("concludeDragOperation at \(draggingLocationInWindow), \(documentView) \(draggingLocationInDestinationView)")
      let pasteboard = sender.draggingPasteboard
      if let data = pasteboard.data (forType: kDragAndDropModelType), let boardModelName = String (data: data, encoding: .ascii) {
        // NSLog ("\(boardModelName)")
        var possibleBoardModel : BoardModel? = nil
        for boardModel in self.rootObject.boardModels_property.propval {
          if boardModel.name == boardModelName {
            possibleBoardModel = boardModel
            break
          }
        }
        if  let boardModel = possibleBoardModel {
         // NSLog ("x \(mouseLocation.x), y \(mouseLocation.y)")
          let rotation = QuadrantRotation (rawValue: self.mInsertedInstanceDefaultOrientation?.selectedTag () ?? 0)!
          let newBoard = MergerBoardInstance (managedObjectContext: self.managedObjectContext, file: #file, #line)
          newBoard.myModel_property.setProp (boardModel)
          newBoard.x = cocoaToCanariUnit (draggingLocationInDestinationView.x)
          newBoard.y = cocoaToCanariUnit (draggingLocationInDestinationView.y)
          newBoard.instanceRotation = rotation
          self.rootObject.boardInstances_property.add (newBoard)
          self.mBoardInstanceController.setSelection ([newBoard])
        }else{
          NSLog ("Cannot find '\(boardModelName)' board model")
        }
      }
    }
  }

  //····················································································································
  // Providing the drag image, called by a source drag table view (CanariDragSourceTableView)
  //····················································································································

  override func dragImageForRows (with dragRows: IndexSet,
                                  tableColumns: [NSTableColumn],
                                  event dragEvent: NSEvent,
                                  offset dragImageOffset: NSPointPointer) -> NSImage {
    if let boardView = self.mComposedBoardView, dragRows.count == 1 {
    //--- Get board view scale and flip
      let scale = boardView.actualScale ()
      let horizontalFlip : CGFloat = boardView.horizontalFlip () ? -1.0 : 1.0
      let verticalFlip   : CGFloat = boardView.verticalFlip ()   ? -1.0 : 1.0
    //--- Image size
      var width = scale * canariUnitToCocoa (self.rootObject.boardModels_property.propval [dragRows.first!].modelWidth)
      var height = scale * canariUnitToCocoa (self.rootObject.boardModels_property.propval [dragRows.first!].modelHeight)
    //--- Orientation (0 -> 0°, 1 -> 90°, 2 -> 180°, 3 -> 270°)
      let rotation = self.mInsertedInstanceDefaultOrientation?.selectedTag () ?? 0
      if (rotation == 1) || (rotation == 3) {
        let temp = width
        width = height
        height = temp
      }
    //--- By default, image is centered;
      dragImageOffset.pointee = NSPoint (x: horizontalFlip * width / 2.0, y: verticalFlip * height / 2.0)
    //--- Build image
      let r = CGRect (x: 0.0, y: 0.0, width: width, height: height)
      let bp = NSBezierPath (rect: r.insetBy (dx: 0.5, dy: 0.5))
      bp.lineWidth = 1.0
      let shape = EBStrokeBezierPathShape ([bp], NSColor.gray)
      let pdfData = buildPDFimage (frame:r, shapes: shape, backgroundColor:NSColor.gray.withAlphaComponent (0.25))
      return NSImage (data: pdfData)!
    }else{
      return NSImage (named: NSImage.Name ("exclamation"))!
    }
  }
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

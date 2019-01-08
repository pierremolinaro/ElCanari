//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBView : NSDraggingSource {

  //····················································································································

  func draggingSession (_ session: NSDraggingSession,
                        sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation {
    return .generic
  }

  //····················································································································

  internal func ebStartDragging (with inEvent : NSEvent, dragType : NSPasteboard.PasteboardType) {
  //--- Find object under mouse
    let mouseDownLocation = self.convert (inEvent.locationInWindow, from:nil)
    let (possibleObjectIndex, _) = self.indexOfFrontmostObject (at: mouseDownLocation)
    if let objectIndex = possibleObjectIndex {
    //--- Build dragged object set
      var draggedObjectSet = Set <EBGraphicManagedObject> ()
      let objectArray = self.viewController?.objectArray ?? []
      let selectedObjectSet = self.viewController?.selectedGraphicObjectSet ?? Set ()
      if selectedObjectSet.contains (objectArray [objectIndex]) { // Clic on a selected object: drag selection
        draggedObjectSet = selectedObjectSet
      }else{ // Object is not selected: drag only this object
        draggedObjectSet.insert (objectArray [objectIndex])
      }
    //--- Start dragging
      if draggedObjectSet.count > 0 {
        self.performStartDragging (draggedObjectSet: draggedObjectSet, event: inEvent, dragType: dragType)
      }
    }
  }

  //····················································································································

  fileprivate func performStartDragging (draggedObjectSet : Set <EBGraphicManagedObject>,
                                         event inEvent : NSEvent,
                                         dragType : NSPasteboard.PasteboardType) {
  //--- Build dragging item
    let pasteboardItem = NSPasteboardItem ()
    let draggingItem = NSDraggingItem (pasteboardWriter: pasteboardItem)
  //--- Buils image and data
    let objectArray = self.viewController?.objectArray ?? []
    let displayShape = EBShape ()
    var objectDictionaryArray = [NSDictionary] ()
    for object in objectArray {
      if draggedObjectSet.contains (object), let objectShape = object.objectDisplay {
        displayShape.append (objectShape)
        let d = NSMutableDictionary ()
        object.saveIntoDictionary (d)
        objectDictionaryArray.append (d)
      }
    }
  //--- Associated data
    let mouseDownCocoaLocation = self.convert (inEvent.locationInWindow, from:nil)
    let mouseDownCanariLocation = mouseDownCocoaLocation.canariPointAligned (onCanariGrid: SYMBOL_GRID_IN_CANARI_UNIT)
    let dataDictionary : NSDictionary = [
      "OBJECTS" : objectDictionaryArray,
      "X" : mouseDownCanariLocation.x,
      "Y" : mouseDownCanariLocation.y
    ]
    pasteboardItem.setPropertyList (dataDictionary, forType: dragType)
  //--- Transform image by scaling and translating
    let hasHorizontalFlip : CGFloat = self.horizontalFlip ? -1.0 : 1.0
    let hasVerticalFlip   : CGFloat = self.verticalFlip   ? -1.0 : 1.0
    let transform = NSAffineTransform ()
    transform.scaleX (by: self.actualScale * hasHorizontalFlip, yBy: self.actualScale * hasVerticalFlip)
    transform.translateX (
      by:  -displayShape.boundingBox.minX,
      yBy: -displayShape.boundingBox.minY
    )
    let finalShape = displayShape.transformedBy (transform)
  //--- Build image
    let rect = finalShape.boundingBox
    let image = buildPDFimage (frame: rect, shape: finalShape)
  //--- Move image rect origin to mouse click location
    let draggingFrame = NSRect (
      x: displayShape.boundingBox.minX,
      y: displayShape.boundingBox.minY,
      width: rect.size.width,
      height: rect.size.height
    )
  //--- Set dragged image
    draggingItem.setDraggingFrame (draggingFrame, contents: image)
  //--- Begin dragging
    self.beginDraggingSession (with: [draggingItem], event: inEvent, source: self)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ArrayController_MergerDocument_mBoardInstanceController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ArrayController_MergerDocument_mBoardInstanceController : EBObject, EBViewControllerProtocol {
 
  //····················································································································
  // MARK: -
  // Models
  //····················································································································
 
   private var mModel : ReadWriteArrayOf_MergerBoardInstance? = nil

  //····················································································································

  private var mSelectedSet = Set <MergerBoardInstance> () {
    didSet {
      self.selectedArray_property.postEvent ()
    }
  }

  //····················································································································

  var selectedSet : Set <MergerBoardInstance> { return self.selectedArray_property.propset }

  //····················································································································
  // MARK: -
  // Observable properties
  //····················································································································

  let objectArray_property = TransientArrayOf_MergerBoardInstance ()

  //····················································································································

  let selectedArray_property = TransientArrayOf_MergerBoardInstance ()

  //····················································································································
  // MARK: -
  //····················································································································

  override init () {
    super.init ()
  //--- Selection observers
    self.canBringForward_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canBringForward)
      }else{
        return .empty
      }
    }
    self.selectedArray_property.addEBObserver (self.canBringToFront_property)
  //---
    self.canBringToFront_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canBringToFront)
      }else{
        return .empty
      }
    }
    self.selectedArray_property.addEBObserver (self.canBringToFront_property)
  //---
    self.canSendBackward_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canSendBackward)
      }else{
        return .empty
      }
    }
    self.selectedArray_property.addEBObserver (self.canSendBackward_property)
  //---
    self.canSendToBack_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canSendToBack)
      }else{
        return .empty
      }
    }
    self.selectedArray_property.addEBObserver (self.canSendToBack_property)
  //---
    self.canFlipHorizontally_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canFlipHorizontally)
      }else{
        return .empty
      }
    }
    self.selectedArray_property.addEBObserver (self.canFlipHorizontally_property)
  //---
    self.canFlipVertically_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canFlipVertically)
      }else{
        return .empty
      }
    }
    self.selectedArray_property.addEBObserver (self.canFlipVertically_property)
  //---
    self.canRotate90Clockwise_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canRotate90Clockwise)
      }else{
        return .empty
      }
    }
    self.selectedArray_property.addEBObserver (self.canRotate90Clockwise_property)
  //---
    self.canRotate90CounterClockwise_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canRotate90CounterClockwise)
      }else{
        return .empty
      }
    }
    self.selectedArray_property.addEBObserver (self.canRotate90CounterClockwise_property)
  //--- Install object array read function
    self.objectArray_property.readModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let modelArray) :
          return .single (modelArray)
        }
      }else{
        return .empty
      }
    }
   //--- Install selected object array read function
    self.selectedArray_property.readModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let modelArray) :
          let selectedObjects = self?.mSelectedSet ?? Set ()
          var selectedArray = [MergerBoardInstance] ()
          for object in modelArray {
            if selectedObjects.contains (object) {
              selectedArray.append (object)
            }
          }
          return .single (selectedArray)
        }
      }else{
        return .empty
      }
    }
 }

   //····················································································································

  var objectCount : Int {
    let objects = mModel?.propval ?? []
    return objects.count
  }

  //····················································································································

  func bind_model (_ inModel:ReadWriteArrayOf_MergerBoardInstance) {
    self.mModel = inModel
    inModel.addEBObserver (self.objectArray_property)
    self.startObservingObjectShape ()
    self.startObservingSelectionShape ()
    self.inspectorViewManagerStartsObservingSelection ()
  }

  //····················································································································

  func unbind_model () {
    self.stopObservingObjectShape ()
    self.stopObservingSelectionShape ()
    self.inspectorViewManagerStopsObservingSelection ()
    self.mModel?.removeEBObserver (self.objectArray_property)
  //---
    self.mSelectedSet = Set ()
    self.mModel = nil
 }

  //····················································································································
  //    Undo manager
  //····················································································································

  var undoManager : EBUndoManager? {
    return self.mModel?.undoManager
  }

  //····················································································································
  //   SELECTION
  // MARK: -
  //····················································································································

  var selectedIndexesSet : Set <Int> {
    var result = Set <Int> ()
    var idx = 0
    for object in self.mModel?.propval ?? [] {
      if self.selectedArray_property.propset.contains (object) {
        result.insert (idx)
      }
      idx += 1
    }
    return result
  }

  //····················································································································

  func setSelection (_ inObjects : [MergerBoardInstance]) {
    self.mSelectedSet = Set (inObjects)
  }

  //····················································································································
  //  EBView interface
  //····················································································································

  var selectedGraphicObjectSet : Set <EBGraphicManagedObject> {
    return self.selectedArray_property.propset
  }

   //····················································································································

  var objectArray : [EBGraphicManagedObject] {
    return self.mModel?.propval ?? []
  }

  //····················································································································
  // MARK: -
  // Compute selection shape
  //····················································································································

  private var mObjectSelectionObserver = EBOutletEvent ()

  //····················································································································

  private func startObservingSelectionShape () {
    self.mModel?.addEBObserverOf_selectionDisplay (self.mObjectSelectionObserver)
    self.selectedArray_property.addEBObserver (self.mObjectSelectionObserver)
    self.mObjectSelectionObserver.eventCallBack = { [weak self] in self?.computeSelectionShape () }
  }

  //····················································································································

  private func stopObservingSelectionShape () {
    self.mModel?.removeEBObserverOf_selectionDisplay (self.mObjectSelectionObserver)
    self.selectedArray_property.removeEBObserver (self.mObjectSelectionObserver)
    self.mObjectSelectionObserver.eventCallBack = nil
  }

  //····················································································································

  private func computeSelectionShape () {
    var selectionDisplayArray = [EBShape] ()
    for object in self.mModel?.propval ?? [] {
      if !self.selectedArray_property.propset.contains (object) {
        selectionDisplayArray.append (EBShape ())
      }else if let shape = object.selectionDisplay {
        selectionDisplayArray.append (shape)
      }else{
        selectionDisplayArray.append (EBShape ())
      }
    }
    for view in self.mEBViews {
      view.updateSelectionShape (selectionDisplayArray)
    }
  }

  //····················································································································
  // MARK: -
  // Compute object shape
  //····················································································································

  private var mObjectDisplayObserver = EBOutletEvent ()

  //····················································································································

  private func startObservingObjectShape () {
    self.mModel?.addEBObserverOf_objectDisplay (self.mObjectDisplayObserver)
    self.mObjectDisplayObserver.eventCallBack = { [weak self] in self?.updateObjectDisplay () }
  }

  //····················································································································

  private func stopObservingObjectShape () {
    self.mModel?.removeEBObserverOf_objectDisplay (self.mObjectDisplayObserver)
    self.mObjectDisplayObserver.eventCallBack = nil
  }

  //····················································································································

  func updateObjectDisplay () {
    var displayArray = [EBShape] ()
    for object in self.mModel?.propval ?? [] {
      if let shape = object.objectDisplay {
        displayArray.append (shape)
      }else{
        displayArray.append (EBShape ())
      }
    }
    for view in self.mEBViews {
      view.updateObjectDisplay (displayArray)
    }
  }

  //····················································································································
  // MARK: -
  // EBViews
  //····················································································································

  private var mEBViews = [EBView] ()

  //····················································································································

  func bind_ebView (_ inEBView : EBView?) {
    if let ebView = inEBView {
      self.mEBViews.append (ebView)
      ebView.set (controller: self)
    }
  }

  //····················································································································

  func unbind_ebView (_ inEBView : EBView?) {
    if let ebView = inEBView, let idx = self.mEBViews.index (of: ebView) {
      ebView.updateObjectDisplay ([])
      ebView.updateSelectionShape ([])
      self.mEBViews.remove (at: idx)
    }
  }


  //····················································································································
  //    Explorer
  //····················································································································

  final func addExplorer (name : String, y : inout CGFloat, view : NSView) {
  }

  //····················································································································

  func selectedObjectIndexSet () -> NSIndexSet {
    switch self.objectArray_property.prop {
    case .empty, .multiple :
       return NSIndexSet ()
    case .single (let v) :
    //--- Dictionary of object indexes
      var objectDictionary = [MergerBoardInstance : Int] ()
      for (index, object) in v.enumerated () {
        objectDictionary [object] = index
      }
      let indexSet = NSMutableIndexSet ()
      for object in self.selectedArray_property.propset {
        if let index = objectDictionary [object] {
          indexSet.add (index)
        }
      }
      return indexSet
    }
  }

  //····················································································································
  //    select
  //····················································································································

  func select (object inObject: MergerBoardInstance) {
    if let model = self.mModel {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let objectArray) :
        if objectArray.contains (inObject) {
           self.mSelectedSet = Set ([inObject])
        }
      }
    }
  }

  //····················································································································
  //    add
  //····················································································································

   @objc func add (_ sender : Any) {
    if let model = self.mModel {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let v) :
        let newObject = MergerBoardInstance (self.undoManager, file: #file, #line)
        var array = v
        array.append (newObject)
      //--- New object is the selection
        self.mSelectedSet = Set ([newObject])
        model.setProp (array)
      }
    }
  }

  //····················································································································
  //    remove
  //····················································································································

  @objc func remove (_ sender : Any) {
    if let model = self.mModel {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let model_prop) :
        switch self.objectArray_property.prop {
        case .empty, .multiple :
          break
        case .single (let sortedArray_prop) :
        //------------- Find the object to be selected after selected object removing
        //--- Dictionary of object sorted indexes
          var sortedObjectDictionary = [MergerBoardInstance : Int] ()
          for (index, object) in sortedArray_prop.enumerated () {
            sortedObjectDictionary [object] = index
          }
          var indexArrayOfSelectedObjects = [Int] ()
          for object in self.selectedArray_property.propset {
            let index = sortedObjectDictionary [object]
            if let idx = index {
              indexArrayOfSelectedObjects.append (idx)
            }
          }
        //--- Sort
          indexArrayOfSelectedObjects.sort (by: { $0 < $1 })
        //--- Find the first index of a non selected object
          var newSelectionIndex = indexArrayOfSelectedObjects [0] + 1
          for index in indexArrayOfSelectedObjects {
            if newSelectionIndex < index {
              break
            }else{
              newSelectionIndex = index + 1
            }
          }
          var newSelectedObject : MergerBoardInstance? = nil
          if (newSelectionIndex >= 0) && (newSelectionIndex < sortedArray_prop.count) {
            newSelectedObject = sortedArray_prop [newSelectionIndex]
          }
        //----------------------------------------- Remove selected object
        //--- Dictionary of object absolute indexes
          var objectDictionary = [MergerBoardInstance : Int] ()
          for (index, object) in model_prop.enumerated () {
            objectDictionary [object] = index
          }
        //--- Build selected objects index array
          var selectedObjectIndexArray = [Int] ()
          for object in self.selectedArray_property.propset {
            let index = objectDictionary [object]
            if let idx = index {
              selectedObjectIndexArray.append (idx)
            }
          }
        //--- Sort in reverse order
          selectedObjectIndexArray.sort (by: { $1 < $0 })
        //--- Remove objects, in reverse of order of their index
          var newObjectArray = model_prop
          for index in selectedObjectIndexArray {
            newObjectArray.remove (at: index)
          }
        //----------------------------------------- Set new selection
          var newSelectionSet = Set <MergerBoardInstance> ()
          if let object = newSelectedObject {
            newSelectionSet.insert (object)
          }
          self.mSelectedSet = newSelectionSet
        //----------------------------------------- Set new object array
          model.setProp (newObjectArray)
        }
      }
    }
  }

  //····················································································································
  //  SELECTION OPERATIONS
  //····················································································································

  private func sortedIndexArrayOfSelectedObjects () -> [Int] {
    var result = [Int] ()
    let objects = self.mModel?.propval ?? []
    for object in self.selectedArray_property.propset {
      let idx = objects.index (of:object)!
      result.append (idx)
    }
    return result.sorted ()
  }

  //····················································································································
  // MARK: -
  //····················································································································

  func canCut (_ inPasteboardType : NSPasteboard.PasteboardType?) -> Bool {
    if (inPasteboardType == nil) || (self.selectedArray_property.propset.count == 0) {
      return false
    }else{
      for object in self.selectedArray_property.propset {
        if !object.canCopyAndPaste () {
          return false
        }
      }
      return true
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  func cutSelectedObjectsIntoPasteboard (_ inPasteboardType : NSPasteboard.PasteboardType?, pasteOffset : CanariPoint) {
    self.copySelectedObjectsIntoPasteboard (inPasteboardType, pasteOffset: pasteOffset)
    self.deleteSelectedObjects ()
  }

  //····················································································································

  func canCopy (_ inPasteboardType : NSPasteboard.PasteboardType?) -> Bool {
    return self.canCut (inPasteboardType)
  }

  //····················································································································
  // MARK: -
  //····················································································································

  func copySelectedObjectsIntoPasteboard (_ inPasteboardType : NSPasteboard.PasteboardType?,
                                          pasteOffset : CanariPoint) {
    if let pasteboardType = inPasteboardType {
    //--- Declare pasteboard types
      let pb = NSPasteboard.general
      pb.declareTypes ([pasteboardType, .pdf], owner:self)
    //--- Build PDF representation
      let indexArray = self.sortedIndexArrayOfSelectedObjects ()
      let objects = mModel?.propval ?? []
      let shape = EBShape ()
      for idx in indexArray {
        let object = objects [idx]
        if let s = object.objectDisplay {
          shape.append (s)
        }
      }
      let pdfData = buildPDFimage (frame: shape.boundingBox, shape: shape)
      pb.setData (pdfData, forType: .pdf)
   //--- Build private representation
      var objectDictionaryArray = [NSDictionary] ()
      for idx in indexArray {
        let object = objects [idx]
        let d = NSMutableDictionary ()
        object.saveIntoDictionary (d)
        objectDictionaryArray.append (d)
      }
    //--- Copy private representation(s)
      let dataDictionary : NSDictionary = [
        "OBJECTS" : objectDictionaryArray,
        "X" : pasteOffset.x,
        "Y" : pasteOffset.y
      ]
      pb.setPropertyList (dataDictionary, forType: pasteboardType)
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  func canPaste (_ inPasteboardType : NSPasteboard.PasteboardType?) -> Bool {
    if let pasteboardType = inPasteboardType {
      let pb = NSPasteboard.general
      return pb.availableType (from: [pasteboardType]) != nil
    }else{
      return false
    }
  }

  //····················································································································

   func pasteFromPasteboard (_ inPasteboardType : NSPasteboard.PasteboardType?) {
    let pb = NSPasteboard.general
    if let pasteboardType = inPasteboardType,
       pb.availableType (from: [pasteboardType]) != nil,
       let dataDictionary = pb.propertyList (forType: pasteboardType) as? NSDictionary,
       let array = dataDictionary ["OBJECTS"] as? [NSDictionary],
       let X = dataDictionary ["X"] as? Int,
       let Y = dataDictionary ["Y"] as? Int {
      var newObjects = [MergerBoardInstance] ()
      for dictionary in array {
        if let object = makeManagedObjectFromDictionary (self.undoManager, dictionary) as? MergerBoardInstance {
          object.translate (xBy: X, yBy: Y)
          newObjects.append (object)
        }
      }
      var objects = self.mModel?.propval ?? []
      objects += newObjects
      self.mModel?.setProp (objects)
      self.mSelectedSet = Set (newObjects)
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  func canDelete () -> Bool {
    return self.selectedArray_property.propset.count > 0
  }

  //····················································································································

   func deleteSelectedObjects () {
    var objects = mModel?.propval ?? []
    for object in self.selectedArray_property.propset {
      if let idx = objects.index (of: object) {
        objects.remove(at: idx)
      }
    }
    mModel?.setProp (objects)
    self.mSelectedSet = Set ()
  }

  //····················································································································
  // MARK: -
  //····················································································································

  func selectAllObjects () {
    let objects = mModel?.propval ?? []
    self.mSelectedSet = Set (objects)
  }

  //····················································································································
  // BRING FORWARD
  // MARK: -
  //····················································································································

  var canBringForward_property = EBTransientProperty_Bool ()

  //····················································································································

  var canBringForward : Bool {
    let objects = mModel?.propval ?? []
    var result = (objects.count > 1) && (self.selectedArray_property.propset.count > 0)
    if result {
      let sortedIndexArray = self.sortedIndexArrayOfSelectedObjects ()
      result = sortedIndexArray.last! < (objects.count - 1)
    }
    return result
  }

  //····················································································································

  func bringForward () {
    var objects = mModel?.propval ?? []
    let sortedIndexArray = self.sortedIndexArrayOfSelectedObjects ()
    for idx in sortedIndexArray.reversed () {
       let object = objects [idx]
       objects.remove (at: idx)
       objects.insert (object, at:idx+1)
    }
    mModel?.setProp (objects)
  }

  //····················································································································
  // BRING TO FRONT
  // MARK: -
  //····················································································································

  var canBringToFront_property = EBTransientProperty_Bool ()

  //····················································································································

  var canBringToFront : Bool {
    let objects = mModel?.propval ?? []
    if (objects.count > 1) && (self.selectedArray_property.propset.count > 0) {
      let sortedIndexArray = self.sortedIndexArrayOfSelectedObjects ()
      var top = objects.count - 1
      for idx in sortedIndexArray.reversed () {
        if idx < top {
          return true
        }
        top -= 1
      }
    }
    return false
  }

  //····················································································································

  func bringToFront () {
    var objects = mModel?.propval ?? []
    let sortedIndexArray = self.sortedIndexArrayOfSelectedObjects ()
    for idx in sortedIndexArray {
      let object = objects [idx]
      objects.remove (at: idx)
      objects.append (object)
    }
    mModel?.setProp (objects)
  }

  //····················································································································
  // SEND BACKWARD
   // MARK: -
 //····················································································································

  var canSendBackward_property = EBTransientProperty_Bool ()

  //····················································································································

  var canSendBackward : Bool {
    let objects = mModel?.propval ?? []
    var result = (objects.count > 1) && (self.selectedArray_property.propset.count > 0)
    if result {
      let sortedIndexArray = self.sortedIndexArrayOfSelectedObjects ()
      result = sortedIndexArray [0] > 0
    }
    return result
  }

  //····················································································································

  func sendBackward () {
    var objects = mModel?.propval ?? []
    let sortedIndexArray = self.sortedIndexArrayOfSelectedObjects ()
    for idx in sortedIndexArray.reversed () {
      let object = objects [idx]
      objects.remove (at: idx)
      objects.insert (object, at:idx-1)
    }
    mModel?.setProp (objects)
  }
  
  //····················································································································
  // SEND TO BACK
  // MARK: -
  //····················································································································

  var canSendToBack_property = EBTransientProperty_Bool ()

  //····················································································································

  func sendToBack () {
    var objects = mModel?.propval ?? []
    let sortedIndexArray = self.sortedIndexArrayOfSelectedObjects ()
    for idx in sortedIndexArray.reversed () {
      let object = objects [idx]
      objects.remove (at: idx)
      objects.insert (object, at:0)
    }
    mModel?.setProp (objects)
  }

  //····················································································································

  var canSendToBack : Bool {
    let objects = mModel?.propval ?? []
    if (objects.count > 1) && (self.selectedArray_property.propset.count > 0) {
      let sortedIndexArray = self.sortedIndexArrayOfSelectedObjects ()
      var bottom = 0
      for idx in sortedIndexArray {
        if idx > bottom {
          return true
        }
        bottom += 1
      }
    }
    return false
  }

  //····················································································································
  // SNAP TO GRID
  // MARK: -
  //····················································································································

  func snapToGrid (_ inGrid : Int) {
    for object in self.selectedArray_property.propset {
      object.snapToGrid (inGrid)
    }
  }

  //····················································································································

  func canSnapToGrid (_ inGrid : Int) -> Bool {
    for object in self.selectedArray_property.propset {
      if object.canSnapToGrid (inGrid) {
        return true
      }
    }
    return false
  }


 //····················································································································
  // HORIZONTAL FLIP
  // MARK: -
  //····················································································································

  var canFlipHorizontally_property = EBTransientProperty_Bool ()

  //····················································································································

  func flipHorizontally () {
    for object in self.selectedArray_property.propset {
      object.flipHorizontally ()
    }
  }

  //····················································································································

  var canFlipHorizontally : Bool {
    for object in self.selectedArray_property.propset {
      if !object.canFlipHorizontally () {
        return false
      }
    }
    return self.selectedArray_property.propset.count > 0
  }

  //····················································································································
  // VERTICAL FLIP
  // MARK: -
  //····················································································································

  var canFlipVertically_property = EBTransientProperty_Bool ()

  //····················································································································

  func flipVertically () {
    for object in self.selectedArray_property.propset {
      object.flipVertically ()
    }
  }

  //····················································································································

  var canFlipVertically : Bool {
    for object in self.selectedArray_property.propset {
      if !object.canFlipVertically () {
        return false
      }
    }
    return self.selectedArray_property.propset.count > 0
  }

  //····················································································································
  // ROTATE 90 CLOCKWISE
  // MARK: -
  //····················································································································

  var canRotate90Clockwise_property = EBTransientProperty_Bool ()

  //····················································································································

  func rotate90Clockwise () {
    for object in self.selectedArray_property.propset {
      object.rotate90Clockwise ()
    }
  }

  //····················································································································

  var canRotate90Clockwise : Bool {
    for object in self.selectedArray_property.propset {
      if object.canRotate90Clockwise () {
        return true
      }
    }
    return false
  }

 //····················································································································
  // ROTATE 90 COUNTER CLOCKWISE
  // MARK: -
  //····················································································································

  var canRotate90CounterClockwise_property = EBTransientProperty_Bool ()

  //····················································································································

  func rotate90CounterClockwise () {
    for object in self.selectedArray_property.propset {
      object.rotate90CounterClockwise ()
    }
  }

  //····················································································································

  var canRotate90CounterClockwise : Bool {
    for object in self.selectedArray_property.propset {
      if object.canRotate90CounterClockwise () {
        return true
      }
    }
    return false
  }

  //····················································································································
  // MARK: -
  //····················································································································

  func addToSelection (objectsWithIndex inIndexes : [Int]) {
    let objects = mModel?.propval ?? []
    var newSelectedSet = self.selectedArray_property.propset
    for idx in inIndexes {
      let newSelectedObject = objects [idx]
      newSelectedSet.insert (newSelectedObject)
    }
    self.mSelectedSet = newSelectedSet
  }

  //····················································································································

  func removeFromSelection (objectWithIndex inIndex : Int) {
    let objects = mModel?.propval ?? []
    let object = objects [inIndex]
    var newSelectedSet = self.selectedArray_property.propset
    newSelectedSet.remove (object)
    self.mSelectedSet = newSelectedSet
  }

  //····················································································································

  func clearSelection () {
    self.mSelectedSet = []
  }

  //····················································································································

  func setSelection (objectsWithIndexes inIndexes : [Int]) {
    let objects = mModel?.propval ?? []
    var selectedObjects = [MergerBoardInstance] ()
    for index in inIndexes {
      let newSelectedObject = objects [index]
      selectedObjects.append (newSelectedObject)
    }
    self.mSelectedSet = Set (selectedObjects)
  }



  //····················································································································
  // MARK: -
  //  INSPECTOR
  //····················································································································

  private var mInspectorView : NSView? = nil
  private var mCurrentAttachedView : NSView? = nil
  private var mInspectorDictionary = [String : NSView] ()
  private var mInspectorObserver = EBOutletEvent ()

  //····················································································································

  func register (inspectorView : NSView?) {
    self.mInspectorView = inspectorView
    self.updateInspectorViews ()
  }

  //····················································································································

  func register (inspectorView : NSView?, forClass inClassName : String) {
    self.mInspectorDictionary [inClassName] = inspectorView
    self.updateInspectorViews ()
  }

  //····················································································································

  private func inspectorViewManagerStartsObservingSelection () {
    self.selectedArray_property.addEBObserver (self.mInspectorObserver)
    self.mInspectorObserver.eventCallBack = { [weak self] in self?.updateInspectorViews () }
  }

  //····················································································································

  private func inspectorViewManagerStopsObservingSelection () {
    self.selectedArray_property.removeEBObserver (self.mInspectorObserver)
    self.mInspectorObserver.eventCallBack = nil
  }

  //····················································································································

  private func updateInspectorViews () {
    if let inspectorView = self.mInspectorView {
    //--- Remove current attached view
      self.mCurrentAttachedView?.removeFromSuperview ()
    //--- Add the new attached view
      if self.selectedArray_property.propset.count == 0 {
        let tf = self.textField ("Empty Selection", inspectorView.frame)
        inspectorView.addSubview (tf)
        self.mCurrentAttachedView = tf
      }else{
        var classNames = Set <String> ()
        for object in self.selectedArray_property.propset {
          let className = String (describing: type (of: object))
          classNames.insert (className)
        }
        if classNames.count > 1 {
          let tf = self.textField ("Multiple Selection", inspectorView.frame)
          inspectorView.addSubview (tf)
          self.mCurrentAttachedView = tf
        }else if let selectionInspectorView = self.mInspectorDictionary [classNames.first!] {
          selectionInspectorView.frame = inspectorView.frame
          inspectorView.addSubview (selectionInspectorView)
          self.mCurrentAttachedView = selectionInspectorView
        }else{
          let tf = self.textField ("No Inspector for this Selection", inspectorView.frame)
          inspectorView.addSubview (tf)
          self.mCurrentAttachedView = tf
        }
      }
    }
  }

  //····················································································································

  private func textField (_ inString : String, _ inspectorFrame : NSRect) -> NSTextField {
    let textHeight : CGFloat = 30.0
    let r = NSRect (
      x: 0.0,
      y: inspectorFrame.origin.y + (inspectorFrame.size.height - textHeight) / 2.0,
      width: inspectorFrame.size.width,
      height: textHeight
    )
    let tf = NSTextField (frame: r)
    tf.alignment = .center
    tf.isBezeled = false
    tf.isBordered = false
    tf.drawsBackground = false
    tf.isEnabled = true
    tf.isEditable = false
    tf.autoresizingMask = [.width, .minYMargin, .maxYMargin]
    tf.stringValue = inString
    tf.font = NSFont.boldSystemFont (ofSize: NSFont.systemFontSize * 1.25)
    tf.textColor = NSColor.lightGray
    return tf
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


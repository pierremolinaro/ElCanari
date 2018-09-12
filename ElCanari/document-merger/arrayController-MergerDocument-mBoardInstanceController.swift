//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

private let DEBUG_EVENT = false

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ArrayController_MergerDocument_mBoardInstanceController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ArrayController_MergerDocument_mBoardInstanceController : EBObject, EBTableViewDelegate, EBTableViewDataSource, EBViewControllerProtocol {

  private var mModel : ToManyRelationship_MergerRoot_boardInstances? = nil

  let sortedArray_property = TransientArrayOf_MergerBoardInstance ()

  let selectedArray_property = TransientArrayOf_MergerBoardInstance ()

  private let mSelectedSet : SelectedSet_MergerDocument_mBoardInstanceController

  private var mTableViewDataSourceControllerArray = [DataSource_EBTableView_controller] ()
  private var mTableViewSelectionControllerArray = [Selection_EBTableView_controller] ()
  private var mTableViewArray = [EBTableView] ()
  private var mEBView : EBView? = nil
  private var mManagedObjectContext : EBManagedObjectContext? = nil

  private var mSortDescriptorArray = [(String, Bool)] () { // Key, ascending
    didSet {
      self.sortedArray_property.postEvent ()
      for tableView in mTableViewArray {
        var first = true
        for (key, ascending) in mSortDescriptorArray {
          if let column = sw34_tableColumn (tableView, withIdentifier: key) {
            tableView.setIndicatorImage (
              first ? (ascending ? sw34_imageNamed ("NSAscendingSortIndicator") : sw34_imageNamed ("NSDescendingSortIndicator")) : nil,
              in:column
            )
            first = false
          }
        }
      }
    }
  }

  private let allowsEmptySelection = true
  private let allowsMultipleSelection = true
  
  //····················································································································
  //    init
  //····················································································································

  override init () {
    mSelectedSet = SelectedSet_MergerDocument_mBoardInstanceController (
      allowsEmptySelection:allowsEmptySelection,
      allowsMultipleSelection:allowsMultipleSelection,
      sortedArray:self.sortedArray_property
    )
    super.init ()
    self.mSelectedSet.set (callBack: { [weak self] in self?.computeSelectionLayer () } )
  //--- Set selected array compute function
    setSelectedArrayComputeFunction ()
  //--- Set sorted array compute function
    setFilterAndSortFunction ()
  }

  //····················································································································
  //   SET SELECTION
  //····················································································································

  func setSelection (_ inObjects : [MergerBoardInstance]) {
    mSelectedSet.mSet = Set (inObjects)
  }

  //····················································································································
  //   GET SELECTED OBJECT SET
  //····················································································································

  var selectedSet : Set <MergerBoardInstance> { return mSelectedSet.mSet }

  //····················································································································

  private final func setSelectedArrayComputeFunction () {
    self.selectedArray_property.readModelFunction = {
      switch self.sortedArray_property.prop {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        var result = [MergerBoardInstance] ()
        for object in v {
          if self.mSelectedSet.mSet.contains (object) {
            result.append (object)
          }
        }
        return .single (result)
      }
    }
  }

  //····················································································································

  private final func setFilterAndSortFunction () {
    self.sortedArray_property.readModelFunction = {
      if let model = self.mModel {
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
  }

  //····················································································································
  //    Explorer
  //····················································································································

  final func addExplorer (name : String, y : inout CGFloat, view : NSView) {
  }

  //····················································································································
  //    bind_modelAndView
  //····················································································································

  func bind_modelAndView (model:ToManyRelationship_MergerRoot_boardInstances,
                         tableViewArray:[EBTableView],
                         ebView: EBView?,
                         managedObjectContext : EBManagedObjectContext?,
                         file:String, line:Int) {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
  //--- Add observers
    self.mModel = model
    self.mManagedObjectContext = managedObjectContext
    model.addEBObserver (self.sortedArray_property)
    self.sortedArray_property.addEBObserver (mSelectedSet)
    mSelectedSet.addEBObserver (self.selectedArray_property)
  //--- Add observed properties (for filtering and sorting)
  //--- Bind ebView
    mEBView = ebView
    self.mEBView?.set (controller: self)
  //--- Bind table views
    mTableViewArray = tableViewArray
    for tableView in tableViewArray {
      bind_tableView (tableView: tableView, file:file, line:line)
    }
  }

  //····················································································································
  //    unbind_modelAndView
  //····················································································································

  func unbind_modelAndView () {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    mModel?.removeEBObserver (self.sortedArray_property)
    self.sortedArray_property.removeEBObserver (mSelectedSet)
    mSelectedSet.removeEBObserver (self.selectedArray_property)
  //--- Remove observed properties (for filtering and sorting)
    for tvc in mTableViewDataSourceControllerArray {
      self.sortedArray_property.removeEBObserver (tvc)
    }
    for tvc in mTableViewSelectionControllerArray {
      mSelectedSet.removeEBObserver (tvc)
    }
  //---
    mTableViewArray = [EBTableView] ()
    self.selectedArray_property.readModelFunction = nil
    self.sortedArray_property.readModelFunction = nil
    mSelectedSet.mSet = Set ()
    mTableViewDataSourceControllerArray = []
    mTableViewSelectionControllerArray = []
    mModel = nil
 }

  //····················································································································
  //    bind_tableView
  //····················································································································

  private func bind_tableView (tableView:EBTableView,
                               file:String,
                               line:Int) {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    tableView.allowsEmptySelection = allowsEmptySelection
    tableView.allowsMultipleSelection = allowsMultipleSelection
    tableView.dataSource = self
    tableView.delegate = self
  //--- Set table view data source controller
    let dataSourceTableViewController = DataSource_EBTableView_controller (delegate:self, tableView:tableView)
    self.sortedArray_property.addEBObserver (dataSourceTableViewController)
    mTableViewDataSourceControllerArray.append (dataSourceTableViewController)
  //--- Set table view selection controller
    let selectionTableViewController = Selection_EBTableView_controller (delegate:self, tableView:tableView)
    mSelectedSet.addEBObserver (selectionTableViewController)
    mTableViewSelectionControllerArray.append (selectionTableViewController)
  //--- Set descriptors from first column of table view
    var newSortDescriptorArray = [(String, Bool)] ()
    for column in tableView.tableColumns {
      newSortDescriptorArray.append ((sw34_columnIdentifier (column), true)) // Ascending
    }
    mSortDescriptorArray = newSortDescriptorArray
  }

 //····················································································································

  func selectedObjectIndexSet () -> NSIndexSet {
    switch self.sortedArray_property.prop {
    case .empty, .multiple :
       return NSIndexSet ()
    case .single (let v) :
    //--- Dictionary of object indexes
      var objectDictionary = [MergerBoardInstance : Int] ()
      for (index, object) in v.enumerated () {
        objectDictionary [object] = index
      }
      let indexSet = NSMutableIndexSet ()
      for object in mSelectedSet.mSet {
        if let index = objectDictionary [object] {
          indexSet.add (index)
        }
      }
      return indexSet
    }
  }

  //····················································································································
  //    T A B L E V I E W    D A T A S O U R C E : numberOfRows (in:)
  //····················································································································

  func numberOfRows (in _ : NSTableView) -> Int {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    switch self.sortedArray_property.prop {
    case .empty, .multiple :
      return 0
    case .single (let v) :
      return v.count
    }
  }

  //····················································································································
  //    T A B L E V I E W    D E L E G A T E : tableViewSelectionDidChange:
  //····················································································································

  func tableViewSelectionDidChange (_ notification : Notification) {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    switch self.sortedArray_property.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      let tableView = notification.object as! EBTableView
      var newSelectedObjectSet = Set <MergerBoardInstance> ()
      for index in tableView.selectedRowIndexes {
        newSelectedObjectSet.insert (v.objectAtIndex (index, file: #file, line: #line))
      }
      mSelectedSet.mSet = newSelectedObjectSet
    }
  }

  //····················································································································
  //    T A B L E V I E W    D E L E G A T E : tableView:viewForTableColumn:mouseDownInHeaderOfTableColumn:
  //····················································································································

  func tableView (_ tableView: NSTableView, mouseDownInHeaderOf inTableColumn: NSTableColumn) {
    var newSortDescriptorArray = [(String, Bool)] ()
    for (columnName, ascending) in mSortDescriptorArray {
      if sw34_isColumn (inTableColumn, hasIdentifier: columnName) {
        newSortDescriptorArray.insert ((columnName, !ascending), at:0)
      }else{
        newSortDescriptorArray.append ((columnName, !ascending))
      }
    }
    mSortDescriptorArray = newSortDescriptorArray
  }

  //····················································································································
  //    T A B L E V I E W    D E L E G A T E : tableView:viewForTableColumn:row:
  //····················································································································

  func tableView (_ tableView : NSTableView,
                  viewFor inTableColumn: NSTableColumn?,
                  row inRowIndex: Int) -> NSView? {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    return nil 
  }
 
  //····················································································································
  //    select
  //····················································································································

  func select (object inObject: MergerBoardInstance) {
    if let model = mModel {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let objectArray) :
        if objectArray.contains (inObject) {
          var newSelectedObjectSet = Set <MergerBoardInstance> ()
          newSelectedObjectSet.insert (inObject)
          mSelectedSet.mSet = newSelectedObjectSet
        }
      }
    }
  }

  //····················································································································
  //    add
  //····················································································································

   @objc func add (_ sender : Any) {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    if let model = mModel, let owner = model.owner, let managedObjectContext = owner.managedObjectContext () {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let v) :
        let newObject : MergerBoardInstance = MergerBoardInstance (managedObjectContext:managedObjectContext)
        var array = v
        array.append (newObject)
      //--- New object is the selection
        var newSelectedObjectSet = Set <MergerBoardInstance> ()
        newSelectedObjectSet.insert (newObject)
        mSelectedSet.mSet = newSelectedObjectSet
        model.setProp (array)
      }
    }
  }

  //····················································································································
  //    remove
  //····················································································································

  @objc func remove (_ sender : Any) {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    if let model = mModel, let owner = model.owner, let managedObjectContext = owner.managedObjectContext () {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let model_prop) :
        switch self.sortedArray_property.prop {
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
          for object in mSelectedSet.mSet {
            managedObjectContext.removeManagedObject (object)
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
          for object in mSelectedSet.mSet {
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
          mSelectedSet.mSet = newSelectionSet
        //----------------------------------------- Set new object array
          model.setProp (newObjectArray)
        }
      }
    }
  }

  //····················································································································

  var objectCount : Int {
    let objects = mModel?.propval ?? []
    return objects.count
  }

  //····················································································································
  // Mouse Events
  //····················································································································

  private var mLastMouseDraggedLocation : NSPoint? = nil
  private var mSelectionRectangleOrigin : NSPoint? = nil

  //····················································································································

  func mouseDown (with inEvent: NSEvent, objectIndex inObjectIndex : Int) {
    mModel?.owner?.undoManager ()?.beginUndoGrouping ()
    mLastMouseDraggedLocation = mEBView?.convert (inEvent.locationInWindow, from:nil)
    let objects = mModel?.propval ?? []
    let controlKey = inEvent.modifierFlags.contains (.control)
    if !controlKey {
      let shiftKey = inEvent.modifierFlags.contains (.shift)
      let commandKey = inEvent.modifierFlags.contains (.command)
      if shiftKey { // Shift key extends selection
        if inObjectIndex >= 0 {
          var newSet = mSelectedSet.mSet
          newSet.insert (objects [inObjectIndex])
          mSelectedSet.mSet = newSet
        }
      }else if commandKey { // Command key toggles selection of object under click
        if inObjectIndex >= 0 {
          let object = objects [inObjectIndex]
          if mSelectedSet.mSet.contains (object) {
            var newSet = mSelectedSet.mSet
            newSet.remove (object)
            mSelectedSet.mSet = newSet
          }else{
            var newSet = mSelectedSet.mSet
            newSet.insert (object)
            mSelectedSet.mSet = newSet
          }
        }
      }else if inObjectIndex >= 0 {
        // NSLog ("Clicked objectindex \(inObjectIndex)")
        let clickedObject = objects [inObjectIndex]
        if !mSelectedSet.mSet.contains (clickedObject) {
          mSelectedSet.mSet = [clickedObject]
        }
      }else{ // Click outside an object : clear selection
        mSelectedSet.mSet = Set ()
        mSelectionRectangleOrigin = mLastMouseDraggedLocation
      }
    }
  }

  //····················································································································

   func mouseDragged (with inEvent : NSEvent) {
    if let boardView = mEBView {
      let mouseDraggedLocation = boardView.convert (inEvent.locationInWindow, from:nil)
      if let selectionRectangleOrigin = mSelectionRectangleOrigin {
        // NSLog ("Dragged")
        let xMin = min (selectionRectangleOrigin.x, mouseDraggedLocation.x)
        let yMin = min (selectionRectangleOrigin.y, mouseDraggedLocation.y)
        let xMax = max (selectionRectangleOrigin.x, mouseDraggedLocation.x)
        let yMax = max (selectionRectangleOrigin.y, mouseDraggedLocation.y)

        let r = NSRect (x:xMin, y:yMin, width:xMax-xMin, height:yMax-yMin)
        let shapes = EBShape ()
        let bp = NSBezierPath (rect: r)
        bp.lineWidth = 1.0
        shapes.append (shape: EBFilledBezierPathShape ([bp], NSColor.lightGray.withAlphaComponent (0.2)))
        shapes.append (shape: EBStrokeBezierPathShape ([bp], NSColor.lightGray))
        let layer = EBShapeLayer (shapes)
        mEBView?.selectionRectangleLayer = layer
        let indexSet = boardView.indexesOfObjects (intersecting:r)
        var newSelectedSet = Set <MergerBoardInstance> ()
        var objects = mModel?.propval ?? []
        for idx in indexSet {
          newSelectedSet.insert (objects [idx])
        }
        self.mSelectedSet.mSet = newSelectedSet
      }else if let lastMouseDraggedLocation = mLastMouseDraggedLocation {
        var translation = CGPoint (x: mouseDraggedLocation.x - lastMouseDraggedLocation.x, y:mouseDraggedLocation.y - lastMouseDraggedLocation.y)
        for object in mSelectedSet.mSet {
          let p = object.acceptedTranslation (by:translation)
          translation = p
        }
        for object in mSelectedSet.mSet {
          object.translate (xBy: translation.x, yBy:translation.y)
        }
        let mouseDraggedLocation = CGPoint (x: translation.x + lastMouseDraggedLocation.x, y: translation.y + lastMouseDraggedLocation.y)
        mLastMouseDraggedLocation = mouseDraggedLocation
      }
    }
  }

  //····················································································································

  func mouseUp (with inEvent : NSEvent) {
    mModel?.owner?.undoManager ()?.endUndoGrouping ()
    mLastMouseDraggedLocation = nil
    mSelectionRectangleOrigin = nil
    mEBView?.selectionRectangleLayer = nil
  }

  //····················································································································
  // key Events
  //····················································································································

  var arrowKeyMagnitude : CGFloat = 10.0
  var shiftArrowKeyMagnitude : CGFloat = 10.0

  //····················································································································

  func keyDown (with inEvent: NSEvent) {
    let amount : CGFloat = inEvent.modifierFlags.contains (.shift)
      ? self.shiftArrowKeyMagnitude
      : self.arrowKeyMagnitude
    ;
    for character in (inEvent.characters ?? "").unicodeScalars {
      switch (Int (character.value)) {
      case NSUpArrowFunctionKey :
        _ = wantsToTranslateSelection (byX: 0.0, byY:amount)
      case NSDownArrowFunctionKey :
        _ = wantsToTranslateSelection (byX: 0.0, byY:-amount)
      case NSLeftArrowFunctionKey :
        _ = wantsToTranslateSelection (byX: -amount, byY:0.0)
      case NSRightArrowFunctionKey :
        _ = wantsToTranslateSelection (byX: amount, byY:0.0)
      case 0x7F, NSDeleteFunctionKey :
        deleteSelection ()
      default :
        break
      }
    }
  }

  //····················································································································

  private func deleteSelection () {
    var objects = mModel?.propval ?? []
    for object in mSelectedSet.mSet {
      if let idx = objects.index (of: object) {
        objects.remove(at: idx)
        mManagedObjectContext?.removeManagedObject (object)
      }
    }
    mModel?.setProp (objects)
    mSelectedSet.mSet = Set ()
  }

  //····················································································································

  private func wantsToTranslateSelection (byX inDx: CGFloat, byY inDy: CGFloat) -> Bool {
    var accepted = true
    for object in mSelectedSet.mSet {
      if !object.acceptToTranslate (xBy: inDx, yBy:inDy) {
        accepted = false
        break
      }
    }
    if accepted {
      for object in mSelectedSet.mSet {
        object.translate (xBy: inDx, yBy:inDy)
      }
    }
    return accepted
  }

  //····················································································································
  //   Menu actions
  //····················································································································

  func selectAllObjects () {
    let objects = mModel?.propval ?? []
    mSelectedSet.mSet = Set (objects)
  }

  //····················································································································

  private final func sortedIndexArrayOfSelectedObjects () -> [Int] {
    var result = [Int] ()
    let objects = mModel?.propval ?? []
    for object in mSelectedSet.mSet {
      let idx = objects.index (of:object)!
      result.append (idx)
    }
    return result.sorted ()
  }

  //····················································································································
  // BRING FORWARD
  //····················································································································

  func canBringForward () -> Bool {
    let objects = mModel?.propval ?? []
    var result = (objects.count > 1) && (mSelectedSet.mSet.count > 0)
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
  //····················································································································

  func canBringToFront () -> Bool {
    let objects = mModel?.propval ?? []
    if (objects.count > 1) && (mSelectedSet.mSet.count > 0) {
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
  //····················································································································

  func canSendBackward () -> Bool {
    let objects = mModel?.propval ?? []
    var result = (objects.count > 1) && (mSelectedSet.mSet.count > 0)
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
  //····················································································································

  func canSendToBack () -> Bool {
    let objects = mModel?.propval ?? []
    if (objects.count > 1) && (mSelectedSet.mSet.count > 0) {
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
  //   Compute selection layer
  //····················································································································

  private func computeSelectionLayer () {
    let shapes = EBShape ()
    for object in mSelectedSet.mSet {
      if let shape = object.selectionLayer {
        shapes.append (shape: shape)
      }
    }
    mEBView?.objectSelectionLayer = shapes
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    SelectedSet_MergerDocument_mBoardInstanceController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class SelectedSet_MergerDocument_mBoardInstanceController : EBAbstractProperty {
  private let mAllowsEmptySelection : Bool
  private let mAllowsMultipleSelection : Bool
  private let mSortedArray : TransientArrayOf_MergerBoardInstance
  private var mObserverOfSelectionLayerOfSelectedObjects = EBOutletEvent ()
 
  //····················································································································

  init (allowsEmptySelection : Bool,
        allowsMultipleSelection : Bool,
        sortedArray : TransientArrayOf_MergerBoardInstance) {
    mAllowsMultipleSelection = allowsMultipleSelection
    mAllowsEmptySelection = allowsEmptySelection
    mSortedArray = sortedArray
    super.init ()
  }

  //····················································································································

  func set (callBack : @escaping () -> Void) {
    mObserverOfSelectionLayerOfSelectedObjects.eventCallBack = callBack
  }

  //····················································································································

  private var mPrivateSet = Set<MergerBoardInstance> () {
    didSet {
      if mPrivateSet != oldValue {
        postEvent ()
        let addedSet = mPrivateSet.subtracting (oldValue)
        for object in addedSet {
          object.selectionLayer_property.addEBObserver (mObserverOfSelectionLayerOfSelectedObjects)
        }
        let removedSet = oldValue.subtracting (mPrivateSet)
        for object in removedSet {
          object.selectionLayer_property.removeEBObserver (mObserverOfSelectionLayerOfSelectedObjects)
        }
        mObserverOfSelectionLayerOfSelectedObjects.postEvent ()
      }
    }
  }

  //····················································································································

  var mSet : Set<MergerBoardInstance> {
    set {
      var newSelectedSet = newValue
      switch mSortedArray.prop {
      case .empty, .multiple :
        break ;
      case .single (let sortedArray) :
        if !mAllowsEmptySelection && (newSelectedSet.count == 0) && (sortedArray.count > 0) {
          newSelectedSet = Set (arrayLiteral: sortedArray [0])
        }else if !mAllowsMultipleSelection && (newSelectedSet.count > 1) {
          newSelectedSet = Set (arrayLiteral: newSelectedSet.first!)
        }
      }
      mPrivateSet = newSelectedSet
    }
    get {
      return mPrivateSet
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


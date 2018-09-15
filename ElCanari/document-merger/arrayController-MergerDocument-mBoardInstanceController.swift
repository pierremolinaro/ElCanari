//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private let DEBUG_EVENT = false

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ArrayController_MergerDocument_mBoardInstanceController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ArrayController_MergerDocument_mBoardInstanceController : EBObject, EBTableViewDelegate, EBTableViewDataSource, EBViewControllerProtocol {

  private var mModel : ToManyRelationshipReadWrite_MergerBoardInstance? = nil

  let sortedArray_property = TransientArrayOf_MergerBoardInstance ()

  let selectedArray_property = TransientArrayOf_MergerBoardInstance ()

  private let mSelectedSet : SelectedSet_MergerDocument_mBoardInstanceController

  private var mTableViewDataSourceControllerArray = [DataSource_EBTableView_controller] ()
  private var mTableViewSelectionControllerArray = [Selection_EBTableView_controller] ()
  private var mTableViewArray = [EBTableView] ()
  private weak var mEBView : EBView? = nil
  private var mManagedObjectContext : EBManagedObjectContext? = nil

//--- Oberser for object display
  private var mObjectDisplayObserver = EBOutletEvent ()

  //····················································································································
  //    Sort Array
  //····················································································································

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

  var selectedGraphicObjectSet : Set <EBGraphicManagedObject> {
    return self.selectedSet
  }

  //····················································································································
  //    Undo manager
  //····················································································································

  var undoManager : EBUndoManager? {
    return self.mModel?.undoManager
  }

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
    self.mSelectedSet.set (callBack: { [weak self] in self?.computeSelectionShape () } )
  //--- Set selected array compute function
    setSelectedArrayComputeFunction ()
  //--- Set sorted array compute function
    setFilterAndSortFunction ()
  }

  //····················································································································

  func computeSelectionShape () {
    var selectionDisplayArray = [EBShape] ()
    for object in self.mSelectedSet.mSet {
      if let shape = object.selectionDisplay {
        selectionDisplayArray.append (shape)
      }else{
        selectionDisplayArray.append (EBShape ())
      }
    }
    mEBView?.updateSelectionShape (selectionDisplayArray)
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
    mEBView?.updateObjectDisplay (displayArray)
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

  var selectedIndexesSet : Set <Int> {
    var result = Set <Int> ()
    var idx = 0
    for object in self.mModel?.propval ?? [] {
      if mSelectedSet.mSet.contains (object) {
        result.insert (idx)
      }
      idx += 1
    }
    return result
  }

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

  func bind_modelAndView (model:ToManyRelationshipReadWrite_MergerBoardInstance,
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
    model.addEBObserverOf_objectDisplay (self.mObjectDisplayObserver)
    self.mObjectDisplayObserver.eventCallBack = { [weak self] in self?.updateObjectDisplay () }
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
    self.mModel?.removeEBObserverOf_objectDisplay (self.mObjectDisplayObserver)
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
    if let model = mModel, let managedObjectContext = self.mManagedObjectContext {
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
    if let model = mModel, let managedObjectContext = self.mManagedObjectContext {
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
  //  SELECTION OPERATIONS
  //····················································································································

  private func sortedIndexArrayOfSelectedObjects () -> [Int] {
    var result = [Int] ()
    let objects = mModel?.propval ?? []
    for object in mSelectedSet.mSet {
      let idx = objects.index (of:object)!
      result.append (idx)
    }
    return result.sorted ()
  }

  //····················································································································

   func deleteSelectionAndRemoveDeletedObjectsFromManagedObjectContext () {
    var objects = mModel?.propval ?? []
    for object in mSelectedSet.mSet {
      if let idx = objects.index (of: object) {
        objects.remove(at: idx)
        self.mManagedObjectContext?.removeManagedObject (object)
      }
    }
    mModel?.setProp (objects)
    mSelectedSet.mSet = Set ()
  }

  //····················································································································

  func selectAllObjects () {
    let objects = mModel?.propval ?? []
    mSelectedSet.mSet = Set (objects)
  }

  //····················································································································
  // BRING FORWARD
  //····················································································································

  var canBringForward : Bool {
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

  var canBringToFront : Bool {
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

  var canSendBackward : Bool {
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

  func addToSelection (objectsWithIndex inIndexes : [Int]) {
    let objects = mModel?.propval ?? []
    var newSelectedSet = self.mSelectedSet.mSet
    for idx in inIndexes {
      let newSelectedObject = objects [idx]
      newSelectedSet.insert (newSelectedObject)
    }
    self.mSelectedSet.mSet = newSelectedSet
  }

  //····················································································································

  func removeFromSelection (objectWithIndex inIndex : Int) {
    let objects = mModel?.propval ?? []
    let object = objects [inIndex]
    var newSelectedSet = self.mSelectedSet.mSet
    newSelectedSet.remove (object)
    self.mSelectedSet.mSet = newSelectedSet
  }

  //····················································································································

  func clearSelection () {
    self.mSelectedSet.mSet = []
  }

  //····················································································································

  func setSelection (objectWithIndex inIndex : Int) {
    let objects = mModel?.propval ?? []
    let newSelectedObject = objects [inIndex]
//    var newSelectedSet = self.mSelectedSet.mSet
//    newSelectedSet.insert (newSelectedObject)
    self.mSelectedSet.mSet = Set ([newSelectedObject])
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
          object.selectionDisplay_property.addEBObserver (mObserverOfSelectionLayerOfSelectedObjects)
        }
        let removedSet = oldValue.subtracting (mPrivateSet)
        for object in removedSet {
          object.selectionDisplay_property.removeEBObserver (mObserverOfSelectionLayerOfSelectedObjects)
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


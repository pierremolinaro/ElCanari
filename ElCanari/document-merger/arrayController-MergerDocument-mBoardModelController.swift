//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private let DEBUG_EVENT = false

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ArrayController_MergerDocument_mBoardModelController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ArrayController_MergerDocument_mBoardModelController : EBObject, EBTableViewDelegate, EBTableViewDataSource {
 
  //····················································································································
  //    init
  //····················································································································

  override init () {
    mSelectedSet = SelectedSet_MergerDocument_mBoardModelController (
      allowsEmptySelection:allowsEmptySelection,
      allowsMultipleSelection:allowsMultipleSelection,
      sortedArray:self.sortedArray_property
    )
    super.init ()
  //--- Set selected array compute function
    setSelectedArrayComputeFunction ()
  //--- Set sorted array compute function
    setFilterAndSortFunction ()
  }

  //····················································································································
  //    Sort Array
  //····················································································································

  let sortedArray_property = TransientArrayOf_BoardModel ()

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

  //····················································································································
  //    Attributes
  //····················································································································

  private let allowsEmptySelection = false
  private let allowsMultipleSelection = false
  
  //····················································································································
  //    Model
  //····················································································································

  private var mModel : ReadWriteArrayOf_BoardModel? = nil

  //····················································································································

  var objectCount : Int {
    let objects = mModel?.propval ?? []
    return objects.count
  }

  //····················································································································

  func bind_model (_ inModel:ReadWriteArrayOf_BoardModel) {
    self.mModel = inModel
    inModel.addEBObserver (self.sortedArray_property)
    self.sortedArray_property.addEBObserver (mSelectedSet)
    mSelectedSet.addEBObserver (self.selectedArray_property)
  //--- Add observed properties (for filtering and sorting)
    inModel.addEBObserverOf_name (self.sortedArray_property)
  }

  //····················································································································

  func unbind_model () {
    self.mModel?.removeEBObserver (self.sortedArray_property)
    self.sortedArray_property.removeEBObserver (mSelectedSet)
    self.mSelectedSet.removeEBObserver (self.selectedArray_property)
  //--- Remove observed properties (for filtering and sorting)
//    mModel?.removeEBObserverOf_name (self.sortedArray_property)
    for tvc in mTableViewDataSourceControllerArray {
      self.sortedArray_property.removeEBObserver (tvc)
    }
    for tvc in mTableViewSelectionControllerArray {
      mSelectedSet.removeEBObserver (tvc)
    }
  //---
    mSelectedSet.mSet = Set ()
    mModel = nil
 }

  //····················································································································
  //    Managed object context
  //····················································································································

  private var mManagedObjectContext : EBManagedObjectContext? = nil

  func setManagedObjectContext (_ inManagedObjectContext : EBManagedObjectContext?) {
    self.mManagedObjectContext = inManagedObjectContext
  }
  
  //····················································································································
  //    Undo manager
  //····················································································································

  var undoManager : EBUndoManager? {
    return self.mModel?.undoManager
  }

  //····················································································································
  //   SELECTION
  //····················································································································

  let selectedArray_property = TransientArrayOf_BoardModel ()

  //····················································································································

  private let mSelectedSet : SelectedSet_MergerDocument_mBoardModelController

  //····················································································································

  var selectedSet : Set <BoardModel> { return mSelectedSet.mSet }

  //····················································································································

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

  func setSelection (_ inObjects : [BoardModel]) {
    mSelectedSet.mSet = Set (inObjects)
  }

  //····················································································································

  private final func setSelectedArrayComputeFunction () {
    self.selectedArray_property.readModelFunction = { [weak self] in
      if let me = self {
        switch me.sortedArray_property.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var result = [BoardModel] ()
          for object in v {
            if me.mSelectedSet.mSet.contains (object) {
              result.append (object)
            }
          }
          return .single (result)
        }
      }else{
        return .empty
      }
    }
  }

  //····················································································································

  func isOrderedBefore (left : BoardModel, right : BoardModel) -> Bool {
    var order = ComparisonResult.orderedSame
    for (column, ascending) in mSortDescriptorArray {
      if column == "name" {
        order = compare_String (left: left.name_property, right:right.name_property)
      }
      if !ascending {
        switch order {
        case .orderedAscending : order = .orderedDescending
        case .orderedDescending : order = .orderedAscending
        case .orderedSame : break // Exit from switch
        }
      }
      if order != .orderedSame {
        break // Exit from for
      }
    }
    return order == .orderedAscending
  }

  //····················································································································

  private final func setFilterAndSortFunction () {
    self.sortedArray_property.readModelFunction = { [weak self] in
      if let me = self, let model = me.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let modelArray) :
          let sortedArray = modelArray.sorted (by: {me.isOrderedBefore (left: $0, right: $1)})
          return .single (sortedArray)
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
  //    bind_tableView
  //····················································································································

  private var mTableViewDataSourceControllerArray = [DataSource_EBTableView_controller] ()
  private var mTableViewSelectionControllerArray = [Selection_EBTableView_controller] ()
  private var mTableViewArray = [EBTableView] ()

  //····················································································································

  func bind_tableView (_ inTableView : EBTableView?, file : String, line : Int) {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    if let tableView = inTableView {
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
    //--- Check 'name' column
      if let column : NSTableColumn = sw34_tableColumn (tableView, withIdentifier: "name") {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (file: file, line: line, errorMessage:"\"name\" column view unknown")
      }
    //--- Set descriptors from first column of table view
      var newSortDescriptorArray = [(String, Bool)] ()
      for column in tableView.tableColumns {
        newSortDescriptorArray.append ((sw34_columnIdentifier (column), true)) // Ascending
      }
      mSortDescriptorArray = newSortDescriptorArray
      mTableViewArray.append (tableView)
    }
  }

  //····················································································································
 
  func unbind_tableView (_ inTableView : EBTableView?) {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    if let tableView = inTableView, let idx = self.mTableViewArray.index (of:tableView) {
      self.sortedArray_property.removeEBObserver (self.mTableViewDataSourceControllerArray [idx])
      self.mSelectedSet.removeEBObserver (self.mTableViewSelectionControllerArray [idx])
      self.mTableViewArray.remove (at: idx)
      self.mTableViewDataSourceControllerArray.remove (at: idx)
      self.mTableViewSelectionControllerArray.remove (at: idx)
    }
  }

 //····················································································································

  func selectedObjectIndexSet () -> NSIndexSet {
    switch self.sortedArray_property.prop {
    case .empty, .multiple :
       return NSIndexSet ()
    case .single (let v) :
    //--- Dictionary of object indexes
      var objectDictionary = [BoardModel : Int] ()
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
      var newSelectedObjectSet = Set <BoardModel> ()
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
    switch self.sortedArray_property.prop {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      #if swift(>=4)
        let result : NSTableCellView = tableView.makeView (withIdentifier: (inTableColumn?.identifier)!, owner:self) as! NSTableCellView
      #else
        let result : NSTableCellView = tableView.make (withIdentifier: (inTableColumn?.identifier)!, owner:self) as! NSTableCellView
      #endif
      if !reuseTableViewCells () {
        result.identifier = nil // So result cannot be reused, will be freed
      }
      let object = v.objectAtIndex (inRowIndex, file: #file, line: #line)
      if sw34_isColumn (inTableColumn, hasIdentifier: "name") {
        if let cell : EBTextField_TableViewCell = result as? EBTextField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_value ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_value (object.name_property, file: #file, line: #line, sendContinously:false)
        }
      }else{
        NSLog ("Unknown column '\(String (describing: inTableColumn?.identifier))'")
      }
      return result
    } 
  }
 
  //····················································································································
  //    select
  //····················································································································

  func select (object inObject: BoardModel) {
    if let model = mModel {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let objectArray) :
        if objectArray.contains (inObject) {
          var newSelectedObjectSet = Set <BoardModel> ()
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
        let newObject : BoardModel = BoardModel (managedObjectContext:managedObjectContext)
        var array = v
        array.append (newObject)
      //--- New object is the selection
        var newSelectedObjectSet = Set <BoardModel> ()
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
          var sortedObjectDictionary = [BoardModel : Int] ()
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
          var newSelectedObject : BoardModel? = nil
          if (newSelectionIndex >= 0) && (newSelectionIndex < sortedArray_prop.count) {
            newSelectedObject = sortedArray_prop [newSelectionIndex]
          }
        //----------------------------------------- Remove selected object
        //--- Dictionary of object absolute indexes
          var objectDictionary = [BoardModel : Int] ()
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
          var newSelectionSet = Set <BoardModel> ()
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

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    SelectedSet_MergerDocument_mBoardModelController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class SelectedSet_MergerDocument_mBoardModelController : EBAbstractProperty {
  private let mAllowsEmptySelection : Bool
  private let mAllowsMultipleSelection : Bool
  private let mSortedArray : TransientArrayOf_BoardModel
 
  //····················································································································

  init (allowsEmptySelection : Bool,
        allowsMultipleSelection : Bool,
        sortedArray : TransientArrayOf_BoardModel) {
    mAllowsMultipleSelection = allowsMultipleSelection
    mAllowsEmptySelection = allowsEmptySelection
    mSortedArray = sortedArray
    super.init ()
  }

  //····················································································································

  private var mPrivateSet = Set<BoardModel> () {
    didSet {
      if mPrivateSet != oldValue {
        postEvent ()
      }
    }
  }

  //····················································································································

  var mSet : Set<BoardModel> {
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


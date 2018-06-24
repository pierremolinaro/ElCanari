//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

private let DEBUG_EVENT = false

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    SelectedSet_PMArtworkDocument_mDataController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class SelectedSet_PMArtworkDocument_mDataController : EBAbstractProperty {
  private let mAllowsEmptySelection : Bool
  private let mAllowsMultipleSelection : Bool
  private let mSortedArray : TransientArrayOf_ArtworkFileGenerationParameters

  //····················································································································

  init (allowsEmptySelection : Bool,
        allowsMultipleSelection : Bool,
        sortedArray : TransientArrayOf_ArtworkFileGenerationParameters) {
    mAllowsMultipleSelection = allowsMultipleSelection
    mAllowsEmptySelection = allowsEmptySelection
    mSortedArray = sortedArray
    super.init ()
  }

  //····················································································································

  private var mPrivateSet = Set<ArtworkFileGenerationParameters> () {
    didSet {
      if mPrivateSet != oldValue {
        postEvent ()
      }
    }
  }

  //····················································································································

  var mSet : Set<ArtworkFileGenerationParameters> {
    set {
      var newSelectedSet = newValue
      switch mSortedArray.prop {
      case .noSelection, .multipleSelection :
        break ;
      case .singleSelection (let sortedArray) :
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
//    ArrayController_PMArtworkDocument_mDataController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ArrayController_PMArtworkDocument_mDataController : EBObject, EBTableViewDelegate, EBTableViewDataSource {

  private var mModel : ToManyRelationship_ArtworkRootEntity_fileGenerationParameterArray? = nil

  let sortedArray = TransientArrayOf_ArtworkFileGenerationParameters ()

  let selectedArray = TransientArrayOf_ArtworkFileGenerationParameters ()

  private let mSelectedSet : SelectedSet_PMArtworkDocument_mDataController

  private var mTableViewDataSourceControllerArray = [DataSource_EBTableView_controller] ()
  private var mTableViewSelectionControllerArray = [Selection_EBTableView_controller] ()
  private var mTableViewArray = [EBTableView] ()

  private var mSortDescriptorArray = [(String, Bool)] () { // Key, ascending
    didSet {
      sortedArray.postEvent ()
      for tableView in mTableViewArray {
        var first = true
        for (key, ascending) in mSortDescriptorArray {
          if let column = tableView.tableColumn (withIdentifier: key) {
            tableView.setIndicatorImage (
              first ? NSImage (named:ascending ? "NSAscendingSortIndicator" : "NSDescendingSortIndicator") : nil,
              in:column
            )
            first = false
          }
        }
      }
    }
  }

  private let allowsEmptySelection = false
  private let allowsMultipleSelection = false
  
  //····················································································································
  //    init
  //····················································································································

  override init () {
    mSelectedSet = SelectedSet_PMArtworkDocument_mDataController (
      allowsEmptySelection:allowsEmptySelection,
      allowsMultipleSelection:allowsMultipleSelection,
      sortedArray:sortedArray
    )
    super.init ()
  //--- Set selected array compute function
    setSelectedArrayComputeFunction ()
  //--- Set sorted array compute function
    setFilterAndSortFunction ()
  }

  //····················································································································

  private final func setSelectedArrayComputeFunction () {
    selectedArray.readModelFunction = {
      switch self.sortedArray.prop {
      case .noSelection :
        return .noSelection
      case .multipleSelection :
        return .multipleSelection
      case .singleSelection (let v) :
        var result = [ArtworkFileGenerationParameters] ()
        for object in v {
          if self.mSelectedSet.mSet.contains (object) {
            result.append (object)
          }
        }
        return .singleSelection (result)
      }
    }
  }

  //····················································································································

  func isOrderedBefore (left : ArtworkFileGenerationParameters, right : ArtworkFileGenerationParameters) -> Bool {
    var order = ComparisonResult.orderedSame
    for (column, ascending) in mSortDescriptorArray {
      if column == "name" {
        order = compare_String (left: left.name, right:right.name)
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
    sortedArray.readModelFunction = {
      if let model = self.mModel {
        switch model.prop {
        case .noSelection :
          return .noSelection
        case .multipleSelection :
          return .multipleSelection
        case .singleSelection (let modelArray) :
          let sortedArray = modelArray.sorted (by: {self.isOrderedBefore (left: $0, right: $1)})
          return .singleSelection (sortedArray)
        }
      }else{
        return .noSelection
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

  func bind_modelAndView (model:ToManyRelationship_ArtworkRootEntity_fileGenerationParameterArray, tableViewArray:[EBTableView], file:String, line:Int) {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
  //--- Add observers
    mModel = model
    model.addEBObserver (sortedArray)
    sortedArray.addEBObserver (mSelectedSet)
    mSelectedSet.addEBObserver (selectedArray)
  //--- Add observed properties (for filtering and sorting)
    model.addEBObserverOf_name (sortedArray)
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
    mModel?.removeEBObserver (sortedArray)
    sortedArray.removeEBObserver (mSelectedSet)
    mSelectedSet.removeEBObserver (selectedArray)
  //--- Remove observed properties (for filtering and sorting)
    mModel?.removeEBObserverOf_name (sortedArray)
    for tvc in mTableViewDataSourceControllerArray {
      sortedArray.removeEBObserver (tvc)
    }
    for tvc in mTableViewSelectionControllerArray {
      mSelectedSet.removeEBObserver (tvc)
    }
  //---
    mTableViewArray = [EBTableView] ()
    selectedArray.readModelFunction = nil
    sortedArray.readModelFunction = nil
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
    sortedArray.addEBObserver (dataSourceTableViewController)
    mTableViewDataSourceControllerArray.append (dataSourceTableViewController)
  //--- Set table view selection controller
    let selectionTableViewController = Selection_EBTableView_controller (delegate:self, tableView:tableView)
    mSelectedSet.addEBObserver (selectionTableViewController)
    mTableViewSelectionControllerArray.append (selectionTableViewController)
  //--- Check 'name' column
    if let column : NSTableColumn = tableView.tableColumn (withIdentifier: "name") {
      column.sortDescriptorPrototype = nil
    }else{
      presentErrorWindow (file: file, line: line, errorMessage:"\"name\" column view unknown")
    }
  //--- Set descriptors from first column of table view
    var newSortDescriptorArray = [(String, Bool)] ()
    for column in tableView.tableColumns {
      newSortDescriptorArray.append ((column.identifier, true)) // Ascending
    }
    mSortDescriptorArray = newSortDescriptorArray
  }

 //····················································································································

  func selectedObjectIndexSet () -> NSIndexSet {
    switch sortedArray.prop {
    case .noSelection, .multipleSelection :
       return NSIndexSet ()
    case .singleSelection (let v) :
    //--- Dictionary of object indexes
      var objectDictionary = [ArtworkFileGenerationParameters : Int] ()
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
    switch sortedArray.prop {
    case .noSelection, .multipleSelection :
      return 0
    case .singleSelection (let v) :
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
    switch sortedArray.prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      let tableView = notification.object as! EBTableView
      var newSelectedObjectSet = Set <ArtworkFileGenerationParameters> ()
      for index in tableView.selectedRowIndexes {
        newSelectedObjectSet.insert (v.objectAtIndex (index, file: #file, line: #line))
      }
      mSelectedSet.mSet = newSelectedObjectSet
    }
  }

  //····················································································································
  //    T A B L E V I E W    D E L E G A T E : tableView:viewForTableColumn:mouseDownInHeaderOfTableColumn:
  //····················································································································

  func tableView (_ tableView: NSTableView, mouseDownInHeaderOf tableColumn: NSTableColumn) {
    var newSortDescriptorArray = [(String, Bool)] ()
    let identifier : String = tableColumn.identifier
    for (column, ascending) in mSortDescriptorArray {
      if identifier == column {
        newSortDescriptorArray.insert ((column, !ascending), at:0)
      }else{
        newSortDescriptorArray.append ((column, !ascending))
      }
    }
    mSortDescriptorArray = newSortDescriptorArray
  }
  //····················································································································
  //    T A B L E V I E W    D E L E G A T E : tableView:viewForTableColumn:row:
  //····················································································································

  func tableView (_ tableView : NSTableView,
                  viewFor tableColumn: NSTableColumn?,
                  row inRowIndex: Int) -> NSView? {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    switch sortedArray.prop {
    case .noSelection, .multipleSelection :
      return nil
    case .singleSelection (let v) :
      let columnIdentifier = tableColumn!.identifier
      let result : NSTableCellView = tableView.make (withIdentifier: columnIdentifier, owner:self) as! NSTableCellView
      if !reuseTableViewCells () {
        result.identifier = nil // So result cannot be reused, will be freed
      }
      let object = v.objectAtIndex (inRowIndex, file: #file, line: #line)
      if columnIdentifier == "name" {
        if let cell : EBTextField_TableViewCell = result as? EBTextField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_value ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_value (object.name, file: #file, line: #line, sendContinously:false)
        }
      }else{
        NSLog ("Unknown column '\(columnIdentifier)'")
      }
      return result
    }
  }
 
  //····················································································································
  //    select
  //····················································································································

  func select (object inObject: ArtworkFileGenerationParameters) {
    if let model = mModel {
      switch model.prop {
      case .noSelection, .multipleSelection :
        break
      case .singleSelection (let objectArray) :
        if objectArray.contains (inObject) {
          var newSelectedObjectSet = Set <ArtworkFileGenerationParameters> ()
          newSelectedObjectSet.insert (inObject)
          mSelectedSet.mSet = newSelectedObjectSet
        }
      }
    }
  }

  //····················································································································
  //    add
  //····················································································································

   func add (_ sender : Any) {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    if let model = mModel, let owner = model.owner, let managedObjectContext = owner.managedObjectContext () {
      switch model.prop {
      case .noSelection, .multipleSelection :
        break
      case .singleSelection (let v) :
        let newObject : ArtworkFileGenerationParameters = ArtworkFileGenerationParameters (managedObjectContext:managedObjectContext)
        var array = v
        array.append (newObject)
      //--- New object is the selection
        var newSelectedObjectSet = Set <ArtworkFileGenerationParameters> ()
        newSelectedObjectSet.insert (newObject)
        mSelectedSet.mSet = newSelectedObjectSet
        model.setProp (array)
      }
    }
  }

  //····················································································································
  //    remove
  //····················································································································

  func remove (_ sender : Any) {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    if let model = mModel, let owner = model.owner, let managedObjectContext = owner.managedObjectContext () {
      switch model.prop {
      case .noSelection, .multipleSelection :
        break
      case .singleSelection (let model_prop) :
        switch sortedArray.prop {
        case .noSelection, .multipleSelection :
          break
        case .singleSelection (let sortedArray_prop) :
        //------------- Find the object to be selected after selected object removing
        //--- Dictionary of object sorted indexes
          var sortedObjectDictionary = [ArtworkFileGenerationParameters : Int] ()
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
          var newSelectedObject : ArtworkFileGenerationParameters? = nil
          if (newSelectionIndex >= 0) && (newSelectionIndex < sortedArray_prop.count) {
            newSelectedObject = sortedArray_prop [newSelectionIndex]
          }
        //----------------------------------------- Remove selected object
        //--- Dictionary of object absolute indexes
          var objectDictionary = [ArtworkFileGenerationParameters : Int] ()
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
          var newSelectionSet = Set <ArtworkFileGenerationParameters> ()
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


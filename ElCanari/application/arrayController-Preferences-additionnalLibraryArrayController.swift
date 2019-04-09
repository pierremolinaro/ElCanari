//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private let DEBUG_EVENT = false

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ArrayController_Preferences_additionnalLibraryArrayController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ArrayController_Preferences_additionnalLibraryArrayController : EBObject, EBTableViewDelegate, EBTableViewDataSource {
 
  //····················································································································
  //    init
  //····················································································································

  override init () {
    mSelectedSet = SelectedSet_Preferences_additionnalLibraryArrayController (
      allowsEmptySelection:allowsEmptySelection,
      allowsMultipleSelection:allowsMultipleSelection,
      sortedArray:self.sortedArray_property
    )
    super.init ()
  //--- Set selected array compute function
    self.setSelectedArrayComputeFunction ()
  //--- Set sorted array compute function
    self.setFilterAndSortFunction ()
  }

  //····················································································································
  //    Sort Array
  //····················································································································

  let sortedArray_property = TransientArrayOf_CanariLibraryEntry ()

  //····················································································································

  private var mSortDescriptorArray = [(String, Bool)] () { // Key, ascending
    didSet {
      self.sortedArray_property.postEvent ()
      for tableView in mTableViewArray {
        var first = true
        for (key, ascending) in mSortDescriptorArray {
          if let column = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: key)) {
            tableView.setIndicatorImage (
              first ? (ascending ? NSImage (named: NSImage.Name ("NSAscendingSortIndicator"))! : NSImage (named: NSImage.Name ("NSDescendingSortIndicator"))!) : nil,
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

  private var mModel : ReadWriteArrayOf_CanariLibraryEntry? = nil

  //····················································································································

  var objectCount : Int {
    let objects = self.mModel?.propval ?? []
    return objects.count
  }

  //····················································································································

  func bind_model (_ inModel:ReadWriteArrayOf_CanariLibraryEntry) {
    self.mModel = inModel
    inModel.addEBObserver (self.sortedArray_property)
    self.sortedArray_property.addEBObserver (mSelectedSet)
    self.mSelectedSet.addEBObserver (self.selectedArray_property)
  //--- Add observed properties (for filtering and sorting)
  }

  //····················································································································

  func unbind_model () {
    self.mModel?.removeEBObserver (self.sortedArray_property)
    self.sortedArray_property.removeEBObserver (mSelectedSet)
    self.mSelectedSet.removeEBObserver (self.selectedArray_property)
  //--- Remove observed properties (for filtering and sorting)
    for tvc in mTableViewDataSourceControllerArray {
      self.sortedArray_property.removeEBObserver (tvc)
    }
    for tvc in mTableViewSelectionControllerArray {
      self.mSelectedSet.removeEBObserver (tvc)
    }
  //---
    self.mSelectedSet.mSet = Set ()
    self.mModel = nil
 }

  //····················································································································
  //    Undo manager
  //····················································································································

  var ebUndoManager : EBUndoManager? {
    return self.mModel?.ebUndoManager
  }

  //····················································································································
  //   SELECTION
  //····················································································································

  let selectedArray_property = TransientArrayOf_CanariLibraryEntry ()

  //····················································································································

  var selectedArray_property_selection : EBSelection <[CanariLibraryEntry]> { return self.selectedArray_property.prop }
 
  //····················································································································

  private let mSelectedSet : SelectedSet_Preferences_additionnalLibraryArrayController

  //····················································································································

  var selectedSet : Set <CanariLibraryEntry> { return self.mSelectedSet.mSet }

  //····················································································································

  var selectedIndexesSet : Set <Int> {
    var result = Set <Int> ()
    var idx = 0
    for object in self.mModel?.propval ?? [] {
      if self.mSelectedSet.mSet.contains (object) {
        result.insert (idx)
      }
      idx += 1
    }
    return result
  }

  //····················································································································

  func setSelection (_ inObjects : [CanariLibraryEntry]) {
    self.mSelectedSet.mSet = Set (inObjects)
  }

  //····················································································································

  private final func setSelectedArrayComputeFunction () {
    self.selectedArray_property.mReadModelFunction = { [weak self] in
      if let me = self {
        switch me.sortedArray_property.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var result = [CanariLibraryEntry] ()
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

  private final func setFilterAndSortFunction () {
    self.sortedArray_property.mReadModelFunction = { [weak self] in
      if let me = self, let model = me.mModel {
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
      self.mTableViewDataSourceControllerArray.append (dataSourceTableViewController)
    //--- Set table view selection controller
      let selectionTableViewController = Selection_EBTableView_controller (delegate:self, tableView:tableView)
      self.mSelectedSet.addEBObserver (selectionTableViewController)
      self.mTableViewSelectionControllerArray.append (selectionTableViewController)
    //--- Check 'path' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "path")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (file, line, "\"path\" column view unknown")
      }
    //--- Check 'uses' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "uses")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (file, line, "\"uses\" column view unknown")
      }
    //--- Check 'status' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "status")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (file, line, "\"status\" column view unknown")
      }
    //--- Check 'reveal' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "reveal")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (file, line, "\"reveal\" column view unknown")
      }
    //--- Set descriptors from first column of table view
      var newSortDescriptorArray = [(String, Bool)] ()
      for column in tableView.tableColumns {
        newSortDescriptorArray.append ((column.identifier.rawValue, true)) // Ascending
      }
      self.mSortDescriptorArray = newSortDescriptorArray
      self.mTableViewArray.append (tableView)
    }
  }

  //····················································································································
 
  func unbind_tableView (_ inTableView : EBTableView?) {
    if DEBUG_EVENT {
      print ("\(#function)")
    }
    if let tableView = inTableView, let idx = self.mTableViewArray.firstIndex (of:tableView) {
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
      var objectDictionary = [CanariLibraryEntry : Int] ()
      for (index, object) in v.enumerated () {
        objectDictionary [object] = index
      }
      let indexSet = NSMutableIndexSet ()
      for object in self.mSelectedSet.mSet {
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
      var newSelectedObjectSet = Set <CanariLibraryEntry> ()
      for index in tableView.selectedRowIndexes {
        newSelectedObjectSet.insert (v [index])
      }
      self.mSelectedSet.mSet = newSelectedObjectSet
    }
  }

  //····················································································································
  //    T A B L E V I E W    D E L E G A T E : tableView:viewForTableColumn:mouseDownInHeaderOfTableColumn:
  //····················································································································

  func tableView (_ tableView: NSTableView, mouseDownInHeaderOf inTableColumn: NSTableColumn) {
    var newSortDescriptorArray = [(String, Bool)] ()
    for (columnName, ascending) in self.mSortDescriptorArray {
      if inTableColumn.identifier == NSUserInterfaceItemIdentifier (columnName) {
        newSortDescriptorArray.insert ((columnName, !ascending), at:0)
      }else{
        newSortDescriptorArray.append ((columnName, !ascending))
      }
    }
    self.mSortDescriptorArray = newSortDescriptorArray
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
      if let tableColumnIdentifier = inTableColumn?.identifier,
         let result = tableView.makeView (withIdentifier: tableColumnIdentifier, owner:self) as? NSTableCellView {
        if !reuseTableViewCells () {
          result.identifier = nil // So result cannot be reused, will be freed
        }
        let object = v [inRowIndex]
        if tableColumnIdentifier.rawValue == "path", let cell = result as? EBTextObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.mPath_property, file: #file, line: #line)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "uses", let cell = result as? EBSwitch_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_value ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_value (object.mUses_property, file: #file, line: #line)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "status", let cell = result as? EBImageObserverView_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_image ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_image (object.mStatusImage_property, file: #file, line: #line)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "reveal", let cell = result as? EBButton_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.target = nil
            cell?.mCellOutlet?.action = nil
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.target = object
          cell.mCellOutlet?.action = #selector (CanariLibraryEntry.revealLibraryInFinderAction(_:))
        }else{
          NSLog ("Unknown column '\(String (describing: inTableColumn?.identifier))'")
        }
        return result
      }else{
        return nil
      } 
    } 
  }
 
  //····················································································································
  //    select
  //····················································································································

  func select (object inObject: CanariLibraryEntry) {
    if let model = self.mModel {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let objectArray) :
        if objectArray.contains (inObject) {
          var newSelectedObjectSet = Set <CanariLibraryEntry> ()
          newSelectedObjectSet.insert (inObject)
          self.mSelectedSet.mSet = newSelectedObjectSet
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
    if let model = self.mModel {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let v) :
        let newObject = CanariLibraryEntry (self.ebUndoManager)
        var array = v
        array.append (newObject)
      //--- New object is the selection
        var newSelectedObjectSet = Set <CanariLibraryEntry> ()
        newSelectedObjectSet.insert (newObject)
        self.mSelectedSet.mSet = newSelectedObjectSet
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
    if let model = self.mModel {
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
          var sortedObjectDictionary = [CanariLibraryEntry : Int] ()
          for (index, object) in sortedArray_prop.enumerated () {
            sortedObjectDictionary [object] = index
          }
          var indexArrayOfSelectedObjects = [Int] ()
          for object in self.mSelectedSet.mSet {
            let index = sortedObjectDictionary [object]
            if let idx = index {
              indexArrayOfSelectedObjects.append (idx)
            }
          }
        //--- Sort
          indexArrayOfSelectedObjects.sort { $0 < $1 }
        //--- Find the first index of a non selected object
          var newSelectionIndex = indexArrayOfSelectedObjects [0] + 1
          for index in indexArrayOfSelectedObjects {
            if newSelectionIndex < index {
              break
            }else{
              newSelectionIndex = index + 1
            }
          }
          var newSelectedObject : CanariLibraryEntry? = nil
          if (newSelectionIndex >= 0) && (newSelectionIndex < sortedArray_prop.count) {
            newSelectedObject = sortedArray_prop [newSelectionIndex]
          }
        //----------------------------------------- Remove selected object
        //--- Dictionary of object absolute indexes
          var objectDictionary = [CanariLibraryEntry : Int] ()
          for (index, object) in model_prop.enumerated () {
            objectDictionary [object] = index
          }
        //--- Build selected objects index array
          var selectedObjectIndexArray = [Int] ()
          for object in self.mSelectedSet.mSet {
            let index = objectDictionary [object]
            if let idx = index {
              selectedObjectIndexArray.append (idx)
            }
          }
        //--- Sort in reverse order
          selectedObjectIndexArray.sort { $1 < $0 }
        //--- Remove objects, in reverse of order of their index
          var newObjectArray = model_prop
          for index in selectedObjectIndexArray {
            newObjectArray.remove (at: index)
          }
        //----------------------------------------- Set new selection
          var newSelectionSet = Set <CanariLibraryEntry> ()
          if let object = newSelectedObject {
            newSelectionSet.insert (object)
          }
          self.mSelectedSet.mSet = newSelectionSet
        //----------------------------------------- Set new object array
          model.setProp (newObjectArray)
        }
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    SelectedSet_Preferences_additionnalLibraryArrayController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class SelectedSet_Preferences_additionnalLibraryArrayController : EBAbstractProperty {
  private let mAllowsEmptySelection : Bool
  private let mAllowsMultipleSelection : Bool
  private let mSortedArray : TransientArrayOf_CanariLibraryEntry
 
  //····················································································································

  init (allowsEmptySelection : Bool,
        allowsMultipleSelection : Bool,
        sortedArray : TransientArrayOf_CanariLibraryEntry) {
    mAllowsMultipleSelection = allowsMultipleSelection
    mAllowsEmptySelection = allowsEmptySelection
    mSortedArray = sortedArray
    super.init ()
  }

  //····················································································································

  private var mPrivateSet = Set<CanariLibraryEntry> () {
    didSet {
      if self.mPrivateSet != oldValue {
        self.postEvent ()
      }
    }
  }

  //····················································································································

  var mSet : Set<CanariLibraryEntry> {
    set {
      var newSelectedSet = newValue
      switch self.mSortedArray.prop {
      case .empty, .multiple :
        break ;
      case .single (let sortedArray) :
        if !self.mAllowsEmptySelection && (newSelectedSet.count == 0) && (sortedArray.count > 0) {
          newSelectedSet = Set (arrayLiteral: sortedArray [0])
        }else if !mAllowsMultipleSelection && (newSelectedSet.count > 1) {
          newSelectedSet = Set (arrayLiteral: newSelectedSet.first!)
        }
      }
      self.mPrivateSet = newSelectedSet
    }
    get {
      return self.mPrivateSet
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


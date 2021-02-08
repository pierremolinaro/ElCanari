//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    Table View Controller ProjectDocument projectFontController
//----------------------------------------------------------------------------------------------------------------------

final class Controller_ProjectDocument_projectFontController : ReadOnlyAbstractGenericRelationshipProperty, EBTableViewDelegate, NSTableViewDataSource {
 
  //····················································································································
  //    Constant properties
  //····················································································································

  private let allowsEmptySelection = false
  private let allowsMultipleSelection = false

  //····················································································································
  //   Sorted Array
  //····················································································································

  let sortedArray_property = TransientArrayOf_FontInProject ()

  //····················································································································

  var sortedArray : [FontInProject] { return self.sortedArray_property.propval }

  //····················································································································

  private var mSortDescriptorArray = [NSSortDescriptor] ()

  //····················································································································
  //    Model
  //····················································································································

  private var mModel : ReadWriteArrayOf_FontInProject? = nil

  //····················································································································

  var objects : [FontInProject] {
    if let objects = self.mModel?.propval {
      return objects
    }else{
      return []
    }
  }

  //····················································································································

  var objectCount : Int {
    if let objects = self.mModel?.propval {
      return objects.count
    }else{
      return 0
    }
  }

  //····················································································································

  func bind_model (_ inModel : ReadWriteArrayOf_FontInProject, _ inUndoManager : EBUndoManager) {
  //--- Set sort descriptors
    self.mSortDescriptorArray = []    
    for tableView in self.mTableViewArray {
      for sortDescriptor in self.mSortDescriptorArray {
        if let key = sortDescriptor.key, let column = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: key)) {
          column.sortDescriptorPrototype = sortDescriptor
        }
      }
      tableView.sortDescriptors = self.mSortDescriptorArray
    }
  //---
    self.mModel = inModel
    self.mUndoManager = inUndoManager
    self.sortedArray_property.setDataProvider (
      inModel,
      sortCallback: nil,
      addSortObserversCallback: { (observer) in
      },
      removeSortObserversCallback: {(observer) in
      }
    )
    inModel.attachClient (self)
  }

  //····················································································································

  func unbind_model () {
    self.sortedArray_property.resetDataProvider ()
    self.mModel?.detachClient (self)
    for tvc in self.mTableViewDataSourceControllerArray {
      self.sortedArray_property.removeEBObserver (tvc)
    }
    for tvc in self.mTableViewSelectionControllerArray {
      self.mInternalSelectedArrayProperty.removeEBObserver (tvc)
    }
  //---
    self.mModel = nil
    self.mUndoManager = nil
 }

  //····················································································································
  //    Observing model change
  //····················································································································

  override func notifyModelDidChange () {
    super.notifyModelDidChange ()
    // NSLog ("self.sortedArray \(self.sortedArray.count)")
    let oldSelectionSet = self.selectedSet
    var newSelectedArray = [FontInProject] ()
    for object in self.sortedArray {
      if oldSelectionSet.contains (object) {
        newSelectedArray.append (object)
      }
    }
    self.mInternalSelectedArrayProperty.setProp (newSelectedArray)
  }

  //····················································································································
  //    Undo manager
  //····················································································································

  private var mUndoManager : EBUndoManager? = nil
  var ebUndoManager : EBUndoManager? { return self.mUndoManager }

  //····················································································································
  //   Selected Array
  //····················································································································

  private let mInternalSelectedArrayProperty = StandAloneArrayOf_FontInProject ()

  //····················································································································

  var selectedArray_property : ReadOnlyArrayOf_FontInProject { return self.mInternalSelectedArrayProperty }

  //····················································································································

  var selectedArray : [FontInProject] { return self.selectedArray_property.propval }

  //····················································································································

  var selectedArray_property_selection : EBSelection <[FontInProject]> { return self.selectedArray_property.selection }
 
  //····················································································································

  var selectedSet : Set <FontInProject> { return Set (self.selectedArray) }

  //····················································································································

  var selectedIndexesSet : Set <Int> {
    var result = Set <Int> ()
    var idx = 0
    for object in self.objects {
      if self.selectedSet.contains (object) {
        result.insert (idx)
      }
      idx += 1
    }
    return result
  }

  //····················································································································

  func setSelection (_ inObjects : [FontInProject]) {
    self.mInternalSelectedArrayProperty.setProp (inObjects)
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

  func bind_tableView (_ inTableView : EBTableView?) {
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
      self.mInternalSelectedArrayProperty.addEBObserver (selectionTableViewController)
      self.mTableViewSelectionControllerArray.append (selectionTableViewController)
    //--- Check 'name' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "name")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (#file, #line, "\"name\" column view unknown")
      }
    //--- Check 'version' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "version")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (#file, #line, "\"version\" column view unknown")
      }
    //--- Check 'size' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "size")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (#file, #line, "\"size\" column view unknown")
      }
    //--- Check 'texts' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "texts")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (#file, #line, "\"texts\" column view unknown")
      }
    //--- Check 'names' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "names")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (#file, #line, "\"names\" column view unknown")
      }
    //--- Check 'values' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "values")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (#file, #line, "\"values\" column view unknown")
      }
    //--- Set table view sort descriptors
      for sortDescriptor in self.mSortDescriptorArray {
        if let key = sortDescriptor.key, let column = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: key)) {
          column.sortDescriptorPrototype = sortDescriptor
        }
      }
      tableView.sortDescriptors = self.mSortDescriptorArray
    //---
      self.mTableViewArray.append (tableView)
    }
  }

  //····················································································································
 
  func unbind_tableView (_ inTableView : EBTableView?) {
    if let tableView = inTableView, let idx = self.mTableViewArray.firstIndex (of:tableView) {
      self.sortedArray_property.removeEBObserver (self.mTableViewDataSourceControllerArray [idx])
      self.mInternalSelectedArrayProperty.removeEBObserver (self.mTableViewSelectionControllerArray [idx])
      self.mTableViewArray.remove (at: idx)
      self.mTableViewDataSourceControllerArray.remove (at: idx)
      self.mTableViewSelectionControllerArray.remove (at: idx)
    }
  }

 //····················································································································

  func selectedObjectIndexSet () -> NSIndexSet {
    switch self.sortedArray_property.selection {
    case .empty, .multiple :
       return NSIndexSet ()
    case .single (let v) :
    //--- Dictionary of object indexes
      var objectDictionary = [FontInProject : Int] ()
      for (index, object) in v.enumerated () {
        objectDictionary [object] = index
      }
      let indexSet = NSMutableIndexSet ()
      for object in self.selectedSet {
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
    switch self.sortedArray_property.selection {
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
    switch self.sortedArray_property.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      let tableView = notification.object as! EBTableView
      var newSelectedObjects = [FontInProject] ()
      for index in tableView.selectedRowIndexes {
        newSelectedObjects.append (v [index])
      }
      self.mInternalSelectedArrayProperty.setProp (newSelectedObjects)
    }
  }

  //····················································································································
  //    T A B L E V I E W    S O U R C E : tableView:sortDescriptorsDidChange:
  //····················································································································

  func tableView (_ tableView : NSTableView, sortDescriptorsDidChange oldDescriptors : [NSSortDescriptor]) {
    self.mSortDescriptorArray = tableView.sortDescriptors
/*    for s in tableView.sortDescriptors {
      Swift.print ("key \(s.key), ascending \(s.ascending)")
    } */
    for tableView in self.mTableViewArray {
      tableView.sortDescriptors = self.mSortDescriptorArray
    }
    self.sortedArray_property.notifyModelDidChange ()
  }

  //····················································································································
  //    T A B L E V I E W    D E L E G A T E : tableView:viewForTableColumn:row:
  //····················································································································

  func tableView (_ tableView : NSTableView,
                  viewFor inTableColumn: NSTableColumn?,
                  row inRowIndex: Int) -> NSView? {
    switch self.sortedArray_property.selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      if let tableColumnIdentifier = inTableColumn?.identifier,
         let result = tableView.makeView (withIdentifier: tableColumnIdentifier, owner:self) as? NSTableCellView {
        if !reuseTableViewCells () {
          result.identifier = nil // So result cannot be reused, will be freed
        }
        let object = v [inRowIndex]
        if tableColumnIdentifier.rawValue == "name", let cell = result as? EBTextObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.mFontName_property)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "version", let cell = result as? EBTextObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.versionString_property)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "size", let cell = result as? EBTextObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.sizeString_property)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "texts", let cell = result as? EBIntObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.mTexts_property.count_property, autoFormatter:true)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "names", let cell = result as? EBIntObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.mComponentNames_property.count_property, autoFormatter:true)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "values", let cell = result as? EBIntObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.mComponentValues_property.count_property, autoFormatter:true)
          cell.update ()
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
  //   Select a single object
  //····················································································································

  func select (object inObject: FontInProject) {
    if let model = self.mModel {
      switch model.selection {
      case .empty, .multiple :
        break
      case .single (let objectArray) :
        if objectArray.contains (inObject) {
          self.mInternalSelectedArrayProperty.setProp ([inObject])
        }
      }
    }
  }

  //····················································································································
  //    add
  //····················································································································

   @objc func add (_ sender : Any) {
    if let model = self.mModel {
      switch model.selection {
      case .empty, .multiple :
        break
      case .single (let v) :
        let newObject = FontInProject (self.ebUndoManager)
        var array = v
        array.append (newObject)
        model.setProp (array)
      //--- New object is the selection
        self.mInternalSelectedArrayProperty.setProp ([newObject])
      }
    }
  }

  //····················································································································
  //    remove
  //····················································································································

  @objc func remove (_ sender : Any) {
    if let model = self.mModel {
      switch model.selection {
      case .empty, .multiple :
        break
      case .single (let model_prop) :
        switch self.sortedArray_property.selection {
        case .empty, .multiple :
          break
        case .single (let sortedArray_prop) :
        //------------- Find the object to be selected after selected object removing
        //--- Dictionary of object sorted indexes
          var sortedObjectDictionary = [FontInProject : Int] ()
          for (index, object) in sortedArray_prop.enumerated () {
            sortedObjectDictionary [object] = index
          }
          var indexArrayOfSelectedObjects = [Int] ()
          for object in self.selectedSet {
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
          var newSelectedObject : FontInProject? = nil
          if (newSelectionIndex >= 0) && (newSelectionIndex < sortedArray_prop.count) {
            newSelectedObject = sortedArray_prop [newSelectionIndex]
          }
        //----------------------------------------- Remove selected object
        //--- Dictionary of object absolute indexes
          var objectDictionary = [FontInProject : Int] ()
          for (index, object) in model_prop.enumerated () {
            objectDictionary [object] = index
          }
        //--- Build selected objects index array
          var selectedObjectIndexArray = [Int] ()
          for object in self.selectedSet {
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
        //----------------------------------------- Set new object array
          model.setProp (newObjectArray)
        //----------------------------------------- Set new selection
          if let object = newSelectedObject {
            self.mInternalSelectedArrayProperty.setProp ([object])
          }else{
            self.mInternalSelectedArrayProperty.setProp ([])
          }
        }
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

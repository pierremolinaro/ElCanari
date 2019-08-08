//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Table View Controller ProjectDocument componentController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_ProjectDocument_componentController : ReadOnlyAbstractGenericRelationshipProperty, EBTableViewDelegate, NSTableViewDataSource {
 
  //····················································································································
  //    Constant properties
  //····················································································································

  private let allowsEmptySelection = true
  private let allowsMultipleSelection = true

  //····················································································································
  //   Sorted Array
  //····················································································································

  let sortedArray_property = TransientArrayOf_ComponentInProject ()

  //····················································································································

  var sortedArray : [ComponentInProject] { return self.sortedArray_property.propval }

  //····················································································································

  private var mSortDescriptorArray = [NSSortDescriptor] ()

  //····················································································································
  //    Model
  //····················································································································

  private var mModel : ReadWriteArrayOf_ComponentInProject? = nil

  //····················································································································

  var objectCount : Int {
    let objects = self.mModel?.propval ?? []
    return objects.count
  }

  //····················································································································

  func bind_model (_ inModel : ReadWriteArrayOf_ComponentInProject, _ inUndoManager : EBUndoManager) {
  //--- Set sort descriptors
    self.mSortDescriptorArray = []    
    self.mSortDescriptorArray.append (NSSortDescriptor (key: "name", ascending: true))
    self.mSortDescriptorArray.append (NSSortDescriptor (key: "device", ascending: true))
    self.mSortDescriptorArray.append (NSSortDescriptor (key: "package", ascending: true))
    self.mSortDescriptorArray.append (NSSortDescriptor (key: "value", ascending: true))
    self.mSortDescriptorArray.append (NSSortDescriptor (key: "inSchematics", ascending: true))
    self.mSortDescriptorArray.append (NSSortDescriptor (key: "inBoard", ascending: true))
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
      sortCallback: { (left, right) in self.isOrderedBefore (left, right) },
      addSortObserversCallback: {(observer) in
        inModel.addEBObserverOf_componentIsPlacedInBoardString (observer)
        inModel.addEBObserverOf_componentName (observer)
        inModel.addEBObserverOf_deviceName (observer)
        inModel.addEBObserverOf_mComponentValue (observer)
        inModel.addEBObserverOf_placementInSchematic (observer)
        inModel.addEBObserverOf_selectedPackageName (observer)
      },
      removeSortObserversCallback: {(observer) in
        inModel.removeEBObserverOf_componentIsPlacedInBoardString (observer)
        inModel.removeEBObserverOf_componentName (observer)
        inModel.removeEBObserverOf_deviceName (observer)
        inModel.removeEBObserverOf_mComponentValue (observer)
        inModel.removeEBObserverOf_placementInSchematic (observer)
        inModel.removeEBObserverOf_selectedPackageName (observer)
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
    var newSelectedArray = [ComponentInProject] ()
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

  private let mInternalSelectedArrayProperty = StandAloneArrayOf_ComponentInProject ()

  //····················································································································

  var selectedArray_property : ReadOnlyArrayOf_ComponentInProject { return self.mInternalSelectedArrayProperty }

  //····················································································································

  var selectedArray : [ComponentInProject] { return self.selectedArray_property.propval }

  //····················································································································

  var selectedArray_property_selection : EBSelection <[ComponentInProject]> { return self.selectedArray_property.prop }
 
  //····················································································································

  var selectedSet : Set <ComponentInProject> { return Set (self.selectedArray) }

  //····················································································································

  var selectedIndexesSet : Set <Int> {
    var result = Set <Int> ()
    var idx = 0
    for object in self.mModel?.propval ?? [] {
      if self.selectedSet.contains (object) {
        result.insert (idx)
      }
      idx += 1
    }
    return result
  }

  //····················································································································

  func setSelection (_ inObjects : [ComponentInProject]) {
    self.mInternalSelectedArrayProperty.setProp (inObjects)
  }

  //····················································································································

  func isOrderedBefore (_ left : ComponentInProject, _ right : ComponentInProject) -> Bool {
    var order = ComparisonResult.orderedSame
    for sortDescriptor in self.mSortDescriptorArray {
      if sortDescriptor.key == "name" {
        order = compare_String_properties (left.componentName_property, right.componentName_property)
      }else if sortDescriptor.key == "device" {
        order = compare_String_properties (left.deviceName_property, right.deviceName_property)
      }else if sortDescriptor.key == "package" {
        order = compare_String_properties (left.selectedPackageName_property, right.selectedPackageName_property)
      }else if sortDescriptor.key == "value" {
        order = compare_String_properties (left.mComponentValue_property, right.mComponentValue_property)
      }else if sortDescriptor.key == "inSchematics" {
        order = compare_String_properties (left.placementInSchematic_property, right.placementInSchematic_property)
      }else if sortDescriptor.key == "inBoard" {
        order = compare_String_properties (left.componentIsPlacedInBoardString_property, right.componentIsPlacedInBoardString_property)
      }
      // Swift.print ("key \(sortDescriptor.key), ascending \(sortDescriptor.ascending), order \(order.rawValue)")
      if !sortDescriptor.ascending {
        switch order {
        case .orderedAscending : order = .orderedDescending
        case .orderedSame : ()
        case .orderedDescending : order = .orderedAscending
        }
      }
      if order != .orderedSame {
        break // Exit from for
      }
    }
    return order == .orderedAscending
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
        presentErrorWindow (file, line, "\"name\" column view unknown")
      }
    //--- Check 'device' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "device")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (file, line, "\"device\" column view unknown")
      }
    //--- Check 'package' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "package")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (file, line, "\"package\" column view unknown")
      }
    //--- Check 'value' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "value")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (file, line, "\"value\" column view unknown")
      }
    //--- Check 'inSchematics' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "inSchematics")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (file, line, "\"inSchematics\" column view unknown")
      }
    //--- Check 'inBoard' column
      if let column : NSTableColumn = tableView.tableColumn (withIdentifier: NSUserInterfaceItemIdentifier (rawValue: "inBoard")) {
        column.sortDescriptorPrototype = nil
      }else{
        presentErrorWindow (file, line, "\"inBoard\" column view unknown")
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
    switch self.sortedArray_property.prop {
    case .empty, .multiple :
       return NSIndexSet ()
    case .single (let v) :
    //--- Dictionary of object indexes
      var objectDictionary = [ComponentInProject : Int] ()
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
    switch self.sortedArray_property.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      let tableView = notification.object as! EBTableView
      var newSelectedObjects = [ComponentInProject] ()
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
        if tableColumnIdentifier.rawValue == "name", let cell = result as? EBTextObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.componentName_property, file: #file, line: #line)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "device", let cell = result as? EBTextObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.deviceName_property, file: #file, line: #line)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "package", let cell = result as? EBTextObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.selectedPackageName_property, file: #file, line: #line)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "value", let cell = result as? EBTextField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_value ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_value (object.mComponentValue_property, file: #file, line: #line, sendContinously:false)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "inSchematics", let cell = result as? EBTextObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.placementInSchematic_property, file: #file, line: #line)
          cell.update ()
        }else if tableColumnIdentifier.rawValue == "inBoard", let cell = result as? EBTextObserverField_TableViewCell {
          cell.mUnbindFunction = { [weak cell] in
            cell?.mCellOutlet?.unbind_valueObserver ()
          }
          cell.mUnbindFunction? ()
          cell.mCellOutlet?.bind_valueObserver (object.componentIsPlacedInBoardString_property, file: #file, line: #line)
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

  func select (object inObject: ComponentInProject) {
    if let model = self.mModel {
      switch model.prop {
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
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let v) :
        let newObject = ComponentInProject (self.ebUndoManager)
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
          var sortedObjectDictionary = [ComponentInProject : Int] ()
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
          var newSelectedObject : ComponentInProject? = nil
          if (newSelectionIndex >= 0) && (newSelectionIndex < sortedArray_prop.count) {
            newSelectedObject = sortedArray_prop [newSelectionIndex]
          }
        //----------------------------------------- Remove selected object
        //--- Dictionary of object absolute indexes
          var objectDictionary = [ComponentInProject : Int] ()
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Auto Layout Table View Controller AutoLayoutDeviceDocument documentationController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_AutoLayoutDeviceDocument_documentationController : BaseObject, AutoLayoutTableViewDelegate {

  //····················································································································
  //    Constant properties
  //····················································································································

  private let allowsEmptySelection = true
  private let allowsMultipleSelection = false

  //····················································································································
  //    Undo manager
  //····················································································································

  private var mUndoManager : EBUndoManager? = nil
  var ebUndoManager : EBUndoManager? { return self.mUndoManager }

  //····················································································································
  //   Sorted Array
  //····················································································································

  let sortedArray_property = TransientArrayOf_DeviceDocumentation ()

  //····················································································································

  private var mSortDescriptorArray = [(DeviceDocumentation, DeviceDocumentation) -> ComparisonResult] ()

  //····················································································································
  //    Model
  //····················································································································

  private var mModel : ReadWriteArrayOf_DeviceDocumentation? = nil

  //····················································································································

  final func bind_model (_ inModel : ReadWriteArrayOf_DeviceDocumentation, _ inUndoManager : EBUndoManager) {
    self.mModel = inModel
    self.mUndoManager = inUndoManager
    self.sortedArray_property.setDataProvider (
      inModel,
      sortCallback: { (left, right) in self.isOrderedBefore (left, right) },
      addSortObserversCallback: { (observer) in
        inModel.addEBObserverOf_fileSize (observer)
        inModel.addEBObserverOf_mFileName (observer)
      },
      removeSortObserversCallback: {(observer) in
        inModel.removeEBObserverOf_fileSize (observer)
        inModel.removeEBObserverOf_mFileName (observer)
      }
    )
  }

  //····················································································································

  final func isOrderedBefore (_ left : DeviceDocumentation, _ right : DeviceDocumentation) -> Bool {
    var order = ComparisonResult.orderedSame
    for sortDescriptor in self.mSortDescriptorArray.reversed () {
      order = sortDescriptor (left, right)
      if order != .orderedSame {
        break // Exit from for loop
      }
    }
    return order == .orderedAscending
  }

  //····················································································································

  final func unbind_model () {
    self.sortedArray_property.resetDataProvider ()
    self.mModel = nil
    self.mUndoManager = nil
 }

  //····················································································································
  //   Selected Array
  //····················································································································

  private let mInternalSelectedArrayProperty = StandAloneArrayOf_DeviceDocumentation ()

  //····················································································································

  var selectedArray_property : ReadOnlyArrayOf_DeviceDocumentation { return self.mInternalSelectedArrayProperty }

  //····················································································································

  var selectedArray : [DeviceDocumentation] { return self.selectedArray_property.propval }

  //····················································································································

  var selectedSet : Set <DeviceDocumentation> { return Set (self.selectedArray_property.propval) }

  //····················································································································

  var selectedIndexesSet : Set <Int> {
    let selectedObjectSet = self.selectedSet
    var result = Set <Int> ()
    var idx = 0
    for object in self.mModel?.propval ?? [] {
      if selectedObjectSet.contains (object) {
        result.insert (idx)
      }
      idx += 1
    }
    return result
  }

  //····················································································································

/*  func setSelection (_ inObjects : [DeviceDocumentation]) {
    self.mInternalSelectedArrayProperty.setProp (inObjects)
  } */

  //····················································································································
  //    Explorer
  //····················································································································

  final func addExplorer (name : String, y : inout CGFloat, view : NSView) {
  }

  //····················································································································
  //    sorted array observer
  //····················································································································

  private var mSortedArrayValuesObserver = EBOutletEvent ()

  //····················································································································

  override init () {
    super.init ()
    self.sortedArray_property.addEBObserver (self.mSortedArrayValuesObserver)
  //--- Observe 'mFileName' column
    self.sortedArray_property.addEBObserverOf_mFileName (self.mSortedArrayValuesObserver)
  //--- Observe 'fileSize' column
    self.sortedArray_property.addEBObserverOf_fileSize (self.mSortedArrayValuesObserver)
  //---
    self.mSortedArrayValuesObserver.mEventCallBack = { [weak self] in
       for tableView in self?.mTableViewArray ?? [] {
        tableView.sortAndReloadData ()
      }
    }
  }

  //····················································································································
  //    bind_tableView
  //····················································································································

  private var mTableViewArray = [AutoLayoutTableView] ()

  //····················································································································

  final func bind_tableView (_ inTableView : AutoLayoutTableView) {
    inTableView.configure (
      allowsEmptySelection: allowsEmptySelection,
      allowsMultipleSelection: allowsMultipleSelection,
      delegate: self
    )
  //--- Configure 'mFileName' column
    inTableView.addColumn_String (
      valueGetterDelegate: { [weak self] in return self?.sortedArray_property.propval [$0].mFileName },
      valueSetterDelegate: nil,
      sortDelegate: { [weak self] (ascending) in
        self?.mSortDescriptorArray.append ({ (_ left : DeviceDocumentation, _ right : DeviceDocumentation) in return compare_String_properties (left.mFileName_property, ascending, right.mFileName_property) })
      },
      title: "File Name",
      minWidth: 100,
      maxWidth: 4000,
      headerAlignment: .left,
      contentAlignment: .left
    )
  //--- Configure 'fileSize' column
    inTableView.addColumn_Int (
      valueGetterDelegate: { [weak self] in return self?.sortedArray_property.propval [$0].fileSize },
      valueSetterDelegate: nil,
      sortDelegate: { [weak self] (ascending) in
        self?.mSortDescriptorArray.append ({ (_ left : DeviceDocumentation, _ right : DeviceDocumentation) in return compare_Int_properties (left.fileSize_property, ascending, right.fileSize_property) })
      },
      title: "Size (bytes)",
      minWidth: 120,
      maxWidth: 120,
      headerAlignment: .right,
      contentAlignment: .right
    )
  //---
    self.mTableViewArray.append (inTableView)
  //---
//    inTableView.sortAndReloadData ()
  }

  //····················································································································

/*  final func unbind_tableView (_ inTableView : EBTableView?) {
    if let tableView = inTableView, let idx = self.mTableViewArray.firstIndex (of:tableView) {
      self.sortedArray_property.removeEBObserver (self.mTableViewDataSourceControllerArray [idx])
      self.mInternalSelectedArrayProperty.removeEBObserver (self.mTableViewSelectionControllerArray [idx])
      self.mTableViewArray.remove (at: idx)
      self.mTableViewDataSourceControllerArray.remove (at: idx)
      self.mTableViewSelectionControllerArray.remove (at: idx)
    }
  } */

  //····················································································································
  //   Select a single object
  //····················································································································

/*  func select (object inObject: DeviceDocumentation) {
    if let model = self.mModel {
      switch model.selection {
      case .empty, .multiple :
        ()
      case .single (let objectArray) :
        if objectArray.contains (inObject) {
          self.mInternalSelectedArrayProperty.setProp ([inObject])
        }
      }
    }
  } */

  //····················································································································


  //····················································································································
  // IMPLEMENTATION OF AutoLayoutTableViewDelegate
  //····················································································································

  final func rowCount () -> Int {
    return self.sortedArray_property.propval.count
  }

  //····················································································································

  final func tableViewSelectionDidChange (selectedRows inSelectedRows : IndexSet) {
    switch self.sortedArray_property.selection {
    case .empty, .multiple :
      ()
    case .single (let v) :
      var newSelectedObjects = [ DeviceDocumentation] ()
      for index in inSelectedRows {
        newSelectedObjects.append (v [index])
      }
      self.mInternalSelectedArrayProperty.setProp (newSelectedObjects)
    }
  }

  //····················································································································

  final func indexesOfSelectedObjects () -> IndexSet {
    var indexSet = IndexSet ()
    var idx = 0
    let selectedObjectSet = Set (self.selectedArray_property.propval)
    for object in self.sortedArray_property.propval {
      if selectedObjectSet.contains (object) {
        indexSet.insert (idx)
      }
      idx += 1
    }
    return indexSet
  }

  //····················································································································

  final func addEntry () {
    if let model = self.mModel {
      switch model.selection {
      case .empty, .multiple :
        ()
      case .single (let v) :
        let newObject = DeviceDocumentation (self.ebUndoManager)
        var array = v
        array.append (newObject)
        model.setProp (array)
      //--- New object is the selection
        self.mInternalSelectedArrayProperty.setProp ([newObject])
      }
    }
  }

  //····················································································································

  final func removeSelectedEntries () {
    if let model = self.mModel {
      switch model.selection {
      case .empty, .multiple :
        ()
      case .single (let model_prop) :
        switch self.sortedArray_property.selection {
        case .empty, .multiple :
          ()
        case .single (let sortedArray_prop) :
        //------------- Find the object to be selected after selected object removing
        //--- Dictionary of object sorted indexes
          var sortedObjectDictionary = [DeviceDocumentation : Int] ()
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
              ()
            }else{
              newSelectionIndex = index + 1
            }
          }
          var newSelectedObject : DeviceDocumentation? = nil
          if (newSelectionIndex >= 0) && (newSelectionIndex < sortedArray_prop.count) {
            newSelectedObject = sortedArray_prop [newSelectionIndex]
          }
        //----------------------------------------- Remove selected object
        //--- Dictionary of object absolute indexes
          var objectDictionary = [DeviceDocumentation : Int] ()
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

  func beginSorting () {
    self.mSortDescriptorArray.removeAll ()
  }

  //····················································································································

  func endSorting () {
    self.sortedArray_property.notifyModelDidChange ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

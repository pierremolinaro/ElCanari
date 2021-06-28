//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    Auto Layout Table View Controller AutoLayoutDeviceDocument symbolTypeController
//----------------------------------------------------------------------------------------------------------------------

final class Controller_AutoLayoutDeviceDocument_symbolTypeController : BaseObject, AutoLayoutTableViewDelegate {
 
  //····················································································································
  //    Constant properties
  //····················································································································

  private let allowsEmptySelection = false
  private let allowsMultipleSelection = false

  //····················································································································
  //    Undo manager
  //····················································································································

  private var mUndoManager : EBUndoManager? = nil
  var ebUndoManager : EBUndoManager? { return self.mUndoManager }

  //····················································································································
  //   Sorted Array
  //····················································································································

  let sortedArray_property = TransientArrayOf_SymbolTypeInDevice ()

  //····················································································································

  var sortedArray : [SymbolTypeInDevice] { return self.sortedArray_property.propval }

  //····················································································································

  private var mSortDescriptorArray = [(SymbolTypeInDevice, SymbolTypeInDevice) -> ComparisonResult] ()

  //····················································································································
  //    Model
  //····················································································································

  private var mModel : ReadWriteArrayOf_SymbolTypeInDevice? = nil

  //····················································································································

  final func bind_model (_ inModel : ReadWriteArrayOf_SymbolTypeInDevice, _ inUndoManager : EBUndoManager) {
    self.mModel = inModel
    self.mUndoManager = inUndoManager
    self.sortedArray_property.setDataProvider (
      inModel,
      sortCallback: { (left, right) in self.isOrderedBefore (left, right) },
      addSortObserversCallback: { (observer) in
        inModel.addEBObserverOf_instanceCount (observer)
        inModel.addEBObserverOf_mTypeName (observer)
        inModel.addEBObserverOf_versionString (observer)
      },
      removeSortObserversCallback: {(observer) in
        inModel.removeEBObserverOf_instanceCount (observer)
        inModel.removeEBObserverOf_mTypeName (observer)
        inModel.removeEBObserverOf_versionString (observer)
      }
    )
  }

  //····················································································································

  final func isOrderedBefore (_ left : SymbolTypeInDevice, _ right : SymbolTypeInDevice) -> Bool {
    var order = ComparisonResult.orderedSame
    for sortDescriptor in self.mSortDescriptorArray {
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

  private let mInternalSelectedArrayProperty = StandAloneArrayOf_SymbolTypeInDevice ()

  //····················································································································

  var selectedArray_property : ReadOnlyArrayOf_SymbolTypeInDevice { return self.mInternalSelectedArrayProperty }

  //····················································································································

  var selectedArray : [SymbolTypeInDevice] { return self.selectedArray_property.propval }
 
  //····················································································································

  var selectedSet : Set <SymbolTypeInDevice> { return Set (self.selectedArray) }

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

/*  func setSelection (_ inObjects : [SymbolTypeInDevice]) {
    self.mInternalSelectedArrayProperty.setProp (inObjects)
  } */

  //····················································································································
  //    Explorer
  //····················································································································

  final func addExplorer (name : String, y : inout CGFloat, view : NSView) {
  }

  //····················································································································
  //    bind_tableView
  //····················································································································

  private var mTableViewArray = [AutoLayoutTableView] ()
  private var mColumnObserver_versionString = EBOutletEvent ()
  private var mColumnObserver_instanceCount = EBOutletEvent ()
  private var mColumnObserver_mTypeName = EBOutletEvent ()
  private var mColumnObserver_documentSizeString = EBOutletEvent ()

  //····················································································································

  final func bind_tableView (_ inTableView : AutoLayoutTableView) {
    inTableView.configure (
      allowsEmptySelection: allowsEmptySelection,
      allowsMultipleSelection: allowsMultipleSelection,
      delegate: self
    )
  //--- Configure 'versionString' column
    inTableView.addColumn_String (
      valueGetterDelegate: { [weak self] in return self?.sortedArray [$0].versionString },
      valueSetterDelegate: nil,
      sortDelegate: { [weak self] (ascending) in
        self?.mSortDescriptorArray.append ({ (_ left : SymbolTypeInDevice, _ right : SymbolTypeInDevice) in return compare_String_properties (left.versionString_property, ascending, right.versionString_property) })
      },
      title: "Version",
      minWidth: 60,
      maxWidth: 60,
      headerAlignment: .center,
      contentAlignment: .center
    )
    self.mModel?.addEBObserverOf_versionString (self.mColumnObserver_versionString)
    self.mColumnObserver_versionString.mEventCallBack = { [weak self] in
      for tableView in self?.mTableViewArray ?? [] {
        tableView.sortAndReloadData ()
      }
    }
  //--- Configure 'instanceCount' column
    inTableView.addColumn_Int (
      valueGetterDelegate: { [weak self] in return self?.sortedArray [$0].instanceCount },
      valueSetterDelegate: nil,
      sortDelegate: { [weak self] (ascending) in
        self?.mSortDescriptorArray.append ({ (_ left : SymbolTypeInDevice, _ right : SymbolTypeInDevice) in return compare_Int_properties (left.instanceCount_property, ascending, right.instanceCount_property) })
      },
      title: "Instances",
      minWidth: 60,
      maxWidth: 60,
      headerAlignment: .center,
      contentAlignment: .center
    )
    self.mModel?.addEBObserverOf_instanceCount (self.mColumnObserver_instanceCount)
    self.mColumnObserver_instanceCount.mEventCallBack = { [weak self] in
      for tableView in self?.mTableViewArray ?? [] {
        tableView.sortAndReloadData ()
      }
    }
  //--- Configure 'mTypeName' column
    inTableView.addColumn_String (
      valueGetterDelegate: { [weak self] in return self?.sortedArray [$0].mTypeName },
      valueSetterDelegate: nil,
      sortDelegate: { [weak self] (ascending) in
        self?.mSortDescriptorArray.append ({ (_ left : SymbolTypeInDevice, _ right : SymbolTypeInDevice) in return compare_String_properties (left.mTypeName_property, ascending, right.mTypeName_property) })
      },
      title: "Symbol",
      minWidth: 100,
      maxWidth: 4000,
      headerAlignment: .left,
      contentAlignment: .left
    )
    self.mModel?.addEBObserverOf_mTypeName (self.mColumnObserver_mTypeName)
    self.mColumnObserver_mTypeName.mEventCallBack = { [weak self] in
      for tableView in self?.mTableViewArray ?? [] {
        tableView.sortAndReloadData ()
      }
    }
  //--- Configure 'documentSizeString' column
    inTableView.addColumn_String (
      valueGetterDelegate: { [weak self] in return self?.sortedArray [$0].documentSizeString },
      valueSetterDelegate: nil,
      sortDelegate: nil,
      title: "Size",
      minWidth: 100,
      maxWidth: 100,
      headerAlignment: .left,
      contentAlignment: .left
    )
    self.mModel?.addEBObserverOf_documentSizeString (self.mColumnObserver_documentSizeString)
    self.mColumnObserver_documentSizeString.mEventCallBack = { [weak self] in
      for tableView in self?.mTableViewArray ?? [] {
        tableView.sortAndReloadData ()
      }
    }
  //---
    self.mTableViewArray.append (inTableView)
  //---
    inTableView.sortAndReloadData ()
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

/*  func select (object inObject: SymbolTypeInDevice) {
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
    return self.sortedArray.count
  }

  //····················································································································

  final func tableViewSelectionDidChange (selectedRows inSelectedRows : IndexSet) {
    switch self.sortedArray_property.selection {
    case .empty, .multiple :
      ()
    case .single (let v) :
      var newSelectedObjects = [ SymbolTypeInDevice] ()
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
    let selectedObjectSet = Set (self.selectedArray)
    for object in self.sortedArray {
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
        let newObject = SymbolTypeInDevice (self.ebUndoManager)
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
          var sortedObjectDictionary = [SymbolTypeInDevice : Int] ()
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
          var newSelectedObject : SymbolTypeInDevice? = nil
          if (newSelectionIndex >= 0) && (newSelectionIndex < sortedArray_prop.count) {
            newSelectedObject = sortedArray_prop [newSelectionIndex]
          }
        //----------------------------------------- Remove selected object
        //--- Dictionary of object absolute indexes
          var objectDictionary = [SymbolTypeInDevice : Int] ()
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

//----------------------------------------------------------------------------------------------------------------------

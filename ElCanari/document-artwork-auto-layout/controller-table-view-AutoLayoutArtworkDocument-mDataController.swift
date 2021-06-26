//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    Auto Layout Table View Controller AutoLayoutArtworkDocument mDataController
//----------------------------------------------------------------------------------------------------------------------

final class Controller_AutoLayoutArtworkDocument_mDataController
                                       : ReadOnlyAbstractGenericRelationshipProperty, AutoLayoutTableViewDelegate {
 
  //····················································································································
  //    Constant properties
  //····················································································································

  private let allowsEmptySelection = false
  private let allowsMultipleSelection = false

  //····················································································································
  //   Sorted Array
  //····················································································································

  let sortedArray_property = TransientArrayOf_ArtworkFileGenerationParameters ()

  //····················································································································

  var sortedArray : [ArtworkFileGenerationParameters] { return self.sortedArray_property.propval }

  //····················································································································
  //    Model
  //····················································································································

  private var mModel : ReadWriteArrayOf_ArtworkFileGenerationParameters? = nil

  //····················································································································

  var objects : [ArtworkFileGenerationParameters] {
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

  final func bind_model (_ inModel : ReadWriteArrayOf_ArtworkFileGenerationParameters, _ inUndoManager : EBUndoManager) {
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

  final func unbind_model () {
    self.sortedArray_property.resetDataProvider ()
    self.mModel?.detachClient (self)
//    for tvc in self.mTableViewDataSourceControllerArray {
//      self.sortedArray_property.removeEBObserver (tvc)
//    }
//    for tvc in self.mTableViewSelectionControllerArray {
//      self.mInternalSelectedArrayProperty.removeEBObserver (tvc)
//    }
  //---
    self.mModel = nil
    self.mUndoManager = nil
 }

  //····················································································································
  //    Observing model change
  //····················································································································

  override func notifyModelDidChange () {
    super.notifyModelDidChange ()
 //   NSLog ("self.sortedArray \(self.sortedArray.count)")
//    let oldSelectionSet = self.selectedSet
//    var newSelectedArray = [ArtworkFileGenerationParameters] ()
//    for object in self.sortedArray {
//      if oldSelectionSet.contains (object) {
//        newSelectedArray.append (object)
//      }
//    }
//    self.mInternalSelectedArrayProperty.setProp (newSelectedArray)
    for tableView in self.mTableViewArray {
      tableView.reloadData ()
    }
  }

  //····················································································································
  //    Undo manager
  //····················································································································

  private var mUndoManager : EBUndoManager? = nil
  var ebUndoManager : EBUndoManager? { return self.mUndoManager }

  //····················································································································
  //   Selected Array
  //····················································································································

  private let mInternalSelectedArrayProperty = StandAloneArrayOf_ArtworkFileGenerationParameters ()

  //····················································································································

  var selectedArray_property : ReadOnlyArrayOf_ArtworkFileGenerationParameters { return self.mInternalSelectedArrayProperty }

  //····················································································································

  var selectedArray : [ArtworkFileGenerationParameters] { return self.selectedArray_property.propval }
 
  //····················································································································

  var selectedSet : Set <ArtworkFileGenerationParameters> { return Set (self.selectedArray) }

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

/*  func setSelection (_ inObjects : [ArtworkFileGenerationParameters]) {
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

  //····················································································································

  final func bind_tableView (_ inTableView : AutoLayoutTableView) {
    inTableView.configure (
      allowsEmptySelection: allowsEmptySelection,
      allowsMultipleSelection: allowsMultipleSelection,
      delegate: self
    )
  //--- Configure 'name' column
    _ = inTableView.addTextColumn (valueGetterDelegate: { [weak self] in return self?.sortedArray [$0].name },
                                   valueSetterDelegate: { [weak self] (inRowIndex, inNewValue) in self?.sortedArray [inRowIndex].name = inNewValue },
                                   title: "Name",
                                   headerAlignment: .left,
                                   contentAlignment: .left)
  //---
    self.mTableViewArray.append (inTableView)
  //---
    inTableView.reloadData ()
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

  func selectedObjectIndexSet () -> NSIndexSet {
    switch self.sortedArray_property.selection {
    case .empty, .multiple :
       return NSIndexSet ()
    case .single (let v) :
    //--- Dictionary of object indexes
      var objectDictionary = [ArtworkFileGenerationParameters : Int] ()
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
  //   Select a single object
  //····················································································································

  func select (object inObject: ArtworkFileGenerationParameters) {
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
        let newObject = ArtworkFileGenerationParameters (self.ebUndoManager)
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
          var sortedObjectDictionary = [ArtworkFileGenerationParameters : Int] ()
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
  // IMPLEMENTATION OF AutoLayoutTableViewDelegate
  //····················································································································

  func rowCount () -> Int {
    return self.sortedArray.count
  }

  //····················································································································

  func tableViewSelectionDidChange (selectedRows inSelectedRows : IndexSet) {
    switch self.sortedArray_property.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      var newSelectedObjects = [ArtworkFileGenerationParameters] ()
      for index in inSelectedRows {
        newSelectedObjects.append (v [index])
      }
      self.mInternalSelectedArrayProperty.setProp (newSelectedObjects)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

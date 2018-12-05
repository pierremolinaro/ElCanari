//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private let DEBUG_EVENT = false

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ArrayController_SymbolDocument_mSymbolObjectsController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ArrayController_SymbolDocument_mSymbolObjectsController : EBObject, EBViewControllerProtocol {
 
  //····················································································································
  //    init
  //····················································································································

  override init () {
    mSelectedSet = SelectedSet_SymbolDocument_mSymbolObjectsController (
      allowsEmptySelection: true,
      allowsMultipleSelection: true,
      sortedArray: self.objectArray_property
    )
    super.init ()
    self.mSelectedSet.set (callBack: { [weak self] in self?.computeSelectionShape () } )
  //--- Selection observers
    self.canBringForward_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canBringForward)
      }else{
        return .empty
      }
    }
    self.mSelectedSet.addEBObserver (self.canBringToFront_property)
  //---
    self.canBringToFront_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canBringToFront)
      }else{
        return .empty
      }
    }
    self.mSelectedSet.addEBObserver (self.canBringToFront_property)
  //---
    self.canSendBackward_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canSendBackward)
      }else{
        return .empty
      }
    }
    self.mSelectedSet.addEBObserver (self.canSendBackward_property)
  //---
    self.canSendToBack_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canSendToBack)
      }else{
        return .empty
      }
    }
    self.mSelectedSet.addEBObserver (self.canSendToBack_property)
  //---
    self.canSnapToGrid_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canSnapToGrid)
      }else{
        return .empty
      }
    }
    self.mSelectedSet.addEBObserver (self.canSnapToGrid_property)
  //---
    self.canFlipHorizontally_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canFlipHorizontally)
      }else{
        return .empty
      }
    }
    self.mSelectedSet.addEBObserver (self.canFlipHorizontally_property)
  //---
    self.canFlipVertically_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canFlipVertically)
      }else{
        return .empty
      }
    }
    self.mSelectedSet.addEBObserver (self.canFlipVertically_property)
  //---
    self.canRotate90Clockwise_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canRotate90Clockwise)
      }else{
        return .empty
      }
    }
    self.mSelectedSet.addEBObserver (self.canRotate90Clockwise_property)
  //---
    self.canRotate90CounterClockwise_property.readModelFunction = { [weak self] in
      if let me = self {
        return .single (me.canRotate90CounterClockwise)
      }else{
        return .empty
      }
    }
    self.mSelectedSet.addEBObserver (self.canRotate90CounterClockwise_property)
  //--- Set selected array compute function
    self.setSelectedArrayComputeFunction ()
  //--- Install object array read function
    self.objectArray_property.readModelFunction = { [weak self] in
      if let model = self?.mModel {
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
  //    Object Array
  //····················································································································

  let objectArray_property = TransientArrayOf_SymbolObject ()

  //····················································································································
  //    Model
  //····················································································································

  private var mModel : ReadWriteArrayOf_SymbolObject? = nil

  //····················································································································

  var objectCount : Int {
    let objects = mModel?.propval ?? []
    return objects.count
  }

  //····················································································································

  func bind_model (_ inModel:ReadWriteArrayOf_SymbolObject) {
    self.mModel = inModel
    inModel.addEBObserver (self.objectArray_property)
    self.objectArray_property.addEBObserver (mSelectedSet)
    mSelectedSet.addEBObserver (self.selectedArray_property)
    inModel.addEBObserverOf_objectDisplay (self.mObjectDisplayObserver)
    self.mObjectDisplayObserver.eventCallBack = { [weak self] in self?.updateObjectDisplay () }
  }

  //····················································································································

  func unbind_model () {
    self.mModel?.removeEBObserverOf_objectDisplay (self.mObjectDisplayObserver)
    self.mModel?.removeEBObserver (self.objectArray_property)
    self.objectArray_property.removeEBObserver (mSelectedSet)
    self.mSelectedSet.removeEBObserver (self.selectedArray_property)
  //---
    mSelectedSet.mSet = Set ()
    mModel = nil
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

  let selectedArray_property = TransientArrayOf_SymbolObject ()

  //····················································································································

  private let mSelectedSet : SelectedSet_SymbolDocument_mSymbolObjectsController

  //····················································································································

  var selectedSet : Set <SymbolObject> { return mSelectedSet.mSet }

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

  func setSelection (_ inObjects : [SymbolObject]) {
    mSelectedSet.mSet = Set (inObjects)
  }

  //····················································································································
  //  EBView interface
  //····················································································································

  private var mObjectDisplayObserver = EBOutletEvent ()
  private var mEBViews = [EBView] ()

  //····················································································································

  var selectedGraphicObjectSet : Set <EBGraphicManagedObject> {
    return self.selectedSet
  }

   //····················································································································

  var objectArray : [EBGraphicManagedObject] {
    return self.mModel?.propval ?? []
  }

 //····················································································································

  func computeSelectionShape () {
    var selectionDisplayArray = [EBShape] ()
    for object in self.mModel?.propval ?? [] {
      if !mSelectedSet.mSet.contains (object) {
        selectionDisplayArray.append (EBShape ())
      }else if let shape = object.selectionDisplay {
        selectionDisplayArray.append (shape)
      }else{
        selectionDisplayArray.append (EBShape ())
      }
    }
    for view in self.mEBViews {
      view.updateSelectionShape (selectionDisplayArray)
    }
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
    for view in self.mEBViews {
      view.updateObjectDisplay (displayArray)
    }
  }

  //····················································································································

  func bind_ebView (_ inEBView : EBView?) {
    if let ebView = inEBView {
      self.mEBViews.append (ebView)
      ebView.set (controller: self)
    }
  }

  //····················································································································

  func unbind_ebView (_ inEBView : EBView?) {
    if let ebView = inEBView, let idx = self.mEBViews.index (of: ebView) {
      ebView.updateObjectDisplay ([])
      ebView.updateSelectionShape ([])
      self.mEBViews.remove (at: idx)
    }
  }


  //····················································································································

  private final func setSelectedArrayComputeFunction () {
    self.selectedArray_property.readModelFunction = { [weak self] in
      if let me = self {
        switch me.objectArray_property.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var result = [SymbolObject] ()
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
  //    Explorer
  //····················································································································

  final func addExplorer (name : String, y : inout CGFloat, view : NSView) {
  }

  //····················································································································

  func selectedObjectIndexSet () -> NSIndexSet {
    switch self.objectArray_property.prop {
    case .empty, .multiple :
       return NSIndexSet ()
    case .single (let v) :
    //--- Dictionary of object indexes
      var objectDictionary = [SymbolObject : Int] ()
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
  //    select
  //····················································································································

  func select (object inObject: SymbolObject) {
    if let model = mModel {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let objectArray) :
        if objectArray.contains (inObject) {
          var newSelectedObjectSet = Set <SymbolObject> ()
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
    if let model = mModel {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let v) :
        let newObject = SymbolObject (self.undoManager, file: #file, #line)
        var array = v
        array.append (newObject)
      //--- New object is the selection
        var newSelectedObjectSet = Set <SymbolObject> ()
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
    if let model = mModel {
      switch model.prop {
      case .empty, .multiple :
        break
      case .single (let model_prop) :
        switch self.objectArray_property.prop {
        case .empty, .multiple :
          break
        case .single (let sortedArray_prop) :
        //------------- Find the object to be selected after selected object removing
        //--- Dictionary of object sorted indexes
          var sortedObjectDictionary = [SymbolObject : Int] ()
          for (index, object) in sortedArray_prop.enumerated () {
            sortedObjectDictionary [object] = index
          }
          var indexArrayOfSelectedObjects = [Int] ()
          for object in mSelectedSet.mSet {
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
          var newSelectedObject : SymbolObject? = nil
          if (newSelectionIndex >= 0) && (newSelectionIndex < sortedArray_prop.count) {
            newSelectedObject = sortedArray_prop [newSelectionIndex]
          }
        //----------------------------------------- Remove selected object
        //--- Dictionary of object absolute indexes
          var objectDictionary = [SymbolObject : Int] ()
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
          var newSelectionSet = Set <SymbolObject> ()
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
  // MARK: -
  //····················································································································

  func canCut (_ inPasteboardType : NSPasteboard.PasteboardType?) -> Bool {
    if (inPasteboardType == nil) || (self.mSelectedSet.mSet.count == 0) {
      return false
    }else{
      for object in self.mSelectedSet.mSet {
        if !object.canCopyAndPaste () {
          return false
        }
      }
      return true
    }
  }

  //····················································································································

  func canCopy (_ inPasteboardType : NSPasteboard.PasteboardType?) -> Bool {
    return self.canCut (inPasteboardType)
  }

   func copySelectedObjectsIntoPasteboard (_ inPasteboardType : NSPasteboard.PasteboardType?) {
    if let pasteboardType = inPasteboardType {
 //--- Declare pasteboard types
      let pb = NSPasteboard.general
//  NSMutableArray * ta = [NSMutableArray arrayWithCapacity:0] ;
//  [ta addObject:NSPDFPboardType HERE] ;
//  [ta addObject:NSTIFFPboardType HERE] ;
//  [ta addObject:mGeneralPasteboardPrivateObjectType] ;
      pb.declareTypes ([pasteboardType], owner:self)
    //--- Build private representation
      let indexArray = self.sortedIndexArrayOfSelectedObjects ()
      let objects = mModel?.propval ?? []
      var objectDictionaryArray = [NSDictionary] ()
      for idx in indexArray {
        let object = objects [idx]
        let d = NSMutableDictionary ()
        object.saveIntoDictionary (d)
        objectDictionaryArray.append (d)
      }
    //--- Copy private representation(s)
      let data = NSArchiver.archivedData (withRootObject: objectDictionaryArray)
      pb.setData (data, forType: pasteboardType)
    }
  }
  //····················································································································

  func canPaste (_ inPasteboardType : NSPasteboard.PasteboardType?) -> Bool {
    return false
  }

  //····················································································································

  func canDelete () -> Bool {
    return mSelectedSet.mSet.count > 0
  }

  //····················································································································

   func deleteSelectedObjects () {
    var objects = mModel?.propval ?? []
    for object in mSelectedSet.mSet {
      if let idx = objects.index (of: object) {
        objects.remove(at: idx)
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
  // MARK: -
  //····················································································································

  var canBringForward_property = EBTransientProperty_Bool ()

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
  // MARK: -
  //····················································································································

  var canBringToFront_property = EBTransientProperty_Bool ()

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
   // MARK: -
 //····················································································································

  var canSendBackward_property = EBTransientProperty_Bool ()

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
  // MARK: -
  //····················································································································

  var canSendToBack_property = EBTransientProperty_Bool ()

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
  // SNAP TO GRID
  // MARK: -
  //····················································································································

  var canSnapToGrid_property = EBTransientProperty_Bool ()

  //····················································································································

  func snapToGrid () {
    for object in self.mSelectedSet.mSet {
      object.snapToGrid ()
    }
  }

  //····················································································································

  var canSnapToGrid : Bool {
    for object in self.mSelectedSet.mSet {
      if object.canSnapToGrid () {
        return true
      }
    }
    return false
  }

 //····················································································································
  // HORIZONTAL FLIP
  // MARK: -
  //····················································································································

  var canFlipHorizontally_property = EBTransientProperty_Bool ()

  //····················································································································

  func flipHorizontally () {
    for object in self.mSelectedSet.mSet {
      object.flipHorizontally ()
    }
  }

  //····················································································································

  var canFlipHorizontally : Bool {
    for object in self.mSelectedSet.mSet {
      if !object.canFlipHorizontally () {
        return false
      }
    }
    return self.mSelectedSet.mSet.count > 0
  }

  //····················································································································
  // VERTICAL FLIP
  // MARK: -
  //····················································································································

  var canFlipVertically_property = EBTransientProperty_Bool ()

  //····················································································································

  func flipVertically () {
    for object in self.mSelectedSet.mSet {
      object.flipVertically ()
    }
  }

  //····················································································································

  var canFlipVertically : Bool {
    for object in self.mSelectedSet.mSet {
      if !object.canFlipVertically () {
        return false
      }
    }
    return self.mSelectedSet.mSet.count > 0
  }

  //····················································································································
  // ROTATE 90 CLOCKWISE
  // MARK: -
  //····················································································································

  var canRotate90Clockwise_property = EBTransientProperty_Bool ()

  //····················································································································

  func rotate90Clockwise () {
    for object in self.mSelectedSet.mSet {
      object.rotate90Clockwise ()
    }
  }

  //····················································································································

  var canRotate90Clockwise : Bool {
    for object in self.mSelectedSet.mSet {
      if object.canRotate90Clockwise () {
        return true
      }
    }
    return false
  }

 //····················································································································
  // ROTATE 90 COUNTER CLOCKWISE
  // MARK: -
  //····················································································································

  var canRotate90CounterClockwise_property = EBTransientProperty_Bool ()

  //····················································································································

  func rotate90CounterClockwise () {
    for object in self.mSelectedSet.mSet {
      object.rotate90CounterClockwise ()
    }
  }

  //····················································································································

  var canRotate90CounterClockwise : Bool {
    for object in self.mSelectedSet.mSet {
      if object.canRotate90CounterClockwise () {
        return true
      }
    }
    return false
  }

  //····················································································································
  // MARK: -
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

  func setSelection (objectsWithIndexes inIndexes : [Int]) {
    let objects = mModel?.propval ?? []
    var selectedObjects = [SymbolObject] ()
    for index in inIndexes {
      let newSelectedObject = objects [index]
      selectedObjects.append (newSelectedObject)
    }
    self.mSelectedSet.mSet = Set (selectedObjects)
  }



  //····················································································································
  //  INSPECTOR
  //····················································································································

  func register (inspectorView : NSView?) {
    self.mSelectedSet.register (inspectorView: inspectorView)
  }

  //····················································································································

  func register (inspectorView : NSView?, forClass inClassName : String) {
    self.mSelectedSet.register (inspectorView: inspectorView, forClass: inClassName)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    SelectedSet_SymbolDocument_mSymbolObjectsController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class SelectedSet_SymbolDocument_mSymbolObjectsController : EBAbstractProperty {
  private let mAllowsEmptySelection : Bool
  private let mAllowsMultipleSelection : Bool
  private let mSortedArray : TransientArrayOf_SymbolObject
  private var mObserverOfSelectionLayerOfSelectedObjects = EBOutletEvent ()
 
  //····················································································································

  init (allowsEmptySelection : Bool,
        allowsMultipleSelection : Bool,
        sortedArray : TransientArrayOf_SymbolObject) {
    mAllowsMultipleSelection = allowsMultipleSelection
    mAllowsEmptySelection = allowsEmptySelection
    mSortedArray = sortedArray
    super.init ()
  }

  //····················································································································

  func set (callBack : @escaping () -> Void) {
    self.mObserverOfSelectionLayerOfSelectedObjects.eventCallBack = callBack
  }

  //····················································································································

  private var mPrivateSet = Set<SymbolObject> () {
    didSet {
      if mPrivateSet != oldValue {
        postEvent ()
        self.updateInspectorViews ()
        let addedSet = mPrivateSet.subtracting (oldValue)
        for object in addedSet {
          object.selectionDisplay_property.addEBObserver (self.mObserverOfSelectionLayerOfSelectedObjects)
        }
        let removedSet = oldValue.subtracting (mPrivateSet)
        for object in removedSet {
          object.selectionDisplay_property.removeEBObserver (self.mObserverOfSelectionLayerOfSelectedObjects)
        }
        self.mObserverOfSelectionLayerOfSelectedObjects.postEvent ()
      }
    }
  }

  //····················································································································

  var mSet : Set<SymbolObject> {
    set {
      var newSelectedSet = newValue
      switch mSortedArray.prop {
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
      return mPrivateSet
    }
  }

  //····················································································································
  //  INSPECTOR VIEW
  //····················································································································

  private func textField (_ inString : String, _ inspectorFrame : NSRect) -> NSTextField {
    let textHeight : CGFloat = 30.0
    let r = NSRect (
      x: 0.0,
      y: inspectorFrame.origin.y + (inspectorFrame.size.height - textHeight) / 2.0,
      width: inspectorFrame.size.width,
      height: textHeight
    )
    let tf = NSTextField (frame: r)
    tf.alignment = .center
    tf.isBezeled = false
    tf.isBordered = false
    tf.drawsBackground = false
    tf.isEnabled = true
    tf.isEditable = false
    tf.autoresizingMask = [.width, .minYMargin, .maxYMargin]
    tf.stringValue = inString
    tf.font = NSFont.boldSystemFont (ofSize: NSFont.systemFontSize * 1.25)
    tf.textColor = NSColor.lightGray
    return tf
  }

  //····················································································································

  private var mInspectorView : NSView? = nil
  private var mCurrentAttachedView : NSView? = nil
  private var mInspectorDictionary = [String : NSView] ()

  //····················································································································

  func register (inspectorView : NSView?) {
    self.mInspectorView = inspectorView
    self.updateInspectorViews ()
  }

  //····················································································································

  func register (inspectorView : NSView?, forClass inClassName : String) {
    self.mInspectorDictionary [inClassName] = inspectorView
    self.updateInspectorViews ()
  }

  //····················································································································

  private func updateInspectorViews () {
    if let inspectorView = self.mInspectorView {
    //--- Remove current attached view
      self.mCurrentAttachedView?.removeFromSuperview ()
    //--- Add the new attached view
      if self.mSet.count == 0 {
        let tf = self.textField ("Empty Selection", inspectorView.frame)
        inspectorView.addSubview (tf)
        self.mCurrentAttachedView = tf
      }else{
        var classNames = Set <String> ()
        for object in self.mSet {
          let className = String (describing: type (of: object))
          classNames.insert (className)
        }
        if classNames.count > 1 {
          let tf = self.textField ("Multiple Selection", inspectorView.frame)
          inspectorView.addSubview (tf)
          self.mCurrentAttachedView = tf
        }else if let selectionInspectorView = self.mInspectorDictionary [classNames.first!] {
          selectionInspectorView.frame = inspectorView.frame
          inspectorView.addSubview (selectionInspectorView)
          self.mCurrentAttachedView = selectionInspectorView
        }else{
          let tf = self.textField ("No Inspector for this Selection", inspectorView.frame)
          inspectorView.addSubview (tf)
          self.mCurrentAttachedView = tf
        }
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


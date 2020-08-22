//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    EBTableView
//----------------------------------------------------------------------------------------------------------------------

class EBTableView : NSTableView, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    self.customInit ()
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    self.customInit ()
  }

  //····················································································································

  private final func customInit () {
    noteObjectAllocation (self)
    self.target = self
    self.doubleAction = #selector (self.doubleClickAction (_:))
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //   DELETE KEY
  //····················································································································

  private var mActionOnDeleteKey : Optional <() -> Void> = nil

  //····················································································································

  func set (actionOnDeleteKey inActionOnDeleteKey : Optional <() -> Void>) {
    self.mActionOnDeleteKey = inActionOnDeleteKey
  }

  //····················································································································

  final override func keyDown (with event: NSEvent) {
    let unicodeScalars = event.charactersIgnoringModifiers!.unicodeScalars
    let unicodeChar = unicodeScalars [unicodeScalars.startIndex].value
    // Swift.print ("\(Int (unicodeChar))")
    switch Int (unicodeChar) {
    case NSEvent.SpecialKey.delete.rawValue :
      self.mActionOnDeleteKey? ()
    default :
      super.keyDown (with: event)
    }
  }

  //····················································································································
  //   DOUBLE CLICK
  //····················································································································

  private var mActionOnDoubleClick : Optional <() -> Void> = nil

  //····················································································································

  func set (actionOnDoubleClick inActionOnDoubleClik : Optional <() -> Void>) {
    self.mActionOnDoubleClick = inActionOnDoubleClik
  }

  //····················································································································

  @objc private func doubleClickAction (_ inUnusedSender : Any?) {
    self.mActionOnDoubleClick? ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    EBTableViewDelegate
//----------------------------------------------------------------------------------------------------------------------

protocol EBTableViewDelegate : NSTableViewDelegate {
  func selectedObjectIndexSet () -> NSIndexSet
}

//----------------------------------------------------------------------------------------------------------------------
//   Controller DataSource_EBTableView_controller
//----------------------------------------------------------------------------------------------------------------------

final class DataSource_EBTableView_controller : EBOutletEvent {

  private let mDelegate : EBTableViewDelegate
  private let mTableView : EBTableView

  //····················································································································
  //   When init is called, table view delegate and data source are set
  //····················································································································

  init (delegate : EBTableViewDelegate, tableView : EBTableView) {
    mTableView = tableView
    mDelegate = delegate
    super.init ()
    self.mEventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
  //---------------- Get current selection, as reloadData may change it
    let newTableViewSelectionIndexSet = self.mDelegate.selectedObjectIndexSet ()
  //---------------- Reload data
    self.mTableView.reloadData ()
  //---------------- Update table view selection
    if !newTableViewSelectionIndexSet.isEqual (to: self.mTableView.selectedRowIndexes) {
      self.mTableView.selectRowIndexes (newTableViewSelectionIndexSet as IndexSet, byExtendingSelection:false)
    }
  //---------------- Scroll first selected row to visible
    if newTableViewSelectionIndexSet.count > 0 {
      self.mTableView.scrollRowToVisible (newTableViewSelectionIndexSet.firstIndex)
    }
  }

  //····················································································································
}

//----------------------------------------------------------------------------------------------------------------------
//   Controller Selection_EBTableView_controller
//----------------------------------------------------------------------------------------------------------------------

final class Selection_EBTableView_controller : EBOutletEvent {

  private let mDelegate : EBTableViewDelegate
  private let mTableView : EBTableView

  //····················································································································
  //   When init is called, table view delegate and data source are set
  //····················································································································

  init (delegate : EBTableViewDelegate, tableView : EBTableView) {
    mTableView = tableView
    mDelegate = delegate
    super.init ()
    self.mEventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
 //---------------- Update table view selection
    let newTableViewSelectionIndexSet = self.mDelegate.selectedObjectIndexSet ()
    if !newTableViewSelectionIndexSet.isEqual (to: self.mTableView.selectedRowIndexes) {
      self.mTableView.selectRowIndexes (newTableViewSelectionIndexSet as IndexSet, byExtendingSelection: false)
    }
  //---------------- Scroll first selected row to visible
    if newTableViewSelectionIndexSet.count > 0 {
      self.mTableView.scrollRowToVisible (newTableViewSelectionIndexSet.firstIndex)
    }
  }

  //····················································································································
}

//----------------------------------------------------------------------------------------------------------------------

//
//  view-ThreeStringArrayTableView.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 20/04/2019.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   ThreeStrings
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct ThreeStrings : Hashable {
  let mLeft : String
  let mCenter : String
  let mRight : String

  init (_ inLeft : String, _ inCenter : String, _ inRight : String) {
    mLeft = inLeft
    mCenter = inCenter
    mRight = inRight
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   ThreeStringArray
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias ThreeStringArray = [ThreeStrings]

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
// NOTE: ThreeStringArrayTableView is view based
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ThreeStringArrayTableView : EBTableView, NSTableViewDataSource, NSTableViewDelegate {

  //····················································································································

  override func awakeFromNib () {
    super.awakeFromNib ()
    self.dataSource = self // NSTableViewDataSource protocol
    self.delegate = self // NSTableViewDelegate protocol
  }

  //····················································································································
  //   NSTableViewDataSource protocol
  //····················································································································

  func numberOfRows (in tableView: NSTableView) -> Int {
    return self.mDataSource.count
  }

  //····················································································································

  func tableView (_ tableView: NSTableView, sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor]) {
    self.reloadDataSource (self.mDataSource)
  }

  //····················································································································
  //   NSTableViewDelegate protocol
  //····················································································································

  func tableView (_ tableView : NSTableView,
                  viewFor inTableColumn : NSTableColumn?,
                  row inRowIndex : Int) -> NSView? {
    var result : NSTableCellView? = nil
    if let columnIdentifier = inTableColumn?.identifier {
      result = tableView.makeView (withIdentifier: columnIdentifier, owner: self) as? NSTableCellView
      if !reuseTableViewCells () {
        result?.identifier = nil // So result cannot be reused, will be freed
      }
      if columnIdentifier.rawValue == "left" {
        result?.textField?.stringValue = self.mDataSource [inRowIndex].mLeft
      }else if columnIdentifier.rawValue == "center" {
        result?.textField?.stringValue = self.mDataSource [inRowIndex].mCenter
      }else if columnIdentifier.rawValue == "right" {
        result?.textField?.stringValue = self.mDataSource [inRowIndex].mRight
      }
    }
    return result
  }

  //····················································································································
  //  DATA SOURCE
  //····················································································································

  private var mDataSource = ThreeStringArray ()

  //····················································································································

  func reloadDataSource (_ inDataSource : ThreeStringArray) {
  //--- Note selected rows
    var selectedRowContents = Set <ThreeStrings> ()
    let currentSelectedRowIndexes = self.selectedRowIndexes
    for idx in currentSelectedRowIndexes {
      if idx < self.mDataSource.count {
        selectedRowContents.insert (self.mDataSource [idx])
      }
    }
  //--- Sort
    self.mDataSource = inDataSource
    for s in self.sortDescriptors.reversed () {
      if let key = s.key {
        if key == "left" {
          self.mDataSource.sort () { String.numericCompare ($0.mLeft, s.ascending, $1.mLeft) }
        }else if key == "center" {
          self.mDataSource.sort () { String.numericCompare ($0.mCenter, s.ascending, $1.mCenter) }
        }else if key == "right" {
          self.mDataSource.sort () { String.numericCompare ($0.mRight, s.ascending, $1.mRight) }
        }else{
          NSLog ("Key '\(key)' unknown in \(#file):\(#line)")
        }
      }
    }
    self.reloadData ()
  //--- Restore selection
    var newSelectedRowIndexes = IndexSet ()
    var idx = 0
    while idx < self.mDataSource.count {
      if selectedRowContents.contains (self.mDataSource [idx]) {
        newSelectedRowIndexes.insert (idx)
      }
      idx += 1
    }
    if (newSelectedRowIndexes.count == 0) && (self.mDataSource.count > 0) {
      if let firstIndex : Int = currentSelectedRowIndexes.first {
        if firstIndex < self.mDataSource.count {
          newSelectedRowIndexes.insert (firstIndex)
        }else{
          newSelectedRowIndexes.insert (self.mDataSource.count - 1)
        }
      }else{
        newSelectedRowIndexes.insert (0)
      }
    }
    self.selectRowIndexes (newSelectedRowIndexes, byExtendingSelection: false)
  }

  //····················································································································

  func update (from inModel : EBReadOnlyProperty_ThreeStringArray) {
    switch inModel.selection {
    case .empty, .multiple :
      self.reloadDataSource ([])
    case .single (let unconnectedPadArray) :
      self.reloadDataSource (unconnectedPadArray)
    }
  }

  //····················································································································
  //  $array binding
  //····················································································································

  private var mController : EBReadOnlyPropertyController? = nil

  //····················································································································

  final func bind_array (_ model : EBReadOnlyProperty_ThreeStringArray) {
    self.mController = EBReadOnlyPropertyController (
      observedObjects: [model],
      callBack: { [weak self] in self?.update (from: model) }
    )
  }

  //····················································································································

  final func unbind_array () {
    self.mController?.unregister ()
    self.mController = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

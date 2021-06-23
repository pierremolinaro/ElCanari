//
//  InternalAutoLayoutTableView.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 21/06/2021.
//
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
// https://stackoverflow.com/questions/11237622/using-autolayout-with-expanding-nstextviews
//----------------------------------------------------------------------------------------------------------------------

final class InternalAutoLayoutTableView : NSScrollView, EBUserClassNameProtocol, NSTableViewDataSource, NSTableViewDelegate {

  //····················································································································

  private let mTableView = NSTableView (frame: NSRect ())

  //····················································································································

  init (small inSmall : Bool) {
    super.init (frame: NSRect ())
    noteObjectAllocation (self)
    self.translatesAutoresizingMaskIntoConstraints = false

    self.mTableView.controlSize = inSmall ? .small : .regular
    self.mTableView.font = NSFont.systemFont (ofSize: NSFont.systemFontSize (for: self.mTableView.controlSize))
    self.mTableView.focusRingType = .none
    self.mTableView.delegate = self
    self.mTableView.dataSource = self
    self.mTableView.gridStyleMask = [.solidHorizontalGridLineMask, .solidVerticalGridLineMask]
    self.mTableView.usesAlternatingRowBackgroundColors = true
    self.mTableView.columnAutoresizingStyle = .firstColumnOnlyAutoresizingStyle

    self.hasVerticalScroller = true
    self.borderType = .bezelBorder
    self.documentView = self.mTableView
  }

  //····················································································································

  required init? (coder inCoder : NSCoder) {
    fatalError ("init(coder:) has not been implemented")
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  final func makeWidthExpandable () -> Self {
    self.setContentHuggingPriority (.init (rawValue: 1.0), for: .horizontal)
    return self
  }

  //····················································································································

  final func addTextObserverColumn (title inTitle : String,
                                    sort inSortCallBack : Optional < (_ inAscending : Bool) -> Void >,
                                    headerAlignment inHeaderAlignment : NSTextAlignment,
                                    contentAlignment inContentAlignment : NSTextAlignment,
                                    valueDelegate inCallBack : Optional < (_ inRow : Int) -> String >) -> Self {
    let column = InternalTextObserverTableColumn (
      withIdentifierNamed: String (self.mTableView.tableColumns.count),
      sort: inSortCallBack,
      contentAlignment: inContentAlignment,
      valueDelegate: inCallBack
    )
    column.title = inTitle
    column.headerCell.alignment = inHeaderAlignment
    column.minWidth = 60.0
    column.maxWidth = 400.0
    column.width = 60.0
  //--- Add Column
    self.mTableView.addTableColumn (column)
  //--- Update table view sort descriptors
    if let s = column.sortDescriptorPrototype {
      self.mTableView.sortDescriptors.append (s)
    }
  //---
    return self
  }

  //····················································································································

  final func addIntObserverColumn (title inTitle : String,
                                   sort inSortCallBack : Optional < (_ inAscending : Bool) -> Void >,
                                   headerAlignment inHeaderAlignment : NSTextAlignment,
                                   contentAlignment inContentAlignment : NSTextAlignment,
                                   valueDelegate inCallBack : Optional < (_ inRow : Int) -> Int >) -> Self {
    let column = InternalIntObserverTableColumn (
      withIdentifierNamed: String (self.mTableView.tableColumns.count),
      sort: inSortCallBack,
      contentAlignment: inContentAlignment,
      valueDelegate: inCallBack
    )
    column.title = inTitle
    column.headerCell.alignment = inHeaderAlignment
    column.minWidth = 80.0
    column.maxWidth = 400.0
    column.width = 80.0
  //--- Add Column
    self.mTableView.addTableColumn (column)
  //--- Update table view sort descriptors
    if let s = column.sortDescriptorPrototype {
      self.mTableView.sortDescriptors.append (s)
    }
  //---
    return self
  }

  //····················································································································

  func reloadData () {
    for sortDescriptor in self.mTableView.sortDescriptors.reversed () {
      for column in self.mTableView.tableColumns {
        if sortDescriptor === column.sortDescriptorPrototype, let c = column as? InternalTableColumn {
          c.mSortCallBack? (sortDescriptor.ascending)
        }
      }
    }
    self.mTableView.reloadData ()
  }

  //····················································································································
  //   NSTableViewDataSource protocol
  //····················································································································

  func setRowCountDelegate (_ inCallBack : Optional < () -> Int >) -> Self {
    self.mNumberOfRowsDelegate = inCallBack
    return self
  }

  //····················································································································

  private var mNumberOfRowsDelegate : Optional < () -> Int > = nil

  //····················································································································

  func numberOfRows (in tableView: NSTableView) -> Int {
    return self.mNumberOfRowsDelegate? () ?? 0
  }

  //····················································································································
  //   NSTableViewDelegate protocol
  //····················································································································

  func tableView (_ tableView : NSTableView,
                  viewFor inTableColumn : NSTableColumn?,
                  row inRowIndex : Int) -> NSView? {
    let result = NSTableCellView ()
    result.translatesAutoresizingMaskIntoConstraints = false
    let textField = NSTextField (frame: NSRect ())
    textField.translatesAutoresizingMaskIntoConstraints = false

    textField.isBezeled = false
    textField.isBordered = false
    textField.drawsBackground = false
    textField.isEditable = false
    textField.controlSize = .small
    textField.font = NSFont.systemFont (ofSize: NSFont.systemFontSize (for: textField.controlSize))

    if let tableColumn = inTableColumn as? InternalTableColumn {
      tableColumn.setValueToTextField (textField, inRowIndex)
    }else{
      textField.stringValue = "?col?"
    }

    result.addSubview (textField)
    result.textField = textField
    let c1 = NSLayoutConstraint (item: textField, attribute: .width, relatedBy: .equal, toItem: result, attribute: .width, multiplier: 1.0, constant: 0.0)
    let c2 = NSLayoutConstraint (item: textField, attribute: .height, relatedBy: .equal, toItem: result, attribute: .height, multiplier: 1.0, constant: 0.0)
    result.addConstraints ([c1, c2])
    return result
  }

  //····················································································································
  //    tableView:sortDescriptorsDidChange: NSTableViewDataSource delegate
  //····················································································································

  func tableView (_ tableView : NSTableView,
                  sortDescriptorsDidChange oldDescriptors : [NSSortDescriptor]) {
    self.reloadData ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

fileprivate class InternalTableColumn : NSTableColumn, EBUserClassNameProtocol {

  //····················································································································

  let mContentAlignment : NSTextAlignment
  let mSortCallBack : Optional < (_ inAscending : Bool) -> Void >

  //····················································································································
  // INIT
  //····················································································································

  init (withIdentifierNamed inName : String,
        sort inSortCallBack : Optional < (_ inAscending : Bool) -> Void >,
        contentAlignment inContentAlignment : NSTextAlignment) {
    self.mContentAlignment = inContentAlignment
    self.mSortCallBack = inSortCallBack
    super.init (identifier: NSUserInterfaceItemIdentifier (rawValue: inName))
    noteObjectAllocation (self)
    if inSortCallBack != nil {
      self.sortDescriptorPrototype = NSSortDescriptor (key: inName, ascending: true)
    }
  }

  //····················································································································

  required init (coder inCoder : NSCoder) {
    fatalError ("init(coder:) has not been implemented")
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  func setValueToTextField (_ inTextField : NSTextField, _ inRow : Int) { // Abstract value
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

fileprivate class InternalTextObserverTableColumn : InternalTableColumn {

  //····················································································································

  private let mValueDelegate : Optional < (_ inRow : Int) -> String >

  //····················································································································
  // INIT
  //····················································································································

  init (withIdentifierNamed inName : String,
        sort inSortCallBack : Optional < (_ inAscending : Bool) -> Void >,
        contentAlignment inContentAlignment : NSTextAlignment,
        valueDelegate inCallBack : Optional < (_ inRow : Int) -> String >) {
    self.mValueDelegate = inCallBack
    super.init (withIdentifierNamed: inName, sort: inSortCallBack, contentAlignment: inContentAlignment)
  }

  //····················································································································

  required init (coder inCoder : NSCoder) {
    fatalError ("init(coder:) has not been implemented")
  }

  //····················································································································

  override func setValueToTextField (_ inTextField : NSTextField, _ inRow : Int) { // Abstract value
    inTextField.alignment = self.mContentAlignment
    inTextField.stringValue = self.mValueDelegate? (inRow) ?? ""
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

fileprivate class InternalIntObserverTableColumn : InternalTableColumn {

  //····················································································································

  private let mValueDelegate : Optional < (_ inRow : Int) -> Int >
  private let mNumberFormatter = NumberFormatter ()

  //····················································································································
  // INIT
  //····················································································································

  init (withIdentifierNamed inName : String,
        sort inSortCallBack : Optional < (_ inAscending : Bool) -> Void >,
        contentAlignment inContentAlignment : NSTextAlignment,
        valueDelegate inCallBack : Optional < (_ inRow : Int) -> Int >) {
    self.mValueDelegate = inCallBack
    super.init (withIdentifierNamed: inName, sort: inSortCallBack, contentAlignment: inContentAlignment)
  //--- Configure number formatter
    self.mNumberFormatter.formatterBehavior = .behavior10_4
    self.mNumberFormatter.numberStyle = .decimal
    self.mNumberFormatter.localizesFormat = true
    self.mNumberFormatter.minimumFractionDigits = 0
    self.mNumberFormatter.maximumFractionDigits = 0
    self.mNumberFormatter.isLenient = true
  }

  //····················································································································

  required init (coder inCoder : NSCoder) {
    fatalError ("init(coder:) has not been implemented")
  }

  //····················································································································

  override func setValueToTextField (_ inTextField : NSTextField, _ inRow : Int) { // Abstract value
    inTextField.alignment = self.mContentAlignment
    inTextField.integerValue = self.mValueDelegate? (inRow) ?? -1
  //--- Number formatter
    inTextField.formatter = self.mNumberFormatter
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
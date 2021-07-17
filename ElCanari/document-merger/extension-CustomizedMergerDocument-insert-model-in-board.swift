//
//  extension-CustomizedMergerDocument-insert-model-in-board.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 06/07/2018.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension CustomizedMergerDocument {

  //····················································································································

  func buildInsertModelInBoardMenuBuilder (_ mouseDownLocationInView : CanariPoint) -> NSMenu {
    let menu = NSMenu ()
    let allModels = self.mBoardModelController.objects
    if allModels.count > 0 {
      for model in allModels {
        menu.addItem (withTitle: "Insert '\(model.name)'", action: #selector (Self.insertModelInBoardAction (_:)), keyEquivalent: "")
        let lastItem = menu.item (at: menu.numberOfItems - 1)
        lastItem?.target = self
        lastItem?.representedObject = (model, mouseDownLocationInView)
      }
      menu.addItem (withTitle: "Insert Array…", action: #selector (Self.insertArrayOfModelsInBoardAction (_:)), keyEquivalent: "")
      let lastItem = menu.item (at: menu.numberOfItems - 1)
      lastItem?.target = self
      lastItem?.representedObject = mouseDownLocationInView
    }
    return menu
  }

  //····················································································································

  @objc private func insertModelInBoardAction (_ inSender : NSMenuItem) {
    if let (boardModel, mouseDownLocationInView) = inSender.representedObject as? (BoardModel, CanariPoint) {
      let rotation = QuadrantRotation (rawValue: self.mInsertedInstanceDefaultOrientation?.selectedTag () ?? 0)!
      let newBoard = MergerBoardInstance (self.ebUndoManager)
      newBoard.myModel_property.setProp (boardModel)
      newBoard.x = mouseDownLocationInView.x
      newBoard.y = mouseDownLocationInView.y
      newBoard.instanceRotation = rotation
      self.rootObject.boardInstances_property.add (newBoard)
      self.mBoardInstanceController.setSelection ([newBoard])
    }
  }

  //····················································································································

  @objc private func insertArrayOfModelsInBoardAction (_ inSender : NSMenuItem) {
    if let mouseDownLocationInView = inSender.representedObject as? CanariPoint {
    //--- Build model popup button
      let modelPopUpButton = InternalAutoLayoutPopUpButton (pullsDown: false, size: .small)
      for model in self.mBoardModelController.objects {
        modelPopUpButton.addItem (withTitle: model.name)
        let lastItem = modelPopUpButton.lastItem
        lastItem?.representedObject = model
      }
    //--- X and Y Count
      let xCountTextField = AutoLayoutIntField (width: 56).bind_value (self.mInsertArrayOfBoardsXCount, sendContinously: false)
      let yCountTextField = AutoLayoutIntField (width: 56).bind_value (self.mInsertArrayOfBoardsYCount, sendContinously: false)
    //--- Orientation
      let orientationSegmentedControl = AutoLayoutCanariOrientationSegmentedControl (size: .small)
        .bind_orientation (self.mInsertArrayOfBoardsOrientation)
    //--- Build panel
      let panel = NSPanel (
        contentRect: NSRect (x: 0, y: 0, width: 400, height: 200),
        styleMask: [.titled],
        backing: .buffered,
        defer: false
      )
      panel.hasShadow = true
      let mainView = AutoLayoutHorizontalStackView ().set (margins: 12)
      mainView.appendViewSurroundedByFlexibleSpaces (AutoLayoutApplicationImage ())
      mainView.appendFlexibleSpace ()
      let rightColumn = AutoLayoutVerticalStackView ()
      rightColumn.appendViewSurroundedByFlexibleSpaces (AutoLayoutStaticLabel (title: "Insert an Array of Boards", bold: true, size: .regular))
      rightColumn.appendFlexibleSpace ()

      let grid = AutoLayoutTwoColumnsGridView ()
      _ = grid.addFirstBaseLineAligned (
        left: AutoLayoutStaticLabel (title: "Model", bold: false, size: .small),
        right: modelPopUpButton
      )
      let hStackXCount = AutoLayoutHorizontalStackView ()
      hStackXCount.appendView (xCountTextField)
      hStackXCount.appendFlexibleSpace ()
      _ = grid.addFirstBaseLineAligned (
        left: AutoLayoutStaticLabel (title: "X Count", bold: false, size: .small),
        right: hStackXCount
      )
      let hStackYCount = AutoLayoutHorizontalStackView ()
      hStackYCount.appendView (yCountTextField)
      hStackYCount.appendFlexibleSpace ()
      _ = grid.addFirstBaseLineAligned (
        left: AutoLayoutStaticLabel (title: "Y Count", bold: false, size: .small),
        right: hStackYCount
      )
      _ = grid.addFirstBaseLineAligned (
        left: AutoLayoutStaticLabel (title: "Orientation", bold: false, size: .small),
        right: orientationSegmentedControl
      )
      rightColumn.appendView (grid)

      rightColumn.appendFlexibleSpace ()
      let lastLine = AutoLayoutHorizontalStackView ()
      let cancelButton = AutoLayoutSheetCancelButton (title: "Cancel", size: .regular, sheet: panel, isInitialFirstResponder: false)
      lastLine.appendView (cancelButton)
      lastLine.appendFlexibleSpace ()
      let okButton = AutoLayoutSheetDefaultOkButton (title: "Insert", size: .regular, sheet: panel, isInitialFirstResponder: true)
      lastLine.appendView (okButton)
      rightColumn.appendView (lastLine)
      mainView.appendViewPreceededByFlexibleSpace (rightColumn)
      panel.contentView = mainView
      self.windowForSheet?.beginSheet (panel) { (inResponse : NSApplication.ModalResponse) in
        flushOutletEvents ()
        if inResponse == .stop, let boardModel = modelPopUpButton.selectedItem?.representedObject as? BoardModel {
          let xCount = self.mInsertArrayOfBoardsXCount.propval
          let yCount = self.mInsertArrayOfBoardsYCount.propval
          let boardModelWidth = boardModel.modelWidth
          let boardModelHeight = boardModel.modelHeight
          let overlapAmount = self.rootObject.overlapingArrangment ? boardModel.modelLimitWidth : 0
          let rotation = self.mInsertArrayOfBoardsOrientation.propval
          var newBoardArray = [MergerBoardInstance] ()
          var y = mouseDownLocationInView.y
          for _ in 0 ..< yCount {
            var x = mouseDownLocationInView.x
            for _ in 0 ..< xCount {
              let newBoard = MergerBoardInstance (self.ebUndoManager)
              newBoard.myModel_property.setProp (boardModel)
              newBoard.instanceRotation = rotation
              newBoard.x = x
              newBoard.y = y
              self.rootObject.boardInstances_property.add (newBoard)
              newBoardArray.append (newBoard)
              switch rotation {
              case .rotation0, .rotation180 :
                x += boardModelWidth - overlapAmount
              case .rotation90, .rotation270 :
                x += boardModelHeight - overlapAmount
              }
            }
            switch rotation {
            case .rotation0, .rotation180 :
              y += boardModelHeight - overlapAmount
            case .rotation90, .rotation270 :
              y += boardModelWidth - overlapAmount
            }
          }
          self.mBoardInstanceController.setSelection (newBoardArray)
        }
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

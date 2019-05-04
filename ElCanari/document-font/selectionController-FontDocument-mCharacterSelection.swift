//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    SelectionController_FontDocument_mCharacterSelection                                                             *
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class SelectionController_FontDocument_mCharacterSelection : EBObject {

  //····················································································································
  //   Selection observable property: advance
  //····················································································································

  var advance_property = EBPropertyProxy_Int ()

  var advance_property_selection : EBSelection <Int> {
    return self.advance_property.prop
  }

  //····················································································································
  //   Selection observable property: codePoint
  //····················································································································

  var codePoint_property = EBPropertyProxy_Int ()

  var codePoint_property_selection : EBSelection <Int> {
    return self.codePoint_property.prop
  }

  //····················································································································
  //   Selection observable property: gerberCode
  //····················································································································

  var gerberCode_property = EBTransientProperty_CharacterGerberCodeClass ()

  var gerberCode_property_selection : EBSelection <CharacterGerberCodeClass> {
    return self.gerberCode_property.prop
  }

  //····················································································································
  //   Selection observable property: gerberCodeInstructionCountMessage
  //····················································································································

  var gerberCodeInstructionCountMessage_property = EBTransientProperty_String ()

  var gerberCodeInstructionCountMessage_property_selection : EBSelection <String> {
    return self.gerberCodeInstructionCountMessage_property.prop
  }

  //····················································································································
  //   Selection observable property: issues
  //····················································································································

  var issues_property = EBTransientProperty_CanariIssueArray ()

  var issues_property_selection : EBSelection <CanariIssueArray> {
    return self.issues_property.prop
  }

  //····················································································································
  //   Selection observable property: mWarnsWhenAdvanceIsZero
  //····················································································································

  var mWarnsWhenAdvanceIsZero_property = EBPropertyProxy_Bool ()

  var mWarnsWhenAdvanceIsZero_property_selection : EBSelection <Bool> {
    return self.mWarnsWhenAdvanceIsZero_property.prop
  }

  //····················································································································
  //   Selection observable property: mWarnsWhenNoSegment
  //····················································································································

  var mWarnsWhenNoSegment_property = EBPropertyProxy_Bool ()

  var mWarnsWhenNoSegment_property_selection : EBSelection <Bool> {
    return self.mWarnsWhenNoSegment_property.prop
  }

  //····················································································································
  //   Selection observable property: segmentArrayForDrawing
  //····················································································································

  var segmentArrayForDrawing_property = EBTransientProperty_CharacterSegmentListClass ()

  var segmentArrayForDrawing_property_selection : EBSelection <CharacterSegmentListClass> {
    return self.segmentArrayForDrawing_property.prop
  }

  //····················································································································
  //   Selection observable property: segments
  //····················································································································

  //····················································································································
  //   BIND SELECTION
  //····················································································································

  private var mModel : TransientArrayOf_FontCharacter? = nil

  //····················································································································

  func bind_selection (model : TransientArrayOf_FontCharacter, file:String, line:Int) {
    self.mModel = model
    self.bind_property_advance (model: model)
    self.bind_property_codePoint (model: model)
    self.bind_property_gerberCode (model: model)
    self.bind_property_gerberCodeInstructionCountMessage (model: model)
    self.bind_property_issues (model: model)
    self.bind_property_mWarnsWhenAdvanceIsZero (model: model)
    self.bind_property_mWarnsWhenNoSegment (model: model)
    self.bind_property_segmentArrayForDrawing (model: model)
  }

  //····················································································································
  //   UNBIND SELECTION
  //····················································································································

  func unbind_selection () {
  //--- advance
    self.advance_property.mReadModelFunction = nil 
    self.advance_property.mWriteModelFunction = nil 
    self.advance_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_advance (self.advance_property)
  //--- codePoint
    self.codePoint_property.mReadModelFunction = nil 
    self.codePoint_property.mWriteModelFunction = nil 
    self.codePoint_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_codePoint (self.codePoint_property)
  //--- gerberCode
    self.gerberCode_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_gerberCode (self.gerberCode_property)
  //--- gerberCodeInstructionCountMessage
    self.gerberCodeInstructionCountMessage_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_gerberCodeInstructionCountMessage (self.gerberCodeInstructionCountMessage_property)
  //--- issues
    self.issues_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_issues (self.issues_property)
  //--- mWarnsWhenAdvanceIsZero
    self.mWarnsWhenAdvanceIsZero_property.mReadModelFunction = nil 
    self.mWarnsWhenAdvanceIsZero_property.mWriteModelFunction = nil 
    self.mWarnsWhenAdvanceIsZero_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_mWarnsWhenAdvanceIsZero (self.mWarnsWhenAdvanceIsZero_property)
  //--- mWarnsWhenNoSegment
    self.mWarnsWhenNoSegment_property.mReadModelFunction = nil 
    self.mWarnsWhenNoSegment_property.mWriteModelFunction = nil 
    self.mWarnsWhenNoSegment_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_mWarnsWhenNoSegment (self.mWarnsWhenNoSegment_property)
  //--- segmentArrayForDrawing
    self.segmentArrayForDrawing_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_segmentArrayForDrawing (self.segmentArrayForDrawing_property)
  //---
    self.mModel = nil    
  }

  //····················································································································
  //    Explorer
  //····················································································································

  private var mValueExplorer : NSButton?
  private var mExplorerWindow : NSWindow?

  //····················································································································

  final func addExplorer (name : String, y : inout CGFloat, view : NSView) {
    let font = NSFont.boldSystemFont (ofSize: NSFont.smallSystemFontSize)
    let tf = NSTextField (frame:secondColumn (y))
    tf.isEnabled = true
    tf.isEditable = false
    tf.stringValue = name
    tf.font = font
    view.addSubview (tf)
    let valueExplorer = NSButton (frame:thirdColumn (y))
    valueExplorer.font = font
    valueExplorer.title = explorerIndexString (ebObjectIndex) + className
    valueExplorer.target = self
    valueExplorer.action = #selector(SelectionController_FontDocument_mCharacterSelection.showObjectWindowFromExplorerButton(_:))
    view.addSubview (valueExplorer)
    mValueExplorer = valueExplorer
    y += EXPLORER_ROW_HEIGHT
  }
  
  //····················································································································

  func buildExplorerWindow () {
  //-------------------------------------------------- Create Window
    let r = NSRect (x:20.0, y:20.0, width:10.0, height:10.0)
    mExplorerWindow = NSWindow (contentRect: r, styleMask: [.titled, .closable], backing: .buffered, defer: true, screen: nil)
  //-------------------------------------------------- Adding properties
    let view = NSView (frame:r)
    var y : CGFloat = 0.0
    createEntryForPropertyNamed (
      "advance",
      idx:self.advance_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.advance_property.mObserverExplorer,
      valueExplorer:&self.advance_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "codePoint",
      idx:self.codePoint_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.codePoint_property.mObserverExplorer,
      valueExplorer:&self.codePoint_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mWarnsWhenAdvanceIsZero",
      idx:self.mWarnsWhenAdvanceIsZero_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mWarnsWhenAdvanceIsZero_property.mObserverExplorer,
      valueExplorer:&self.mWarnsWhenAdvanceIsZero_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mWarnsWhenNoSegment",
      idx:self.mWarnsWhenNoSegment_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mWarnsWhenNoSegment_property.mObserverExplorer,
      valueExplorer:&self.mWarnsWhenNoSegment_property.mValueExplorer
    )
  //-------------------------------------------------- Finish Window construction
  //--- Resize View
    let viewFrame = NSRect (x:0.0, y:0.0, width:EXPLORER_ROW_WIDTH, height:y)
    view.frame = viewFrame
  //--- Set content size
    mExplorerWindow?.setContentSize (NSSize (width:EXPLORER_ROW_WIDTH + 16.0, height:fmin (600.0, y)))
  //--- Set close button as 'remove window' button
    let closeButton : NSButton? = mExplorerWindow?.standardWindowButton (.closeButton)
    closeButton?.target = self
    closeButton?.action = #selector(SelectionController_FontDocument_mCharacterSelection.deleteSelectionControllerWindowAction(_:))
  //--- Set window title
    let windowTitle = explorerIndexString (ebObjectIndex) + className
    mExplorerWindow!.title = windowTitle
  //--- Add Scroll view
    let frame = NSRect (x:0.0, y:0.0, width:EXPLORER_ROW_WIDTH, height:y)
    let sw = NSScrollView (frame:frame)
    sw.hasVerticalScroller = true
    sw.documentView = view
    mExplorerWindow!.contentView = sw
  }

  //····················································································································
  //   showObjectWindowFromExplorerButton
  //····················································································································

  @objc func showObjectWindowFromExplorerButton (_ : Any) {
    if mExplorerWindow == nil {
      buildExplorerWindow ()
    }
    mExplorerWindow?.makeKeyAndOrderFront(nil)
  }
  
  //····················································································································
  //   deleteSelectionControllerWindowAction
  //····················································································································

  @objc func deleteSelectionControllerWindowAction (_ : Any) {
    clearObjectExplorer ()
  }

  //····················································································································
  //   clearObjectExplorer
  //····················································································································

  func clearObjectExplorer () {
    let closeButton = mExplorerWindow?.standardWindowButton (.closeButton)
    closeButton!.target = nil
    mExplorerWindow?.orderOut (nil)
    mExplorerWindow = nil
  }

  //···················································································································*

  private final func bind_property_advance (model : TransientArrayOf_FontCharacter) {
    model.addEBObserverOf_advance (self.advance_property)
    self.advance_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <Int> ()
          var isMultipleSelection = false
          for object in v {
            switch object.advance_property_selection {
            case .empty :
              return .empty
            case .multiple :
              isMultipleSelection = true
            case .single (let vProp) :
              s.insert (vProp)
            }
          }
          if isMultipleSelection {
            return .multiple
          }else if s.count == 0 {
            return .empty
          }else if s.count == 1 {
            return .single (s.first!)
          }else{
            return .multiple
          }
        }
      }else{
        return .empty
      }
    }
    self.advance_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.advance_property.setProp (inValue)
          }
        }
      }
    }
    self.advance_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mModel {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.advance_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
            if !result {
              return false
            }
          }
          return true
        }
      }else{
        return false
      }
    }
  }

  //···················································································································*

  private final func bind_property_codePoint (model : TransientArrayOf_FontCharacter) {
    model.addEBObserverOf_codePoint (self.codePoint_property)
    self.codePoint_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <Int> ()
          var isMultipleSelection = false
          for object in v {
            switch object.codePoint_property_selection {
            case .empty :
              return .empty
            case .multiple :
              isMultipleSelection = true
            case .single (let vProp) :
              s.insert (vProp)
            }
          }
          if isMultipleSelection {
            return .multiple
          }else if s.count == 0 {
            return .empty
          }else if s.count == 1 {
            return .single (s.first!)
          }else{
            return .multiple
          }
        }
      }else{
        return .empty
      }
    }
    self.codePoint_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.codePoint_property.setProp (inValue)
          }
        }
      }
    }
    self.codePoint_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mModel {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.codePoint_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
            if !result {
              return false
            }
          }
          return true
        }
      }else{
        return false
      }
    }
  }

  //···················································································································*

  private final func bind_property_gerberCode (model : TransientArrayOf_FontCharacter) {
    model.addEBObserverOf_gerberCode (self.gerberCode_property)
    self.gerberCode_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <CharacterGerberCodeClass> ()
          var isMultipleSelection = false
          for object in v {
            switch object.gerberCode_property_selection {
            case .empty :
              return .empty
            case .multiple :
              isMultipleSelection = true
            case .single (let vProp) :
              s.insert (vProp)
            }
          }
          if isMultipleSelection {
            return .multiple
          }else if s.count == 0 {
            return .empty
          }else if s.count == 1 {
            return .single (s.first!)
          }else{
            return .multiple
          }
        }
      }else{
        return .empty
      }
    }
  }

  //···················································································································*

  private final func bind_property_gerberCodeInstructionCountMessage (model : TransientArrayOf_FontCharacter) {
    model.addEBObserverOf_gerberCodeInstructionCountMessage (self.gerberCodeInstructionCountMessage_property)
    self.gerberCodeInstructionCountMessage_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <String> ()
          var isMultipleSelection = false
          for object in v {
            switch object.gerberCodeInstructionCountMessage_property_selection {
            case .empty :
              return .empty
            case .multiple :
              isMultipleSelection = true
            case .single (let vProp) :
              s.insert (vProp)
            }
          }
          if isMultipleSelection {
            return .multiple
          }else if s.count == 0 {
            return .empty
          }else if s.count == 1 {
            return .single (s.first!)
          }else{
            return .multiple
          }
        }
      }else{
        return .empty
      }
    }
  }

  //···················································································································*

  private final func bind_property_issues (model : TransientArrayOf_FontCharacter) {
    model.addEBObserverOf_issues (self.issues_property)
    self.issues_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <CanariIssueArray> ()
          var isMultipleSelection = false
          for object in v {
            switch object.issues_property_selection {
            case .empty :
              return .empty
            case .multiple :
              isMultipleSelection = true
            case .single (let vProp) :
              s.insert (vProp)
            }
          }
          if isMultipleSelection {
            return .multiple
          }else if s.count == 0 {
            return .empty
          }else if s.count == 1 {
            return .single (s.first!)
          }else{
            return .multiple
          }
        }
      }else{
        return .empty
      }
    }
  }

  //···················································································································*

  private final func bind_property_mWarnsWhenAdvanceIsZero (model : TransientArrayOf_FontCharacter) {
    model.addEBObserverOf_mWarnsWhenAdvanceIsZero (self.mWarnsWhenAdvanceIsZero_property)
    self.mWarnsWhenAdvanceIsZero_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <Bool> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mWarnsWhenAdvanceIsZero_property_selection {
            case .empty :
              return .empty
            case .multiple :
              isMultipleSelection = true
            case .single (let vProp) :
              s.insert (vProp)
            }
          }
          if isMultipleSelection {
            return .multiple
          }else if s.count == 0 {
            return .empty
          }else if s.count == 1 {
            return .single (s.first!)
          }else{
            return .multiple
          }
        }
      }else{
        return .empty
      }
    }
    self.mWarnsWhenAdvanceIsZero_property.mWriteModelFunction = { [weak self] (inValue : Bool) in
      if let model = self?.mModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mWarnsWhenAdvanceIsZero_property.setProp (inValue)
          }
        }
      }
    }
    self.mWarnsWhenAdvanceIsZero_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Bool, windowForSheet : NSWindow?) in
      if let model = self?.mModel {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mWarnsWhenAdvanceIsZero_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
            if !result {
              return false
            }
          }
          return true
        }
      }else{
        return false
      }
    }
  }

  //···················································································································*

  private final func bind_property_mWarnsWhenNoSegment (model : TransientArrayOf_FontCharacter) {
    model.addEBObserverOf_mWarnsWhenNoSegment (self.mWarnsWhenNoSegment_property)
    self.mWarnsWhenNoSegment_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <Bool> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mWarnsWhenNoSegment_property_selection {
            case .empty :
              return .empty
            case .multiple :
              isMultipleSelection = true
            case .single (let vProp) :
              s.insert (vProp)
            }
          }
          if isMultipleSelection {
            return .multiple
          }else if s.count == 0 {
            return .empty
          }else if s.count == 1 {
            return .single (s.first!)
          }else{
            return .multiple
          }
        }
      }else{
        return .empty
      }
    }
    self.mWarnsWhenNoSegment_property.mWriteModelFunction = { [weak self] (inValue : Bool) in
      if let model = self?.mModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mWarnsWhenNoSegment_property.setProp (inValue)
          }
        }
      }
    }
    self.mWarnsWhenNoSegment_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Bool, windowForSheet : NSWindow?) in
      if let model = self?.mModel {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mWarnsWhenNoSegment_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
            if !result {
              return false
            }
          }
          return true
        }
      }else{
        return false
      }
    }
  }

  //···················································································································*

  private final func bind_property_segmentArrayForDrawing (model : TransientArrayOf_FontCharacter) {
    model.addEBObserverOf_segmentArrayForDrawing (self.segmentArrayForDrawing_property)
    self.segmentArrayForDrawing_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <CharacterSegmentListClass> ()
          var isMultipleSelection = false
          for object in v {
            switch object.segmentArrayForDrawing_property_selection {
            case .empty :
              return .empty
            case .multiple :
              isMultipleSelection = true
            case .single (let vProp) :
              s.insert (vProp)
            }
          }
          if isMultipleSelection {
            return .multiple
          }else if s.count == 0 {
            return .empty
          }else if s.count == 1 {
            return .single (s.first!)
          }else{
            return .multiple
          }
        }
      }else{
        return .empty
      }
    }
  }



  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


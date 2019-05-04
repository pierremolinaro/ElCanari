//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    SelectionController_ProjectDocument_commentInSchematicsSelectionController                                       *
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class SelectionController_ProjectDocument_commentInSchematicsSelectionController : EBObject {

  //····················································································································
  //   Selection observable property: mX
  //····················································································································

  let mX_property = EBPropertyProxy_Int ()

  var mX_property_selection : EBSelection <Int> {
    return self.mX_property.prop
  }

  //····················································································································
  //   Selection observable property: mY
  //····················································································································

  let mY_property = EBPropertyProxy_Int ()

  var mY_property_selection : EBSelection <Int> {
    return self.mY_property.prop
  }

  //····················································································································
  //   Selection observable property: mComment
  //····················································································································

  let mComment_property = EBPropertyProxy_String ()

  var mComment_property_selection : EBSelection <String> {
    return self.mComment_property.prop
  }

  //····················································································································
  //   Selection observable property: objectDisplay
  //····················································································································

  let objectDisplay_property = EBTransientProperty_EBShape ()

  var objectDisplay_property_selection : EBSelection <EBShape> {
    return self.objectDisplay_property.prop
  }

  //····················································································································
  //   Selection observable property: selectionDisplay
  //····················································································································

  let selectionDisplay_property = EBTransientProperty_EBShape ()

  var selectionDisplay_property_selection : EBSelection <EBShape> {
    return self.selectionDisplay_property.prop
  }

  //····················································································································
  //   BIND SELECTION
  //····················································································································

   private var mModel : TransientArrayOf_SchematicsObject? = nil
   private var mActualModel = TransientArrayOf_CommentInSchematics ()

  //····················································································································

  func bind_selection (model : TransientArrayOf_SchematicsObject, file : String, line : Int) {
    self.mModel = model
    self.mActualModel.mReadModelFunction = { [weak self] () -> EBSelection < [CommentInSchematics] > in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = [CommentInSchematics] ()
          for baseObject in v {
            if let object = baseObject as? CommentInSchematics {
              s.append (object)
            }
          }
          return .single (s)
        }
      }else{
        return .empty
      }
    }
    model.addEBObserver (self.mActualModel)
    self.bind_property_mX (model: self.mActualModel)
    self.bind_property_mY (model: self.mActualModel)
    self.bind_property_mComment (model: self.mActualModel)
    self.bind_property_objectDisplay (model: self.mActualModel)
    self.bind_property_selectionDisplay (model: self.mActualModel)
  }

  //····················································································································
  //   UNBIND SELECTION
  //····················································································································

  func unbind_selection () {
    self.mModel?.removeEBObserver (self.mActualModel)
    self.mActualModel.mReadModelFunction = nil
  //--- mX
    self.mX_property.mReadModelFunction = nil 
    self.mX_property.mWriteModelFunction = nil 
    self.mX_property.mValidateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_mX (self.mX_property)
  //--- mY
    self.mY_property.mReadModelFunction = nil 
    self.mY_property.mWriteModelFunction = nil 
    self.mY_property.mValidateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_mY (self.mY_property)
  //--- mComment
    self.mComment_property.mReadModelFunction = nil 
    self.mComment_property.mWriteModelFunction = nil 
    self.mComment_property.mValidateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_mComment (self.mComment_property)
  //--- objectDisplay
    self.objectDisplay_property.mReadModelFunction = nil 
    self.mActualModel.removeEBObserverOf_objectDisplay (self.objectDisplay_property)
  //--- selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = nil 
    self.mActualModel.removeEBObserverOf_selectionDisplay (self.selectionDisplay_property)
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
    valueExplorer.action = #selector(SelectionController_ProjectDocument_commentInSchematicsSelectionController.showObjectWindowFromExplorerButton(_:))
    view.addSubview (valueExplorer)
    self.mValueExplorer = valueExplorer
    y += EXPLORER_ROW_HEIGHT
  }
  
  //····················································································································

  func buildExplorerWindow () {
  //-------------------------------------------------- Create Window
    let r = NSRect (x:20.0, y:20.0, width:10.0, height:10.0)
    self.mExplorerWindow = NSWindow (contentRect: r, styleMask: [.titled, .closable], backing: .buffered, defer: true, screen: nil)
  //-------------------------------------------------- Adding properties
    let view = NSView (frame:r)
    var y : CGFloat = 0.0
    createEntryForPropertyNamed (
      "mX",
      idx:self.mX_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mX_property.mObserverExplorer,
      valueExplorer:&self.mX_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mY",
      idx:self.mY_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mY_property.mObserverExplorer,
      valueExplorer:&self.mY_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mComment",
      idx:self.mComment_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mComment_property.mObserverExplorer,
      valueExplorer:&self.mComment_property.mValueExplorer
    )
  //-------------------------------------------------- Finish Window construction
  //--- Resize View
    let viewFrame = NSRect (x:0.0, y:0.0, width:EXPLORER_ROW_WIDTH, height:y)
    view.frame = viewFrame
  //--- Set content size
    self.mExplorerWindow?.setContentSize (NSSize (width:EXPLORER_ROW_WIDTH + 16.0, height:fmin (600.0, y)))
  //--- Set close button as 'remove window' button
    let closeButton : NSButton? = self.mExplorerWindow?.standardWindowButton (.closeButton)
    closeButton?.target = self
    closeButton?.action = #selector(SelectionController_ProjectDocument_commentInSchematicsSelectionController.deleteSelectionControllerWindowAction(_:))
  //--- Set window title
    let windowTitle = explorerIndexString (ebObjectIndex) + className
    self.mExplorerWindow!.title = windowTitle
  //--- Add Scroll view
    let frame = NSRect (x:0.0, y:0.0, width:EXPLORER_ROW_WIDTH, height:y)
    let sw = NSScrollView (frame:frame)
    sw.hasVerticalScroller = true
    sw.documentView = view
    self.mExplorerWindow!.contentView = sw
  }

  //····················································································································
  //   showObjectWindowFromExplorerButton
  //····················································································································

  @objc func showObjectWindowFromExplorerButton (_ : Any) {
    if self.mExplorerWindow == nil {
      self.buildExplorerWindow ()
    }
    self.mExplorerWindow?.makeKeyAndOrderFront(nil)
  }
  
  //····················································································································
  //   deleteSelectionControllerWindowAction
  //····················································································································

  @objc func deleteSelectionControllerWindowAction (_ : Any) {
    self.clearObjectExplorer ()
  }

  //····················································································································
  //   clearObjectExplorer
  //····················································································································

  func clearObjectExplorer () {
    if let closeButton = self.mExplorerWindow?.standardWindowButton (.closeButton) {
      closeButton.target = nil
    }
    self.mExplorerWindow?.orderOut (nil)
    self.mExplorerWindow = nil
  }

  //····················································································································

  private final func bind_property_mX (model : TransientArrayOf_CommentInSchematics) {
    model.addEBObserverOf_mX (self.mX_property)
    self.mX_property.mReadModelFunction = { [weak self] in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <Int> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mX_property_selection {
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
    self.mX_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mX_property.setProp (inValue)
          }
        }
      }
    }
    self.mX_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mX_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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
  //····················································································································

  private final func bind_property_mY (model : TransientArrayOf_CommentInSchematics) {
    model.addEBObserverOf_mY (self.mY_property)
    self.mY_property.mReadModelFunction = { [weak self] in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <Int> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mY_property_selection {
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
    self.mY_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mY_property.setProp (inValue)
          }
        }
      }
    }
    self.mY_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mY_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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
  //····················································································································

  private final func bind_property_mComment (model : TransientArrayOf_CommentInSchematics) {
    model.addEBObserverOf_mComment (self.mComment_property)
    self.mComment_property.mReadModelFunction = { [weak self] in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <String> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mComment_property_selection {
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
    self.mComment_property.mWriteModelFunction = { [weak self] (inValue : String) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mComment_property.setProp (inValue)
          }
        }
      }
    }
    self.mComment_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : String, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mComment_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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
  //····················································································································

  private final func bind_property_objectDisplay (model : TransientArrayOf_CommentInSchematics) {
    model.addEBObserverOf_objectDisplay (self.objectDisplay_property)
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <EBShape> ()
          var isMultipleSelection = false
          for object in v {
            switch object.objectDisplay_property_selection {
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

  private final func bind_property_selectionDisplay (model : TransientArrayOf_CommentInSchematics) {
    model.addEBObserverOf_selectionDisplay (self.selectionDisplay_property)
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <EBShape> ()
          var isMultipleSelection = false
          for object in v {
            switch object.selectionDisplay_property_selection {
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


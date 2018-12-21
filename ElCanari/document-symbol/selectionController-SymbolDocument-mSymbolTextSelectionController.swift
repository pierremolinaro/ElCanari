//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    SelectionController_SymbolDocument_mSymbolTextSelectionController                                                *
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class SelectionController_SymbolDocument_mSymbolTextSelectionController : EBObject {

  //····················································································································
  //   Selection observable property: horizontalAlignment
  //····················································································································

  var horizontalAlignment_property = EBPropertyProxy_HorizontalAlignment ()

  var horizontalAlignment_property_selection : EBSelection <HorizontalAlignment> {
    get {
      return self.horizontalAlignment_property.prop
    }
  }

  //····················································································································
  //   Selection observable property: issues
  //····················································································································

  var issues_property = EBTransientProperty_CanariIssueArray ()

  var issues_property_selection : EBSelection <CanariIssueArray> {
    get {
      return self.issues_property.prop
    }
  }

  //····················································································································
  //   Selection observable property: objectDisplay
  //····················································································································

  var objectDisplay_property = EBTransientProperty_EBShape ()

  var objectDisplay_property_selection : EBSelection <EBShape> {
    get {
      return self.objectDisplay_property.prop
    }
  }

  //····················································································································
  //   Selection observable property: selectionDisplay
  //····················································································································

  var selectionDisplay_property = EBTransientProperty_EBShape ()

  var selectionDisplay_property_selection : EBSelection <EBShape> {
    get {
      return self.selectionDisplay_property.prop
    }
  }

  //····················································································································
  //   Selection observable property: text
  //····················································································································

  var text_property = EBPropertyProxy_String ()

  var text_property_selection : EBSelection <String> {
    get {
      return self.text_property.prop
    }
  }

  //····················································································································
  //   Selection observable property: x
  //····················································································································

  var x_property = EBPropertyProxy_Int ()

  var x_property_selection : EBSelection <Int> {
    get {
      return self.x_property.prop
    }
  }

  //····················································································································
  //   Selection observable property: y
  //····················································································································

  var y_property = EBPropertyProxy_Int ()

  var y_property_selection : EBSelection <Int> {
    get {
      return self.y_property.prop
    }
  }

  //····················································································································
  //   BIND SELECTION
  //····················································································································

   private var mModel : ReadOnlyArrayOf_SymbolObject? = nil
   private var mActualModel = TransientArrayOf_SymbolText ()

  //····················································································································

  func bind_selection (model : ReadOnlyArrayOf_SymbolObject, file : String, line : Int) {
    self.mModel = model
    self.mActualModel.readModelFunction = { [weak self] () -> EBSelection < [SymbolText] > in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = [SymbolText] ()
          for baseObject in v {
            if let object = baseObject as? SymbolText {
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
    self.bind_property_horizontalAlignment (model: self.mActualModel)
    self.bind_property_issues (model: self.mActualModel)
    self.bind_property_objectDisplay (model: self.mActualModel)
    self.bind_property_selectionDisplay (model: self.mActualModel)
    self.bind_property_text (model: self.mActualModel)
    self.bind_property_x (model: self.mActualModel)
    self.bind_property_y (model: self.mActualModel)
  }

  //····················································································································
  //   UNBIND SELECTION
  //····················································································································

  func unbind_selection () {
    self.mModel?.removeEBObserver (self.mActualModel)
    self.mActualModel.readModelFunction = nil
  //--- horizontalAlignment
    self.horizontalAlignment_property.readModelFunction = nil 
    self.horizontalAlignment_property.writeModelFunction = nil 
    self.horizontalAlignment_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_horizontalAlignment (self.horizontalAlignment_property)
  //--- issues
    self.issues_property.readModelFunction = nil 
    self.mActualModel.removeEBObserverOf_issues (self.issues_property)
  //--- objectDisplay
    self.objectDisplay_property.readModelFunction = nil 
    self.mActualModel.removeEBObserverOf_objectDisplay (self.objectDisplay_property)
  //--- selectionDisplay
    self.selectionDisplay_property.readModelFunction = nil 
    self.mActualModel.removeEBObserverOf_selectionDisplay (self.selectionDisplay_property)
  //--- text
    self.text_property.readModelFunction = nil 
    self.text_property.writeModelFunction = nil 
    self.text_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_text (self.text_property)
  //--- x
    self.x_property.readModelFunction = nil 
    self.x_property.writeModelFunction = nil 
    self.x_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_x (self.x_property)
  //--- y
    self.y_property.readModelFunction = nil 
    self.y_property.writeModelFunction = nil 
    self.y_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_y (self.y_property)
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
    valueExplorer.title = explorerIndexString (mEasyBindingsObjectIndex) + className
    valueExplorer.target = self
    valueExplorer.action = #selector(SelectionController_SymbolDocument_mSymbolTextSelectionController.showObjectWindowFromExplorerButton(_:))
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
      "horizontalAlignment",
      idx:self.horizontalAlignment_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.horizontalAlignment_property.mObserverExplorer,
      valueExplorer:&self.horizontalAlignment_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "text",
      idx:self.text_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.text_property.mObserverExplorer,
      valueExplorer:&self.text_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x",
      idx:self.x_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.x_property.mObserverExplorer,
      valueExplorer:&self.x_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y",
      idx:self.y_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.y_property.mObserverExplorer,
      valueExplorer:&self.y_property.mValueExplorer
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
    closeButton?.action = #selector(SelectionController_SymbolDocument_mSymbolTextSelectionController.deleteSelectionControllerWindowAction(_:))
  //--- Set window title
    let windowTitle = explorerIndexString (mEasyBindingsObjectIndex) + className
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

  //···················································································································*

  private final func bind_property_horizontalAlignment (model : ReadOnlyArrayOf_SymbolText) {
    model.addEBObserverOf_horizontalAlignment (self.horizontalAlignment_property)
    self.horizontalAlignment_property.readModelFunction = { [weak self] in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <HorizontalAlignment> ()
          var isMultipleSelection = false
          for object in v {
            switch object.horizontalAlignment_property_selection {
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
    self.horizontalAlignment_property.writeModelFunction = { [weak self] (inValue : HorizontalAlignment) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.horizontalAlignment_property.setProp (inValue)
          }
        }
      }
    }
    self.horizontalAlignment_property.validateAndWriteModelFunction = { [weak self] (candidateValue : HorizontalAlignment, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.horizontalAlignment_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_issues (model : ReadOnlyArrayOf_SymbolText) {
    model.addEBObserverOf_issues (self.issues_property)
    self.issues_property.readModelFunction = { [weak self] in
      if let model = self?.mActualModel {
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

  private final func bind_property_objectDisplay (model : ReadOnlyArrayOf_SymbolText) {
    model.addEBObserverOf_objectDisplay (self.objectDisplay_property)
    self.objectDisplay_property.readModelFunction = { [weak self] in
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

  //···················································································································*

  private final func bind_property_selectionDisplay (model : ReadOnlyArrayOf_SymbolText) {
    model.addEBObserverOf_selectionDisplay (self.selectionDisplay_property)
    self.selectionDisplay_property.readModelFunction = { [weak self] in
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

  //···················································································································*

  private final func bind_property_text (model : ReadOnlyArrayOf_SymbolText) {
    model.addEBObserverOf_text (self.text_property)
    self.text_property.readModelFunction = { [weak self] in
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
            switch object.text_property_selection {
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
    self.text_property.writeModelFunction = { [weak self] (inValue : String) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.text_property.setProp (inValue)
          }
        }
      }
    }
    self.text_property.validateAndWriteModelFunction = { [weak self] (candidateValue : String, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.text_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_x (model : ReadOnlyArrayOf_SymbolText) {
    model.addEBObserverOf_x (self.x_property)
    self.x_property.readModelFunction = { [weak self] in
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
            switch object.x_property_selection {
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
    self.x_property.writeModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.x_property.setProp (inValue)
          }
        }
      }
    }
    self.x_property.validateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.x_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_y (model : ReadOnlyArrayOf_SymbolText) {
    model.addEBObserverOf_y (self.y_property)
    self.y_property.readModelFunction = { [weak self] in
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
            switch object.y_property_selection {
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
    self.y_property.writeModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.y_property.setProp (inValue)
          }
        }
      }
    }
    self.y_property.validateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.y_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


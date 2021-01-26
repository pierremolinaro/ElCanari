//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    Derived selection controller SymbolDocument mSymbolTextSelectionController
//----------------------------------------------------------------------------------------------------------------------

final class SelectionController_SymbolDocument_mSymbolTextSelectionController : EBObject {

  //····················································································································
  //   Selection observable property: y
  //····················································································································

  let y_property = EBPropertyProxy_Int ()
  var y_property_selection : EBSelection <Int> {
    return self.y_property.selection
  }

  //····················································································································
  //   Selection observable property: text
  //····················································································································

  let text_property = EBPropertyProxy_String ()
  var text_property_selection : EBSelection <String> {
    return self.text_property.selection
  }

  //····················································································································
  //   Selection observable property: horizontalAlignment
  //····················································································································

  let horizontalAlignment_property = EBPropertyProxy_HorizontalAlignment ()
  var horizontalAlignment_property_selection : EBSelection <HorizontalAlignment> {
    return self.horizontalAlignment_property.selection
  }

  //····················································································································
  //   Selection observable property: x
  //····················································································································

  let x_property = EBPropertyProxy_Int ()
  var x_property_selection : EBSelection <Int> {
    return self.x_property.selection
  }

  //····················································································································
  //   Selection observable property: objectDisplay
  //····················································································································

  let objectDisplay_property = EBTransientProperty_EBShape ()

  var objectDisplay_property_selection : EBSelection <EBShape> {
    return self.objectDisplay_property.selection
  }

  //····················································································································
  //   Selection observable property: selectionDisplay
  //····················································································································

  let selectionDisplay_property = EBTransientProperty_EBShape ()

  var selectionDisplay_property_selection : EBSelection <EBShape> {
    return self.selectionDisplay_property.selection
  }

  //····················································································································
  //   Selection observable property: issues
  //····················································································································

  let issues_property = EBTransientProperty_CanariIssueArray ()

  var issues_property_selection : EBSelection <CanariIssueArray> {
    return self.issues_property.selection
  }

  //····················································································································
  //   Selected array (not observable)
  //····················································································································

  var selectedArray : [SymbolText] { return self.selectedArray_property.propval }

  //····················································································································
  //   BIND SELECTION
  //····················································································································

   let selectedArray_property = TransientArrayOfSuperOf_SymbolText <SymbolObject> ()

  //····················································································································

  func bind_selection (model : ReadOnlyArrayOf_SymbolObject, file : String, line : Int) {
    self.selectedArray_property.setDataProvider (model)
    self.bind_property_y ()
    self.bind_property_text ()
    self.bind_property_horizontalAlignment ()
    self.bind_property_x ()
    self.bind_property_objectDisplay ()
    self.bind_property_selectionDisplay ()
    self.bind_property_issues ()
  }

  //····················································································································
  //   UNBIND SELECTION
  //····················································································································

  func unbind_selection () {
    self.selectedArray_property.setDataProvider (nil)
  //--- y
    self.y_property.mReadModelFunction = nil 
    self.y_property.mWriteModelFunction = nil 
    self.y_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_y (self.y_property)
  //--- text
    self.text_property.mReadModelFunction = nil 
    self.text_property.mWriteModelFunction = nil 
    self.text_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_text (self.text_property)
  //--- horizontalAlignment
    self.horizontalAlignment_property.mReadModelFunction = nil 
    self.horizontalAlignment_property.mWriteModelFunction = nil 
    self.horizontalAlignment_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_horizontalAlignment (self.horizontalAlignment_property)
  //--- x
    self.x_property.mReadModelFunction = nil 
    self.x_property.mWriteModelFunction = nil 
    self.x_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_x (self.x_property)
  //--- objectDisplay
    self.objectDisplay_property.mReadModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_objectDisplay (self.objectDisplay_property)
  //--- selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_selectionDisplay (self.selectionDisplay_property)
  //--- issues
    self.issues_property.mReadModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_issues (self.issues_property)
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
    let valueExplorer = NSButton (frame: thirdColumn (y))
    valueExplorer.font = font
    valueExplorer.title = explorerIndexString (ebObjectIndex) + " " + className
    valueExplorer.target = self
    valueExplorer.action = #selector(SelectionController_SymbolDocument_mSymbolTextSelectionController.showObjectWindowFromExplorerButton(_:))
    view.addSubview (valueExplorer)
    self.mValueExplorer = valueExplorer
    y += EXPLORER_ROW_HEIGHT
  }
  
  //····················································································································

  func buildExplorerWindow () {
  //-------------------------------------------------- Create Window
    let r = NSRect (x: 20.0, y: 20.0, width: 10.0, height: 10.0)
    self.mExplorerWindow = NSWindow (contentRect: r, styleMask: [.titled, .closable], backing: .buffered, defer: true, screen: nil)
  //-------------------------------------------------- Adding properties
    let view = NSView (frame: r)
    var y : CGFloat = 0.0
    createEntryForPropertyNamed (
      "y",
      idx: self.y_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y_property.mObserverExplorer,
      valueExplorer: &self.y_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "text",
      idx: self.text_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.text_property.mObserverExplorer,
      valueExplorer: &self.text_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "horizontalAlignment",
      idx: self.horizontalAlignment_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.horizontalAlignment_property.mObserverExplorer,
      valueExplorer: &self.horizontalAlignment_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x",
      idx: self.x_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x_property.mObserverExplorer,
      valueExplorer: &self.x_property.mValueExplorer
    )
  //-------------------------------------------------- Finish Window construction
  //--- Resize View
    let viewFrame = NSRect (x: 0.0, y: 0.0, width: EXPLORER_ROW_WIDTH, height: y)
    view.frame = viewFrame
  //--- Set content size
    self.mExplorerWindow?.setContentSize (NSSize (width: EXPLORER_ROW_WIDTH + 16.0, height: fmin (600.0, y)))
  //--- Set close button as 'remove window' button
    let closeButton : NSButton? = self.mExplorerWindow?.standardWindowButton (.closeButton)
    closeButton?.target = self
    closeButton?.action = #selector(SelectionController_SymbolDocument_mSymbolTextSelectionController.deleteSelectionControllerWindowAction(_:))
  //--- Set window title
    let windowTitle = explorerIndexString (ebObjectIndex) + " " + className
    self.mExplorerWindow!.title = windowTitle
  //--- Add Scroll view
    let frame = NSRect (x: 0.0, y: 0.0, width: EXPLORER_ROW_WIDTH, height: y)
    let sw = NSScrollView (frame: frame)
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
    self.mExplorerWindow?.makeKeyAndOrderFront (nil)
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

  private final func bind_property_y () {
    self.selectedArray_property.addEBObserverOf_y (self.y_property)
    self.y_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.selection {
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
    self.y_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.y_property.setProp (inValue)
          }
        }
      }
    }
    self.y_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
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

  private final func bind_property_text () {
    self.selectedArray_property.addEBObserverOf_text (self.text_property)
    self.text_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.selection {
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
    self.text_property.mWriteModelFunction = { [weak self] (inValue : String) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.text_property.setProp (inValue)
          }
        }
      }
    }
    self.text_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : String, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
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
  //····················································································································

  private final func bind_property_horizontalAlignment () {
    self.selectedArray_property.addEBObserverOf_horizontalAlignment (self.horizontalAlignment_property)
    self.horizontalAlignment_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.selection {
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
    self.horizontalAlignment_property.mWriteModelFunction = { [weak self] (inValue : HorizontalAlignment) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.horizontalAlignment_property.setProp (inValue)
          }
        }
      }
    }
    self.horizontalAlignment_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : HorizontalAlignment, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
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
  //····················································································································

  private final func bind_property_x () {
    self.selectedArray_property.addEBObserverOf_x (self.x_property)
    self.x_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.selection {
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
    self.x_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.x_property.setProp (inValue)
          }
        }
      }
    }
    self.x_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
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
  //····················································································································

  private final func bind_property_objectDisplay () {
    self.selectedArray_property.addEBObserverOf_objectDisplay (self.objectDisplay_property)
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.selection {
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

  private final func bind_property_selectionDisplay () {
    self.selectedArray_property.addEBObserverOf_selectionDisplay (self.selectionDisplay_property)
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.selection {
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

  private final func bind_property_issues () {
    self.selectedArray_property.addEBObserverOf_issues (self.issues_property)
    self.issues_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.selection {
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


  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


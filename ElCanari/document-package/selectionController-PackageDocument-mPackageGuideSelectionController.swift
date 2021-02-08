//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    Derived selection controller PackageDocument mPackageGuideSelectionController
//----------------------------------------------------------------------------------------------------------------------

final class SelectionController_PackageDocument_mPackageGuideSelectionController : EBObject {

  //····················································································································
  //   Selection observable property: y1
  //····················································································································

  let y1_property = EBPropertyProxy_Int ()
  var y1_property_selection : EBSelection <Int> {
    return self.y1_property.selection
  }

  //····················································································································
  //   Selection observable property: x2
  //····················································································································

  let x2_property = EBPropertyProxy_Int ()
  var x2_property_selection : EBSelection <Int> {
    return self.x2_property.selection
  }

  //····················································································································
  //   Selection observable property: y2
  //····················································································································

  let y2_property = EBPropertyProxy_Int ()
  var y2_property_selection : EBSelection <Int> {
    return self.y2_property.selection
  }

  //····················································································································
  //   Selection observable property: x1Unit
  //····················································································································

  let x1Unit_property = EBPropertyProxy_Int ()
  var x1Unit_property_selection : EBSelection <Int> {
    return self.x1Unit_property.selection
  }

  //····················································································································
  //   Selection observable property: y1Unit
  //····················································································································

  let y1Unit_property = EBPropertyProxy_Int ()
  var y1Unit_property_selection : EBSelection <Int> {
    return self.y1Unit_property.selection
  }

  //····················································································································
  //   Selection observable property: x2Unit
  //····················································································································

  let x2Unit_property = EBPropertyProxy_Int ()
  var x2Unit_property_selection : EBSelection <Int> {
    return self.x2Unit_property.selection
  }

  //····················································································································
  //   Selection observable property: y2Unit
  //····················································································································

  let y2Unit_property = EBPropertyProxy_Int ()
  var y2Unit_property_selection : EBSelection <Int> {
    return self.y2Unit_property.selection
  }

  //····················································································································
  //   Selection observable property: x1
  //····················································································································

  let x1_property = EBPropertyProxy_Int ()
  var x1_property_selection : EBSelection <Int> {
    return self.x1_property.selection
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

  var selectedArray : [PackageGuide] { return self.selectedArray_property.propval }

  //····················································································································
  //   BIND SELECTION
  //····················································································································

   let selectedArray_property = TransientArrayOfSuperOf_PackageGuide <PackageObject> ()

  //····················································································································

  func bind_selection (model : ReadOnlyArrayOf_PackageObject) {
    self.selectedArray_property.setDataProvider (model)
    self.bind_property_y1 ()
    self.bind_property_x2 ()
    self.bind_property_y2 ()
    self.bind_property_x1Unit ()
    self.bind_property_y1Unit ()
    self.bind_property_x2Unit ()
    self.bind_property_y2Unit ()
    self.bind_property_x1 ()
    self.bind_property_objectDisplay ()
    self.bind_property_selectionDisplay ()
    self.bind_property_issues ()
  }

  //····················································································································
  //   UNBIND SELECTION
  //····················································································································

  func unbind_selection () {
    self.selectedArray_property.setDataProvider (nil)
  //--- y1
    self.y1_property.mReadModelFunction = nil 
    self.y1_property.mWriteModelFunction = nil 
    self.y1_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_y1 (self.y1_property)
  //--- x2
    self.x2_property.mReadModelFunction = nil 
    self.x2_property.mWriteModelFunction = nil 
    self.x2_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_x2 (self.x2_property)
  //--- y2
    self.y2_property.mReadModelFunction = nil 
    self.y2_property.mWriteModelFunction = nil 
    self.y2_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_y2 (self.y2_property)
  //--- x1Unit
    self.x1Unit_property.mReadModelFunction = nil 
    self.x1Unit_property.mWriteModelFunction = nil 
    self.x1Unit_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_x1Unit (self.x1Unit_property)
  //--- y1Unit
    self.y1Unit_property.mReadModelFunction = nil 
    self.y1Unit_property.mWriteModelFunction = nil 
    self.y1Unit_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_y1Unit (self.y1Unit_property)
  //--- x2Unit
    self.x2Unit_property.mReadModelFunction = nil 
    self.x2Unit_property.mWriteModelFunction = nil 
    self.x2Unit_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_x2Unit (self.x2Unit_property)
  //--- y2Unit
    self.y2Unit_property.mReadModelFunction = nil 
    self.y2Unit_property.mWriteModelFunction = nil 
    self.y2Unit_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_y2Unit (self.y2Unit_property)
  //--- x1
    self.x1_property.mReadModelFunction = nil 
    self.x1_property.mWriteModelFunction = nil 
    self.x1_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_x1 (self.x1_property)
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
    valueExplorer.action = #selector(SelectionController_PackageDocument_mPackageGuideSelectionController.showObjectWindowFromExplorerButton(_:))
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
      "y1",
      idx: self.y1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y1_property.mObserverExplorer,
      valueExplorer: &self.y1_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x2",
      idx: self.x2_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x2_property.mObserverExplorer,
      valueExplorer: &self.x2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y2",
      idx: self.y2_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y2_property.mObserverExplorer,
      valueExplorer: &self.y2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x1Unit",
      idx: self.x1Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x1Unit_property.mObserverExplorer,
      valueExplorer: &self.x1Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y1Unit",
      idx: self.y1Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y1Unit_property.mObserverExplorer,
      valueExplorer: &self.y1Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x2Unit",
      idx: self.x2Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x2Unit_property.mObserverExplorer,
      valueExplorer: &self.x2Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y2Unit",
      idx: self.y2Unit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.y2Unit_property.mObserverExplorer,
      valueExplorer: &self.y2Unit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x1",
      idx: self.x1_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.x1_property.mObserverExplorer,
      valueExplorer: &self.x1_property.mValueExplorer
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
    closeButton?.action = #selector(SelectionController_PackageDocument_mPackageGuideSelectionController.deleteSelectionControllerWindowAction(_:))
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

  private final func bind_property_y1 () {
    self.selectedArray_property.addEBObserverOf_y1 (self.y1_property)
    self.y1_property.mReadModelFunction = { [weak self] in
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
            switch object.y1_property_selection {
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
    self.y1_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.y1_property.setProp (inValue)
          }
        }
      }
    }
    self.y1_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.y1_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_x2 () {
    self.selectedArray_property.addEBObserverOf_x2 (self.x2_property)
    self.x2_property.mReadModelFunction = { [weak self] in
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
            switch object.x2_property_selection {
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
    self.x2_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.x2_property.setProp (inValue)
          }
        }
      }
    }
    self.x2_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.x2_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_y2 () {
    self.selectedArray_property.addEBObserverOf_y2 (self.y2_property)
    self.y2_property.mReadModelFunction = { [weak self] in
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
            switch object.y2_property_selection {
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
    self.y2_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.y2_property.setProp (inValue)
          }
        }
      }
    }
    self.y2_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.y2_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_x1Unit () {
    self.selectedArray_property.addEBObserverOf_x1Unit (self.x1Unit_property)
    self.x1Unit_property.mReadModelFunction = { [weak self] in
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
            switch object.x1Unit_property_selection {
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
    self.x1Unit_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.x1Unit_property.setProp (inValue)
          }
        }
      }
    }
    self.x1Unit_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.x1Unit_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_y1Unit () {
    self.selectedArray_property.addEBObserverOf_y1Unit (self.y1Unit_property)
    self.y1Unit_property.mReadModelFunction = { [weak self] in
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
            switch object.y1Unit_property_selection {
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
    self.y1Unit_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.y1Unit_property.setProp (inValue)
          }
        }
      }
    }
    self.y1Unit_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.y1Unit_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_x2Unit () {
    self.selectedArray_property.addEBObserverOf_x2Unit (self.x2Unit_property)
    self.x2Unit_property.mReadModelFunction = { [weak self] in
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
            switch object.x2Unit_property_selection {
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
    self.x2Unit_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.x2Unit_property.setProp (inValue)
          }
        }
      }
    }
    self.x2Unit_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.x2Unit_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_y2Unit () {
    self.selectedArray_property.addEBObserverOf_y2Unit (self.y2Unit_property)
    self.y2Unit_property.mReadModelFunction = { [weak self] in
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
            switch object.y2Unit_property_selection {
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
    self.y2Unit_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.y2Unit_property.setProp (inValue)
          }
        }
      }
    }
    self.y2Unit_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.y2Unit_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_x1 () {
    self.selectedArray_property.addEBObserverOf_x1 (self.x1_property)
    self.x1_property.mReadModelFunction = { [weak self] in
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
            switch object.x1_property_selection {
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
    self.x1_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.x1_property.setProp (inValue)
          }
        }
      }
    }
    self.x1_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.x1_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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


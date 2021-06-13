//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    Derived selection controller PackageDocument mPackageOvalSelectionController
//----------------------------------------------------------------------------------------------------------------------

final class SelectionController_PackageDocument_mPackageOvalSelectionController : EBObject {

  //····················································································································
  //   Selection observable property: y
  //····················································································································

  let y_property = EBPropertyProxy_Int ()
  var y_property_selection : EBSelection <Int> {
    return self.y_property.selection
  }

  //····················································································································
  //   Selection observable property: width
  //····················································································································

  let width_property = EBPropertyProxy_Int ()
  var width_property_selection : EBSelection <Int> {
    return self.width_property.selection
  }

  //····················································································································
  //   Selection observable property: height
  //····················································································································

  let height_property = EBPropertyProxy_Int ()
  var height_property_selection : EBSelection <Int> {
    return self.height_property.selection
  }

  //····················································································································
  //   Selection observable property: xUnit
  //····················································································································

  let xUnit_property = EBPropertyProxy_Int ()
  var xUnit_property_selection : EBSelection <Int> {
    return self.xUnit_property.selection
  }

  //····················································································································
  //   Selection observable property: yUnit
  //····················································································································

  let yUnit_property = EBPropertyProxy_Int ()
  var yUnit_property_selection : EBSelection <Int> {
    return self.yUnit_property.selection
  }

  //····················································································································
  //   Selection observable property: widthUnit
  //····················································································································

  let widthUnit_property = EBPropertyProxy_Int ()
  var widthUnit_property_selection : EBSelection <Int> {
    return self.widthUnit_property.selection
  }

  //····················································································································
  //   Selection observable property: heightUnit
  //····················································································································

  let heightUnit_property = EBPropertyProxy_Int ()
  var heightUnit_property_selection : EBSelection <Int> {
    return self.heightUnit_property.selection
  }

  //····················································································································
  //   Selection observable property: x
  //····················································································································

  let x_property = EBPropertyProxy_Int ()
  var x_property_selection : EBSelection <Int> {
    return self.x_property.selection
  }

  //····················································································································
  //   Selection observable property: strokeBezierPath
  //····················································································································

  let strokeBezierPath_property = EBTransientProperty_NSBezierPath ()

  var strokeBezierPath_property_selection : EBSelection <NSBezierPath> {
    return self.strokeBezierPath_property.selection
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

  var selectedArray : [PackageOval] { return self.selectedArray_property.propval }

  //····················································································································
  //   BIND SELECTION
  //····················································································································

   let selectedArray_property = TransientArrayOfSuperOf_PackageOval <PackageObject> ()

  //····················································································································

  final func bind_selection (model : ReadOnlyArrayOf_PackageObject) {
    self.selectedArray_property.setDataProvider (model)
    self.bind_property_y ()
    self.bind_property_width ()
    self.bind_property_height ()
    self.bind_property_xUnit ()
    self.bind_property_yUnit ()
    self.bind_property_widthUnit ()
    self.bind_property_heightUnit ()
    self.bind_property_x ()
    self.bind_property_strokeBezierPath ()
    self.bind_property_objectDisplay ()
    self.bind_property_selectionDisplay ()
    self.bind_property_issues ()
  }

  //····················································································································
  //   UNBIND SELECTION
  //····················································································································

  final func unbind_selection () {
    self.selectedArray_property.setDataProvider (nil)
  //--- y
    self.y_property.mReadModelFunction = nil 
    self.y_property.mWriteModelFunction = nil 
    self.y_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_y (self.y_property)
  //--- width
    self.width_property.mReadModelFunction = nil 
    self.width_property.mWriteModelFunction = nil 
    self.width_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_width (self.width_property)
  //--- height
    self.height_property.mReadModelFunction = nil 
    self.height_property.mWriteModelFunction = nil 
    self.height_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_height (self.height_property)
  //--- xUnit
    self.xUnit_property.mReadModelFunction = nil 
    self.xUnit_property.mWriteModelFunction = nil 
    self.xUnit_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_xUnit (self.xUnit_property)
  //--- yUnit
    self.yUnit_property.mReadModelFunction = nil 
    self.yUnit_property.mWriteModelFunction = nil 
    self.yUnit_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_yUnit (self.yUnit_property)
  //--- widthUnit
    self.widthUnit_property.mReadModelFunction = nil 
    self.widthUnit_property.mWriteModelFunction = nil 
    self.widthUnit_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_widthUnit (self.widthUnit_property)
  //--- heightUnit
    self.heightUnit_property.mReadModelFunction = nil 
    self.heightUnit_property.mWriteModelFunction = nil 
    self.heightUnit_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_heightUnit (self.heightUnit_property)
  //--- x
    self.x_property.mReadModelFunction = nil 
    self.x_property.mWriteModelFunction = nil 
    self.x_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_x (self.x_property)
  //--- strokeBezierPath
    self.strokeBezierPath_property.mReadModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_strokeBezierPath (self.strokeBezierPath_property)
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
    valueExplorer.action = #selector(SelectionController_PackageDocument_mPackageOvalSelectionController.showObjectWindowFromExplorerButton(_:))
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
      "width",
      idx: self.width_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.width_property.mObserverExplorer,
      valueExplorer: &self.width_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "height",
      idx: self.height_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.height_property.mObserverExplorer,
      valueExplorer: &self.height_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "xUnit",
      idx: self.xUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.xUnit_property.mObserverExplorer,
      valueExplorer: &self.xUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "yUnit",
      idx: self.yUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.yUnit_property.mObserverExplorer,
      valueExplorer: &self.yUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "widthUnit",
      idx: self.widthUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.widthUnit_property.mObserverExplorer,
      valueExplorer: &self.widthUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "heightUnit",
      idx: self.heightUnit_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.heightUnit_property.mObserverExplorer,
      valueExplorer: &self.heightUnit_property.mValueExplorer
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
    closeButton?.action = #selector(SelectionController_PackageDocument_mPackageOvalSelectionController.deleteSelectionControllerWindowAction(_:))
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

  private final func bind_property_width () {
    self.selectedArray_property.addEBObserverOf_width (self.width_property)
    self.width_property.mReadModelFunction = { [weak self] in
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
            switch object.width_property_selection {
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
    self.width_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.width_property.setProp (inValue)
          }
        }
      }
    }
    self.width_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.width_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_height () {
    self.selectedArray_property.addEBObserverOf_height (self.height_property)
    self.height_property.mReadModelFunction = { [weak self] in
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
            switch object.height_property_selection {
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
    self.height_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.height_property.setProp (inValue)
          }
        }
      }
    }
    self.height_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.height_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_xUnit () {
    self.selectedArray_property.addEBObserverOf_xUnit (self.xUnit_property)
    self.xUnit_property.mReadModelFunction = { [weak self] in
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
            switch object.xUnit_property_selection {
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
    self.xUnit_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.xUnit_property.setProp (inValue)
          }
        }
      }
    }
    self.xUnit_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.xUnit_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_yUnit () {
    self.selectedArray_property.addEBObserverOf_yUnit (self.yUnit_property)
    self.yUnit_property.mReadModelFunction = { [weak self] in
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
            switch object.yUnit_property_selection {
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
    self.yUnit_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.yUnit_property.setProp (inValue)
          }
        }
      }
    }
    self.yUnit_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.yUnit_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_widthUnit () {
    self.selectedArray_property.addEBObserverOf_widthUnit (self.widthUnit_property)
    self.widthUnit_property.mReadModelFunction = { [weak self] in
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
            switch object.widthUnit_property_selection {
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
    self.widthUnit_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.widthUnit_property.setProp (inValue)
          }
        }
      }
    }
    self.widthUnit_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.widthUnit_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_heightUnit () {
    self.selectedArray_property.addEBObserverOf_heightUnit (self.heightUnit_property)
    self.heightUnit_property.mReadModelFunction = { [weak self] in
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
            switch object.heightUnit_property_selection {
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
    self.heightUnit_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.heightUnit_property.setProp (inValue)
          }
        }
      }
    }
    self.heightUnit_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.heightUnit_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_strokeBezierPath () {
    self.selectedArray_property.addEBObserverOf_strokeBezierPath (self.strokeBezierPath_property)
    self.strokeBezierPath_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <NSBezierPath> ()
          var isMultipleSelection = false
          for object in v {
            switch object.strokeBezierPath_property_selection {
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


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    SelectionController_PackageDocument_mPackageOvalSelectionController                                              *
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class SelectionController_PackageDocument_mPackageOvalSelectionController : EBObject {

  //····················································································································
  //   Selection observable property: height
  //····················································································································

  var height_property = EBPropertyProxy_Int ()

  var height_property_selection : EBSelection <Int> {
    get {
      return self.height_property.prop
    }
  }

  //····················································································································
  //   Selection observable property: heightUnit
  //····················································································································

  var heightUnit_property = EBPropertyProxy_Int ()

  var heightUnit_property_selection : EBSelection <Int> {
    get {
      return self.heightUnit_property.prop
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
  //   Selection observable property: width
  //····················································································································

  var width_property = EBPropertyProxy_Int ()

  var width_property_selection : EBSelection <Int> {
    get {
      return self.width_property.prop
    }
  }

  //····················································································································
  //   Selection observable property: widthUnit
  //····················································································································

  var widthUnit_property = EBPropertyProxy_Int ()

  var widthUnit_property_selection : EBSelection <Int> {
    get {
      return self.widthUnit_property.prop
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
  //   Selection observable property: xUnit
  //····················································································································

  var xUnit_property = EBPropertyProxy_Int ()

  var xUnit_property_selection : EBSelection <Int> {
    get {
      return self.xUnit_property.prop
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
  //   Selection observable property: yUnit
  //····················································································································

  var yUnit_property = EBPropertyProxy_Int ()

  var yUnit_property_selection : EBSelection <Int> {
    get {
      return self.yUnit_property.prop
    }
  }

  //····················································································································
  //   BIND SELECTION
  //····················································································································

   private var mModel : ReadOnlyArrayOf_PackageObject? = nil
   private var mActualModel = TransientArrayOf_PackageOval ()

  //····················································································································

  func bind_selection (model : ReadOnlyArrayOf_PackageObject, file : String, line : Int) {
    self.mModel = model
    self.mActualModel.readModelFunction = { [weak self] () -> EBSelection < [PackageOval] > in
      if let model = self?.mModel {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = [PackageOval] ()
          for baseObject in v {
            if let object = baseObject as? PackageOval {
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
    self.bind_property_height (model: self.mActualModel)
    self.bind_property_heightUnit (model: self.mActualModel)
    self.bind_property_issues (model: self.mActualModel)
    self.bind_property_objectDisplay (model: self.mActualModel)
    self.bind_property_selectionDisplay (model: self.mActualModel)
    self.bind_property_width (model: self.mActualModel)
    self.bind_property_widthUnit (model: self.mActualModel)
    self.bind_property_x (model: self.mActualModel)
    self.bind_property_xUnit (model: self.mActualModel)
    self.bind_property_y (model: self.mActualModel)
    self.bind_property_yUnit (model: self.mActualModel)
  }

  //····················································································································
  //   UNBIND SELECTION
  //····················································································································

  func unbind_selection () {
    self.mModel?.removeEBObserver (self.mActualModel)
    self.mActualModel.readModelFunction = nil
  //--- height
    self.height_property.readModelFunction = nil 
    self.height_property.writeModelFunction = nil 
    self.height_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_height (self.height_property)
  //--- heightUnit
    self.heightUnit_property.readModelFunction = nil 
    self.heightUnit_property.writeModelFunction = nil 
    self.heightUnit_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_heightUnit (self.heightUnit_property)
  //--- issues
    self.issues_property.readModelFunction = nil 
    self.mActualModel.removeEBObserverOf_issues (self.issues_property)
  //--- objectDisplay
    self.objectDisplay_property.readModelFunction = nil 
    self.mActualModel.removeEBObserverOf_objectDisplay (self.objectDisplay_property)
  //--- selectionDisplay
    self.selectionDisplay_property.readModelFunction = nil 
    self.mActualModel.removeEBObserverOf_selectionDisplay (self.selectionDisplay_property)
  //--- width
    self.width_property.readModelFunction = nil 
    self.width_property.writeModelFunction = nil 
    self.width_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_width (self.width_property)
  //--- widthUnit
    self.widthUnit_property.readModelFunction = nil 
    self.widthUnit_property.writeModelFunction = nil 
    self.widthUnit_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_widthUnit (self.widthUnit_property)
  //--- x
    self.x_property.readModelFunction = nil 
    self.x_property.writeModelFunction = nil 
    self.x_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_x (self.x_property)
  //--- xUnit
    self.xUnit_property.readModelFunction = nil 
    self.xUnit_property.writeModelFunction = nil 
    self.xUnit_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_xUnit (self.xUnit_property)
  //--- y
    self.y_property.readModelFunction = nil 
    self.y_property.writeModelFunction = nil 
    self.y_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_y (self.y_property)
  //--- yUnit
    self.yUnit_property.readModelFunction = nil 
    self.yUnit_property.writeModelFunction = nil 
    self.yUnit_property.validateAndWriteModelFunction = nil 
    self.mActualModel.removeEBObserverOf_yUnit (self.yUnit_property)
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
    valueExplorer.action = #selector(SelectionController_PackageDocument_mPackageOvalSelectionController.showObjectWindowFromExplorerButton(_:))
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
      "height",
      idx:self.height_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.height_property.mObserverExplorer,
      valueExplorer:&self.height_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "heightUnit",
      idx:self.heightUnit_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.heightUnit_property.mObserverExplorer,
      valueExplorer:&self.heightUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "width",
      idx:self.width_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.width_property.mObserverExplorer,
      valueExplorer:&self.width_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "widthUnit",
      idx:self.widthUnit_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.widthUnit_property.mObserverExplorer,
      valueExplorer:&self.widthUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x",
      idx:self.x_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.x_property.mObserverExplorer,
      valueExplorer:&self.x_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "xUnit",
      idx:self.xUnit_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.xUnit_property.mObserverExplorer,
      valueExplorer:&self.xUnit_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y",
      idx:self.y_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.y_property.mObserverExplorer,
      valueExplorer:&self.y_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "yUnit",
      idx:self.yUnit_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.yUnit_property.mObserverExplorer,
      valueExplorer:&self.yUnit_property.mValueExplorer
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
    closeButton?.action = #selector(SelectionController_PackageDocument_mPackageOvalSelectionController.deleteSelectionControllerWindowAction(_:))
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

  //···················································································································*

  private final func bind_property_height (model : ReadOnlyArrayOf_PackageOval) {
    model.addEBObserverOf_height (self.height_property)
    self.height_property.readModelFunction = { [weak self] in
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
    self.height_property.writeModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.height_property.setProp (inValue)
          }
        }
      }
    }
    self.height_property.validateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
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

  //···················································································································*

  private final func bind_property_heightUnit (model : ReadOnlyArrayOf_PackageOval) {
    model.addEBObserverOf_heightUnit (self.heightUnit_property)
    self.heightUnit_property.readModelFunction = { [weak self] in
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
    self.heightUnit_property.writeModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.heightUnit_property.setProp (inValue)
          }
        }
      }
    }
    self.heightUnit_property.validateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
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

  //···················································································································*

  private final func bind_property_issues (model : ReadOnlyArrayOf_PackageOval) {
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

  private final func bind_property_objectDisplay (model : ReadOnlyArrayOf_PackageOval) {
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

  private final func bind_property_selectionDisplay (model : ReadOnlyArrayOf_PackageOval) {
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

  private final func bind_property_width (model : ReadOnlyArrayOf_PackageOval) {
    model.addEBObserverOf_width (self.width_property)
    self.width_property.readModelFunction = { [weak self] in
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
    self.width_property.writeModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.width_property.setProp (inValue)
          }
        }
      }
    }
    self.width_property.validateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
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

  //···················································································································*

  private final func bind_property_widthUnit (model : ReadOnlyArrayOf_PackageOval) {
    model.addEBObserverOf_widthUnit (self.widthUnit_property)
    self.widthUnit_property.readModelFunction = { [weak self] in
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
    self.widthUnit_property.writeModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.widthUnit_property.setProp (inValue)
          }
        }
      }
    }
    self.widthUnit_property.validateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
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

  //···················································································································*

  private final func bind_property_x (model : ReadOnlyArrayOf_PackageOval) {
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

  private final func bind_property_xUnit (model : ReadOnlyArrayOf_PackageOval) {
    model.addEBObserverOf_xUnit (self.xUnit_property)
    self.xUnit_property.readModelFunction = { [weak self] in
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
    self.xUnit_property.writeModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.xUnit_property.setProp (inValue)
          }
        }
      }
    }
    self.xUnit_property.validateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
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

  //···················································································································*

  private final func bind_property_y (model : ReadOnlyArrayOf_PackageOval) {
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

  //···················································································································*

  private final func bind_property_yUnit (model : ReadOnlyArrayOf_PackageOval) {
    model.addEBObserverOf_yUnit (self.yUnit_property)
    self.yUnit_property.readModelFunction = { [weak self] in
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
    self.yUnit_property.writeModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mActualModel {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.yUnit_property.setProp (inValue)
          }
        }
      }
    }
    self.yUnit_property.validateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mActualModel {
        switch model.prop {
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

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


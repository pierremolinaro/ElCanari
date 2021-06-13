//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    Derived selection controller ProjectDocument restrictRectangleSelectionController
//----------------------------------------------------------------------------------------------------------------------

final class SelectionController_ProjectDocument_restrictRectangleSelectionController : EBObject {

  //····················································································································
  //   Selection observable property: mY
  //····················································································································

  let mY_property = EBPropertyProxy_Int ()
  var mY_property_selection : EBSelection <Int> {
    return self.mY_property.selection
  }

  //····················································································································
  //   Selection observable property: mWidth
  //····················································································································

  let mWidth_property = EBPropertyProxy_Int ()
  var mWidth_property_selection : EBSelection <Int> {
    return self.mWidth_property.selection
  }

  //····················································································································
  //   Selection observable property: mHeight
  //····················································································································

  let mHeight_property = EBPropertyProxy_Int ()
  var mHeight_property_selection : EBSelection <Int> {
    return self.mHeight_property.selection
  }

  //····················································································································
  //   Selection observable property: mIsInFrontLayer
  //····················································································································

  let mIsInFrontLayer_property = EBPropertyProxy_Bool ()
  var mIsInFrontLayer_property_selection : EBSelection <Bool> {
    return self.mIsInFrontLayer_property.selection
  }

  //····················································································································
  //   Selection observable property: mIsInBackLayer
  //····················································································································

  let mIsInBackLayer_property = EBPropertyProxy_Bool ()
  var mIsInBackLayer_property_selection : EBSelection <Bool> {
    return self.mIsInBackLayer_property.selection
  }

  //····················································································································
  //   Selection observable property: mX
  //····················································································································

  let mX_property = EBPropertyProxy_Int ()
  var mX_property_selection : EBSelection <Int> {
    return self.mX_property.selection
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
  //   Selection observable property: signatureForERCChecking
  //····················································································································

  let signatureForERCChecking_property = EBTransientProperty_UInt32 ()

  var signatureForERCChecking_property_selection : EBSelection <UInt32> {
    return self.signatureForERCChecking_property.selection
  }

  //····················································································································
  //   Selected array (not observable)
  //····················································································································

  var selectedArray : [BoardRestrictRectangle] { return self.selectedArray_property.propval }

  //····················································································································
  //   BIND SELECTION
  //····················································································································

   let selectedArray_property = TransientArrayOfSuperOf_BoardRestrictRectangle <BoardObject> ()

  //····················································································································

  final func bind_selection (model : ReadOnlyArrayOf_BoardObject) {
    self.selectedArray_property.setDataProvider (model)
    self.bind_property_mY ()
    self.bind_property_mWidth ()
    self.bind_property_mHeight ()
    self.bind_property_mIsInFrontLayer ()
    self.bind_property_mIsInBackLayer ()
    self.bind_property_mX ()
    self.bind_property_objectDisplay ()
    self.bind_property_selectionDisplay ()
    self.bind_property_signatureForERCChecking ()
  }

  //····················································································································
  //   UNBIND SELECTION
  //····················································································································

  final func unbind_selection () {
    self.selectedArray_property.setDataProvider (nil)
  //--- mY
    self.mY_property.mReadModelFunction = nil 
    self.mY_property.mWriteModelFunction = nil 
    self.mY_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_mY (self.mY_property)
  //--- mWidth
    self.mWidth_property.mReadModelFunction = nil 
    self.mWidth_property.mWriteModelFunction = nil 
    self.mWidth_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_mWidth (self.mWidth_property)
  //--- mHeight
    self.mHeight_property.mReadModelFunction = nil 
    self.mHeight_property.mWriteModelFunction = nil 
    self.mHeight_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_mHeight (self.mHeight_property)
  //--- mIsInFrontLayer
    self.mIsInFrontLayer_property.mReadModelFunction = nil 
    self.mIsInFrontLayer_property.mWriteModelFunction = nil 
    self.mIsInFrontLayer_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_mIsInFrontLayer (self.mIsInFrontLayer_property)
  //--- mIsInBackLayer
    self.mIsInBackLayer_property.mReadModelFunction = nil 
    self.mIsInBackLayer_property.mWriteModelFunction = nil 
    self.mIsInBackLayer_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_mIsInBackLayer (self.mIsInBackLayer_property)
  //--- mX
    self.mX_property.mReadModelFunction = nil 
    self.mX_property.mWriteModelFunction = nil 
    self.mX_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_mX (self.mX_property)
  //--- objectDisplay
    self.objectDisplay_property.mReadModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_objectDisplay (self.objectDisplay_property)
  //--- selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_selectionDisplay (self.selectionDisplay_property)
  //--- signatureForERCChecking
    self.signatureForERCChecking_property.mReadModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_signatureForERCChecking (self.signatureForERCChecking_property)
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
    let className = String (describing: type (of: self))
    valueExplorer.title = explorerIndexString (ebObjectIndex) + " " + className
    valueExplorer.target = self
    valueExplorer.action = #selector(SelectionController_ProjectDocument_restrictRectangleSelectionController.showObjectWindowFromExplorerButton(_:))
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
      "mY",
      idx: self.mY_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mY_property.mObserverExplorer,
      valueExplorer: &self.mY_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mWidth",
      idx: self.mWidth_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mWidth_property.mObserverExplorer,
      valueExplorer: &self.mWidth_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mHeight",
      idx: self.mHeight_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mHeight_property.mObserverExplorer,
      valueExplorer: &self.mHeight_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mIsInFrontLayer",
      idx: self.mIsInFrontLayer_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mIsInFrontLayer_property.mObserverExplorer,
      valueExplorer: &self.mIsInFrontLayer_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mIsInBackLayer",
      idx: self.mIsInBackLayer_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mIsInBackLayer_property.mObserverExplorer,
      valueExplorer: &self.mIsInBackLayer_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mX",
      idx: self.mX_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mX_property.mObserverExplorer,
      valueExplorer: &self.mX_property.mValueExplorer
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
    closeButton?.action = #selector(SelectionController_ProjectDocument_restrictRectangleSelectionController.deleteSelectionControllerWindowAction(_:))
  //--- Set window title
    let className = String (describing: type (of: self))
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

  private final func bind_property_mY () {
    self.selectedArray_property.addEBObserverOf_mY (self.mY_property)
    self.mY_property.mReadModelFunction = { [weak self] in
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
      if let model = self?.selectedArray_property {
        switch model.selection {
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
      if let model = self?.selectedArray_property {
        switch model.selection {
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

  private final func bind_property_mWidth () {
    self.selectedArray_property.addEBObserverOf_mWidth (self.mWidth_property)
    self.mWidth_property.mReadModelFunction = { [weak self] in
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
            switch object.mWidth_property_selection {
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
    self.mWidth_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mWidth_property.setProp (inValue)
          }
        }
      }
    }
    self.mWidth_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mWidth_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_mHeight () {
    self.selectedArray_property.addEBObserverOf_mHeight (self.mHeight_property)
    self.mHeight_property.mReadModelFunction = { [weak self] in
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
            switch object.mHeight_property_selection {
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
    self.mHeight_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mHeight_property.setProp (inValue)
          }
        }
      }
    }
    self.mHeight_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mHeight_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_mIsInFrontLayer () {
    self.selectedArray_property.addEBObserverOf_mIsInFrontLayer (self.mIsInFrontLayer_property)
    self.mIsInFrontLayer_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <Bool> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mIsInFrontLayer_property_selection {
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
    self.mIsInFrontLayer_property.mWriteModelFunction = { [weak self] (inValue : Bool) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mIsInFrontLayer_property.setProp (inValue)
          }
        }
      }
    }
    self.mIsInFrontLayer_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Bool, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mIsInFrontLayer_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_mIsInBackLayer () {
    self.selectedArray_property.addEBObserverOf_mIsInBackLayer (self.mIsInBackLayer_property)
    self.mIsInBackLayer_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <Bool> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mIsInBackLayer_property_selection {
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
    self.mIsInBackLayer_property.mWriteModelFunction = { [weak self] (inValue : Bool) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mIsInBackLayer_property.setProp (inValue)
          }
        }
      }
    }
    self.mIsInBackLayer_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Bool, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mIsInBackLayer_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_mX () {
    self.selectedArray_property.addEBObserverOf_mX (self.mX_property)
    self.mX_property.mReadModelFunction = { [weak self] in
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
      if let model = self?.selectedArray_property {
        switch model.selection {
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
      if let model = self?.selectedArray_property {
        switch model.selection {
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

  private final func bind_property_signatureForERCChecking () {
    self.selectedArray_property.addEBObserverOf_signatureForERCChecking (self.signatureForERCChecking_property)
    self.signatureForERCChecking_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <UInt32> ()
          var isMultipleSelection = false
          for object in v {
            switch object.signatureForERCChecking_property_selection {
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


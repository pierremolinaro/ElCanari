//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    Base Selection Controller DeviceDocument symbolInstanceSelection
//----------------------------------------------------------------------------------------------------------------------

final class SelectionController_DeviceDocument_symbolInstanceSelection : EBObject {

  //····················································································································
  //   Selection observable property: mInstanceName
  //····················································································································

  var mInstanceName_property = EBPropertyProxy_String ()

  var mInstanceName_property_selection : EBSelection <String> {
    return self.mInstanceName_property.selection
  }

  //····················································································································
  //   Selection observable property: mPinInstances
  //····················································································································

  //····················································································································
  //   Selection observable property: mType
  //····················································································································

  //····················································································································
  //   Selection observable property: mX
  //····················································································································

  var mX_property = EBPropertyProxy_Int ()

  var mX_property_selection : EBSelection <Int> {
    return self.mX_property.selection
  }

  //····················································································································
  //   Selection observable property: mY
  //····················································································································

  var mY_property = EBPropertyProxy_Int ()

  var mY_property_selection : EBSelection <Int> {
    return self.mY_property.selection
  }

  //····················································································································
  //   Selection observable property: objectDisplay
  //····················································································································

  var objectDisplay_property = EBTransientProperty_EBShape ()

  var objectDisplay_property_selection : EBSelection <EBShape> {
    return self.objectDisplay_property.selection
  }

  //····················································································································
  //   Selection observable property: selectionDisplay
  //····················································································································

  var selectionDisplay_property = EBTransientProperty_EBShape ()

  var selectionDisplay_property_selection : EBSelection <EBShape> {
    return self.selectionDisplay_property.selection
  }

  //····················································································································
  //   Selection observable property: symbolQualifiedName
  //····················································································································

  var symbolQualifiedName_property = EBTransientProperty_String ()

  var symbolQualifiedName_property_selection : EBSelection <String> {
    return self.symbolQualifiedName_property.selection
  }

  //····················································································································
  //   Selection observable property: symbolTypeName
  //····················································································································

  var symbolTypeName_property = EBTransientProperty_String ()

  var symbolTypeName_property_selection : EBSelection <String> {
    return self.symbolTypeName_property.selection
  }

  //····················································································································
  //   Selection observable property: unconnectedPins
  //····················································································································

  var unconnectedPins_property = EBTransientProperty_UnconnectedSymbolPinsInDevice ()

  var unconnectedPins_property_selection : EBSelection <UnconnectedSymbolPinsInDevice> {
    return self.unconnectedPins_property.selection
  }

  //····················································································································
  //   BIND SELECTION
  //····················································································································

  private var mModel : ReadOnlyArrayOf_SymbolInstanceInDevice? = nil

  //····················································································································

  func bind_selection (model : ReadOnlyArrayOf_SymbolInstanceInDevice) {
    self.mModel = model
    self.bind_property_mInstanceName (model: model)
    self.bind_property_mX (model: model)
    self.bind_property_mY (model: model)
    self.bind_property_objectDisplay (model: model)
    self.bind_property_selectionDisplay (model: model)
    self.bind_property_symbolQualifiedName (model: model)
    self.bind_property_symbolTypeName (model: model)
    self.bind_property_unconnectedPins (model: model)
  }

  //····················································································································
  //   UNBIND SELECTION
  //····················································································································

  func unbind_selection () {
  //--- mInstanceName
    self.mInstanceName_property.mReadModelFunction = nil 
    self.mInstanceName_property.mWriteModelFunction = nil 
    self.mInstanceName_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_mInstanceName (self.mInstanceName_property)
  //--- mX
    self.mX_property.mReadModelFunction = nil 
    self.mX_property.mWriteModelFunction = nil 
    self.mX_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_mX (self.mX_property)
  //--- mY
    self.mY_property.mReadModelFunction = nil 
    self.mY_property.mWriteModelFunction = nil 
    self.mY_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_mY (self.mY_property)
  //--- objectDisplay
    self.objectDisplay_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_objectDisplay (self.objectDisplay_property)
  //--- selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_selectionDisplay (self.selectionDisplay_property)
  //--- symbolQualifiedName
    self.symbolQualifiedName_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_symbolQualifiedName (self.symbolQualifiedName_property)
  //--- symbolTypeName
    self.symbolTypeName_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_symbolTypeName (self.symbolTypeName_property)
  //--- unconnectedPins
    self.unconnectedPins_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_unconnectedPins (self.unconnectedPins_property)
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
    valueExplorer.title = explorerIndexString (ebObjectIndex) + " " + className
    valueExplorer.target = self
    valueExplorer.action = #selector(SelectionController_DeviceDocument_symbolInstanceSelection.showObjectWindowFromExplorerButton(_:))
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
      "mInstanceName",
      idx: self.mInstanceName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mInstanceName_property.mObserverExplorer,
      valueExplorer: &self.mInstanceName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mX",
      idx: self.mX_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mX_property.mObserverExplorer,
      valueExplorer: &self.mX_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mY",
      idx: self.mY_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mY_property.mObserverExplorer,
      valueExplorer: &self.mY_property.mValueExplorer
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
    closeButton?.action = #selector(SelectionController_DeviceDocument_symbolInstanceSelection.deleteSelectionControllerWindowAction(_:))
  //--- Set window title
    let windowTitle = explorerIndexString (ebObjectIndex) + " " + className
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

  private final func bind_property_mInstanceName (model : ReadOnlyArrayOf_SymbolInstanceInDevice) {
    model.addEBObserverOf_mInstanceName (self.mInstanceName_property)
    self.mInstanceName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <String> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mInstanceName_property_selection {
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
    self.mInstanceName_property.mWriteModelFunction = { [weak self] (inValue : String) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mInstanceName_property.setProp (inValue)
          }
        }
      }
    }
    self.mInstanceName_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : String, windowForSheet : NSWindow?) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mInstanceName_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_mX (model : ReadOnlyArrayOf_SymbolInstanceInDevice) {
    model.addEBObserverOf_mX (self.mX_property)
    self.mX_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
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
      if let model = self?.mModel {
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
      if let model = self?.mModel {
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

  //···················································································································*

  private final func bind_property_mY (model : ReadOnlyArrayOf_SymbolInstanceInDevice) {
    model.addEBObserverOf_mY (self.mY_property)
    self.mY_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
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
      if let model = self?.mModel {
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
      if let model = self?.mModel {
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

  //···················································································································*

  private final func bind_property_objectDisplay (model : ReadOnlyArrayOf_SymbolInstanceInDevice) {
    model.addEBObserverOf_objectDisplay (self.objectDisplay_property)
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
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

  //···················································································································*

  private final func bind_property_selectionDisplay (model : ReadOnlyArrayOf_SymbolInstanceInDevice) {
    model.addEBObserverOf_selectionDisplay (self.selectionDisplay_property)
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
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

  //···················································································································*

  private final func bind_property_symbolQualifiedName (model : ReadOnlyArrayOf_SymbolInstanceInDevice) {
    model.addEBObserverOf_symbolQualifiedName (self.symbolQualifiedName_property)
    self.symbolQualifiedName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <String> ()
          var isMultipleSelection = false
          for object in v {
            switch object.symbolQualifiedName_property_selection {
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

  private final func bind_property_symbolTypeName (model : ReadOnlyArrayOf_SymbolInstanceInDevice) {
    model.addEBObserverOf_symbolTypeName (self.symbolTypeName_property)
    self.symbolTypeName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <String> ()
          var isMultipleSelection = false
          for object in v {
            switch object.symbolTypeName_property_selection {
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

  private final func bind_property_unconnectedPins (model : ReadOnlyArrayOf_SymbolInstanceInDevice) {
    model.addEBObserverOf_unconnectedPins (self.unconnectedPins_property)
    self.unconnectedPins_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <UnconnectedSymbolPinsInDevice> ()
          var isMultipleSelection = false
          for object in v {
            switch object.unconnectedPins_property_selection {
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


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Derived selection controller ProjectDocument mSchematicLabelSelectionController
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class SelectionController_ProjectDocument_mSchematicLabelSelectionController : EBObject {

  //····················································································································
  //   Selection observable property: mOrientation
  //····················································································································

  let mOrientation_property = EBPropertyProxy_QuadrantRotation ()

  var mOrientation_property_selection : EBSelection <QuadrantRotation> {
    return self.mOrientation_property.prop
  }

  //····················································································································
  //   Selection observable property: location
  //····················································································································

  let location_property = EBTransientProperty_CanariPoint ()

  var location_property_selection : EBSelection <CanariPoint> {
    return self.location_property.prop
  }

  //····················································································································
  //   Selection observable property: netName
  //····················································································································

  let netName_property = EBTransientProperty_String ()

  var netName_property_selection : EBSelection <String> {
    return self.netName_property.prop
  }

  //····················································································································
  //   Selection observable property: selectionDisplay
  //····················································································································

  let selectionDisplay_property = EBTransientProperty_EBShape ()

  var selectionDisplay_property_selection : EBSelection <EBShape> {
    return self.selectionDisplay_property.prop
  }

  //····················································································································
  //   Selection observable property: objectDisplay
  //····················································································································

  let objectDisplay_property = EBTransientProperty_EBShape ()

  var objectDisplay_property_selection : EBSelection <EBShape> {
    return self.objectDisplay_property.prop
  }

  //····················································································································
  //   Selected array (not observable)
  //····················································································································

  var selectedArray : [LabelInSchematic] { return self.selectedArray_property.propval }

  //····················································································································
  //   BIND SELECTION
  //····················································································································

   let selectedArray_property = TransientArrayOfSuperOf_LabelInSchematic <SchematicObject> ()

  //····················································································································

  func bind_selection (model : ReadOnlyArrayOf_SchematicObject, file : String, line : Int) {
    self.selectedArray_property.setDataProvider (model)
    self.bind_property_mOrientation ()
    self.bind_property_location ()
    self.bind_property_netName ()
    self.bind_property_selectionDisplay ()
    self.bind_property_objectDisplay ()
  }

  //····················································································································
  //   UNBIND SELECTION
  //····················································································································

  func unbind_selection () {
    self.selectedArray_property.setDataProvider (nil)
  //--- mOrientation
    self.mOrientation_property.mReadModelFunction = nil 
    self.mOrientation_property.mWriteModelFunction = nil 
    self.mOrientation_property.mValidateAndWriteModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_mOrientation (self.mOrientation_property)
  //--- location
    self.location_property.mReadModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_location (self.location_property)
  //--- netName
    self.netName_property.mReadModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_netName (self.netName_property)
  //--- selectionDisplay
    self.selectionDisplay_property.mReadModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_selectionDisplay (self.selectionDisplay_property)
  //--- objectDisplay
    self.objectDisplay_property.mReadModelFunction = nil 
    self.selectedArray_property.removeEBObserverOf_objectDisplay (self.objectDisplay_property)
  //---
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
    valueExplorer.title = explorerIndexString (ebObjectIndex) + className
    valueExplorer.target = self
    valueExplorer.action = #selector(SelectionController_ProjectDocument_mSchematicLabelSelectionController.showObjectWindowFromExplorerButton(_:))
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
      "mOrientation",
      idx: self.mOrientation_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mOrientation_property.mObserverExplorer,
      valueExplorer: &self.mOrientation_property.mValueExplorer
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
    closeButton?.action = #selector(SelectionController_ProjectDocument_mSchematicLabelSelectionController.deleteSelectionControllerWindowAction(_:))
  //--- Set window title
    let windowTitle = explorerIndexString (ebObjectIndex) + className
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

  private final func bind_property_mOrientation () {
    self.selectedArray_property.addEBObserverOf_mOrientation (self.mOrientation_property)
    self.mOrientation_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <QuadrantRotation> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mOrientation_property_selection {
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
    self.mOrientation_property.mWriteModelFunction = { [weak self] (inValue : QuadrantRotation) in
      if let model = self?.selectedArray_property {
        switch model.prop {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mOrientation_property.setProp (inValue)
          }
        }
      }
    }
    self.mOrientation_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : QuadrantRotation, windowForSheet : NSWindow?) in
      if let model = self?.selectedArray_property {
        switch model.prop {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mOrientation_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_location () {
    self.selectedArray_property.addEBObserverOf_location (self.location_property)
    self.location_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <CanariPoint> ()
          var isMultipleSelection = false
          for object in v {
            switch object.location_property_selection {
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

  private final func bind_property_netName () {
    self.selectedArray_property.addEBObserverOf_netName (self.netName_property)
    self.netName_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
        switch model.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <String> ()
          var isMultipleSelection = false
          for object in v {
            switch object.netName_property_selection {
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

  private final func bind_property_objectDisplay () {
    self.selectedArray_property.addEBObserverOf_objectDisplay (self.objectDisplay_property)
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.selectedArray_property {
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

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


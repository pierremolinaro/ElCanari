//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    Base Selection Controller DeviceDocument symbolTypeSelection
//----------------------------------------------------------------------------------------------------------------------

final class SelectionController_DeviceDocument_symbolTypeSelection : EBObject {

  //····················································································································
  //   Selection observable property: documentSizeString
  //····················································································································

  var documentSizeString_property = EBTransientProperty_String ()

  //····················································································································
  //   Selection observable property: instanceCount
  //····················································································································

  var instanceCount_property = EBTransientProperty_Int ()

  //····················································································································
  //   Selection observable property: mFileData
  //····················································································································

  var mFileData_property = EBPropertyProxy_Data ()

  //····················································································································
  //   Selection observable property: mFilledBezierPath
  //····················································································································

  var mFilledBezierPath_property = EBPropertyProxy_NSBezierPath ()

  //····················································································································
  //   Selection observable property: mInstances
  //····················································································································

  //····················································································································
  //   Selection observable property: mPinTypes
  //····················································································································

  //····················································································································
  //   Selection observable property: mStrokeBezierPath
  //····················································································································

  var mStrokeBezierPath_property = EBPropertyProxy_NSBezierPath ()

  //····················································································································
  //   Selection observable property: mTypeName
  //····················································································································

  var mTypeName_property = EBPropertyProxy_String ()

  //····················································································································
  //   Selection observable property: mVersion
  //····················································································································

  var mVersion_property = EBPropertyProxy_Int ()

  //····················································································································
  //   Selection observable property: pinNameShape
  //····················································································································

  var pinNameShape_property = EBTransientProperty_EBShape ()

  //····················································································································
  //   Selection observable property: versionString
  //····················································································································

  var versionString_property = EBTransientProperty_String ()

  //····················································································································
  //   BIND SELECTION
  //····················································································································

  private var mModel : ReadOnlyArrayOf_SymbolTypeInDevice? = nil

  //····················································································································

  final func bind_selection (model : ReadOnlyArrayOf_SymbolTypeInDevice) {
    self.mModel = model
    self.bind_property_documentSizeString (model: model)
    self.bind_property_instanceCount (model: model)
    self.bind_property_mFileData (model: model)
    self.bind_property_mFilledBezierPath (model: model)
    self.bind_property_mStrokeBezierPath (model: model)
    self.bind_property_mTypeName (model: model)
    self.bind_property_mVersion (model: model)
    self.bind_property_pinNameShape (model: model)
    self.bind_property_versionString (model: model)
  }

  //····················································································································
  //   UNBIND SELECTION
  //····················································································································

  final func unbind_selection () {
  //--- documentSizeString
    self.documentSizeString_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_documentSizeString (self.documentSizeString_property)
  //--- instanceCount
    self.instanceCount_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_instanceCount (self.instanceCount_property)
  //--- mFileData
    self.mFileData_property.mReadModelFunction = nil 
    self.mFileData_property.mWriteModelFunction = nil 
    self.mFileData_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_mFileData (self.mFileData_property)
  //--- mFilledBezierPath
    self.mFilledBezierPath_property.mReadModelFunction = nil 
    self.mFilledBezierPath_property.mWriteModelFunction = nil 
    self.mFilledBezierPath_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_mFilledBezierPath (self.mFilledBezierPath_property)
  //--- mStrokeBezierPath
    self.mStrokeBezierPath_property.mReadModelFunction = nil 
    self.mStrokeBezierPath_property.mWriteModelFunction = nil 
    self.mStrokeBezierPath_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_mStrokeBezierPath (self.mStrokeBezierPath_property)
  //--- mTypeName
    self.mTypeName_property.mReadModelFunction = nil 
    self.mTypeName_property.mWriteModelFunction = nil 
    self.mTypeName_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_mTypeName (self.mTypeName_property)
  //--- mVersion
    self.mVersion_property.mReadModelFunction = nil 
    self.mVersion_property.mWriteModelFunction = nil 
    self.mVersion_property.mValidateAndWriteModelFunction = nil 
    self.mModel?.removeEBObserverOf_mVersion (self.mVersion_property)
  //--- pinNameShape
    self.pinNameShape_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_pinNameShape (self.pinNameShape_property)
  //--- versionString
    self.versionString_property.mReadModelFunction = nil 
    self.mModel?.removeEBObserverOf_versionString (self.versionString_property)
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
    valueExplorer.action = #selector(SelectionController_DeviceDocument_symbolTypeSelection.showObjectWindowFromExplorerButton(_:))
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
      "mFileData",
      idx: self.mFileData_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mFileData_property.mObserverExplorer,
      valueExplorer: &self.mFileData_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mFilledBezierPath",
      idx: self.mFilledBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mFilledBezierPath_property.mObserverExplorer,
      valueExplorer: &self.mFilledBezierPath_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mStrokeBezierPath",
      idx: self.mStrokeBezierPath_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mStrokeBezierPath_property.mObserverExplorer,
      valueExplorer: &self.mStrokeBezierPath_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mTypeName",
      idx: self.mTypeName_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mTypeName_property.mObserverExplorer,
      valueExplorer: &self.mTypeName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mVersion",
      idx: self.mVersion_property.ebObjectIndex,
      y: &y,
      view: view,
      observerExplorer: &self.mVersion_property.mObserverExplorer,
      valueExplorer: &self.mVersion_property.mValueExplorer
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
    closeButton?.action = #selector(SelectionController_DeviceDocument_symbolTypeSelection.deleteSelectionControllerWindowAction(_:))
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

  private final func bind_property_documentSizeString (model : ReadOnlyArrayOf_SymbolTypeInDevice) {
    model.addEBObserverOf_documentSizeString (self.documentSizeString_property)
    self.documentSizeString_property.mReadModelFunction = { [weak self] in
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
            switch object.documentSizeString_property.selection {
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

  private final func bind_property_instanceCount (model : ReadOnlyArrayOf_SymbolTypeInDevice) {
    model.addEBObserverOf_instanceCount (self.instanceCount_property)
    self.instanceCount_property.mReadModelFunction = { [weak self] in
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
            switch object.instanceCount_property.selection {
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

  private final func bind_property_mFileData (model : ReadOnlyArrayOf_SymbolTypeInDevice) {
    model.addEBObserverOf_mFileData (self.mFileData_property)
    self.mFileData_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <Data> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mFileData_property.selection {
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
    self.mFileData_property.mWriteModelFunction = { [weak self] (inValue : Data) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mFileData_property.setProp (inValue)
          }
        }
      }
    }
    self.mFileData_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Data, windowForSheet : NSWindow?) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mFileData_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_mFilledBezierPath (model : ReadOnlyArrayOf_SymbolTypeInDevice) {
    model.addEBObserverOf_mFilledBezierPath (self.mFilledBezierPath_property)
    self.mFilledBezierPath_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <NSBezierPath> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mFilledBezierPath_property.selection {
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
    self.mFilledBezierPath_property.mWriteModelFunction = { [weak self] (inValue : NSBezierPath) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mFilledBezierPath_property.setProp (inValue)
          }
        }
      }
    }
    self.mFilledBezierPath_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : NSBezierPath, windowForSheet : NSWindow?) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mFilledBezierPath_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_mStrokeBezierPath (model : ReadOnlyArrayOf_SymbolTypeInDevice) {
    model.addEBObserverOf_mStrokeBezierPath (self.mStrokeBezierPath_property)
    self.mStrokeBezierPath_property.mReadModelFunction = { [weak self] in
      if let model = self?.mModel {
        switch model.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          var s = Set <NSBezierPath> ()
          var isMultipleSelection = false
          for object in v {
            switch object.mStrokeBezierPath_property.selection {
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
    self.mStrokeBezierPath_property.mWriteModelFunction = { [weak self] (inValue : NSBezierPath) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mStrokeBezierPath_property.setProp (inValue)
          }
        }
      }
    }
    self.mStrokeBezierPath_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : NSBezierPath, windowForSheet : NSWindow?) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mStrokeBezierPath_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_mTypeName (model : ReadOnlyArrayOf_SymbolTypeInDevice) {
    model.addEBObserverOf_mTypeName (self.mTypeName_property)
    self.mTypeName_property.mReadModelFunction = { [weak self] in
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
            switch object.mTypeName_property.selection {
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
    self.mTypeName_property.mWriteModelFunction = { [weak self] (inValue : String) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mTypeName_property.setProp (inValue)
          }
        }
      }
    }
    self.mTypeName_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : String, windowForSheet : NSWindow?) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mTypeName_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_mVersion (model : ReadOnlyArrayOf_SymbolTypeInDevice) {
    model.addEBObserverOf_mVersion (self.mVersion_property)
    self.mVersion_property.mReadModelFunction = { [weak self] in
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
            switch object.mVersion_property.selection {
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
    self.mVersion_property.mWriteModelFunction = { [weak self] (inValue : Int) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          break
        case .single (let v) :
          for object in v {
            object.mVersion_property.setProp (inValue)
          }
        }
      }
    }
    self.mVersion_property.mValidateAndWriteModelFunction = { [weak self] (candidateValue : Int, windowForSheet : NSWindow?) in
      if let model = self?.mModel {
        switch model.selection {
        case .empty, .multiple :
          return false
        case .single (let v) :
          for object in v {
            let result = object.mVersion_property.validateAndSetProp (candidateValue, windowForSheet:windowForSheet)
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

  private final func bind_property_pinNameShape (model : ReadOnlyArrayOf_SymbolTypeInDevice) {
    model.addEBObserverOf_pinNameShape (self.pinNameShape_property)
    self.pinNameShape_property.mReadModelFunction = { [weak self] in
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
            switch object.pinNameShape_property.selection {
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

  private final func bind_property_versionString (model : ReadOnlyArrayOf_SymbolTypeInDevice) {
    model.addEBObserverOf_versionString (self.versionString_property)
    self.versionString_property.mReadModelFunction = { [weak self] in
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
            switch object.versionString_property.selection {
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


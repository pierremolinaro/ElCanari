//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBPopUpButton) class EBPopUpButton : NSPopUpButton, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    noteObjectAllocation (self)
  }
  
  //····················································································································

  override func sendAction (_ action : Selector?, to : Any?) -> Bool {
    self.mSelectedTagController?.updateModel (sender: self)
    self.mSelectedIndexController?.updateModel (sender: self)
    return super.sendAction (action, to:to)
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  selectedTag binding
  //····················································································································

  private var mSelectedTagController : Controller_EBPopUpButton_selectedTag? = nil

  //····················································································································

  func bind_selectedTag (_ object : EBReadWriteProperty_Int, file : String, line : Int) {
    self.mSelectedTagController = Controller_EBPopUpButton_selectedTag (object: object, outlet: self)
  }

  //····················································································································

  func unbind_selectedTag () {
    self.mSelectedTagController?.unregister ()
    self.mSelectedTagController = nil
  }

  //····················································································································
  //  selectedIndex binding
  //····················································································································

  private var mSelectedIndexController : Controller_EBPopUpButton_Index? = nil

  //····················································································································

  func bind_selectedIndex (_ object : EBAbstractEnumProperty, file : String, line : Int) {
    self.mSelectedIndexController = Controller_EBPopUpButton_Index (object: object, outlet: self)
  }

  //····················································································································

  func unbind_selectedIndex () {
    self.mSelectedIndexController?.unregister ()
    self.mSelectedIndexController = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBPopUpButton_selectedTag
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_EBPopUpButton_selectedTag : EBSimpleController {

  //····················································································································

  private let mObject : EBReadWriteProperty_Int
  private let mOutlet : EBPopUpButton

  //····················································································································

  init (object : EBReadWriteProperty_Int, outlet : EBPopUpButton) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects: [object])
    self.mEventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    switch mObject.prop {
    case .empty :
      self.mOutlet.enableFromValueBinding (false)
    case .single (let v) :
      self.mOutlet.enableFromValueBinding (true)
      let result = self.mOutlet.selectItem (withTag: v)
      if !result {
        presentErrorWindow (#file, #line, "no item with tag: " + String (v))
      }
    case .multiple :
      self.mOutlet.enableFromValueBinding (false)
    }
  }

  //····················································································································

  func updateModel (sender : EBPopUpButton) {
    _ = mObject.validateAndSetProp (self.mOutlet.selectedTag (), windowForSheet: sender.window)
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBPopUpButton_Index
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_EBPopUpButton_Index : EBSimpleController {

  //····················································································································

  private let mObject : EBAbstractEnumProperty
  private let mOutlet : EBPopUpButton

  //····················································································································

  init (object : EBAbstractEnumProperty, outlet : EBPopUpButton) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object])
    self.mEventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    if let v = mObject.rawValue () {
      self.mOutlet.enableFromValueBinding (true)
      self.mOutlet.selectItem (at: v)
    }else{
      self.mOutlet.enableFromValueBinding (false)
    }
  }

  //····················································································································

  func updateModel (sender : EBPopUpButton) {
    self.mObject.setFrom (rawValue: self.mOutlet.indexOfSelectedItem)
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

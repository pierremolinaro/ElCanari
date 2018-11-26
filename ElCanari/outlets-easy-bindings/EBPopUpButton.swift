//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBPopUpButton) class EBPopUpButton : NSPopUpButton, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder: NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame:NSRect) {
    super.init (frame:frame)
    noteObjectAllocation (self)
  }
  
  //····················································································································

  override func sendAction (_ action : Selector?, to : Any?) -> Bool {
    mSelectedTagController?.updateModel (sender: self)
    mSelectedIndexController?.updateModel (sender: self)
    return super.sendAction (action, to:to)
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  selectedTag binding
  //····················································································································

  private var mSelectedTagController : Controller_EBPopUpButton_selectedTag?

  func bind_selectedTag (_ object:EBReadWriteProperty_Int, file:String, line:Int) {
    mSelectedTagController = Controller_EBPopUpButton_selectedTag (object:object, outlet:self, file:file, line:line)
  }

  func unbind_selectedTag () {
    mSelectedTagController?.unregister ()
    mSelectedTagController = nil
  }

  //····················································································································
  //  selectedIndex binding
  //····················································································································

  private var mSelectedIndexController : Controller_EBPopUpButton_Index?

  func bind_selectedIndex (_ object:EBAbstractEnumProperty, file:String, line:Int) {
    mSelectedIndexController = Controller_EBPopUpButton_Index (object:object, outlet:self, file:file, line:line)
  }

  func unbind_selectedIndex () {
    mSelectedIndexController?.unregister ()
    mSelectedIndexController = nil
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBPopUpButton_selectedTag
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc (Controller_EBPopUpButton_selectedTag)
final class Controller_EBPopUpButton_selectedTag : EBSimpleController {

  private let mObject : EBReadWriteProperty_Int
  private let mOutlet : EBPopUpButton

  //····················································································································

  init (object : EBReadWriteProperty_Int, outlet : EBPopUpButton, file : String, line : Int) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object])
    self.eventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    switch mObject.prop {
    case .empty :
      mOutlet.enableFromValueBinding (false)
    case .single (let v) :
      mOutlet.enableFromValueBinding (true)
      let result = mOutlet.selectItem (withTag: v)
      if !result {
        presentErrorWindow (file: #file, line:#line, errorMessage:"no item with tag: " + String (v))
      }
    case .multiple :
      mOutlet.enableFromValueBinding (false)
    }
  }

  //····················································································································

  func updateModel (sender : EBPopUpButton) {
    _ = mObject.validateAndSetProp (mOutlet.selectedTag (), windowForSheet:sender.window)
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBPopUpButton_Index
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc (Controller_EBPopUpButton_Index)
final class Controller_EBPopUpButton_Index : EBSimpleController {

  private let mObject : EBAbstractEnumProperty
  private let mOutlet : EBPopUpButton

  //····················································································································

  init (object : EBAbstractEnumProperty, outlet : EBPopUpButton, file : String, line : Int) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object])
    self.eventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    if let v = mObject.rawValue () {
      mOutlet.enableFromValueBinding (true)
      mOutlet.selectItem (at: v)
    }else{
      mOutlet.enableFromValueBinding (false)
    }
  }

  //····················································································································

  func updateModel (sender : EBPopUpButton) {
    mObject.setFrom(rawValue: mOutlet.indexOfSelectedItem)
//    if let value = GridStyle (rawValue: mOutlet.indexOfSelectedItem) {
//      _ = mObject.validateAndSetProp (value, windowForSheet:sender.window)
//    }
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

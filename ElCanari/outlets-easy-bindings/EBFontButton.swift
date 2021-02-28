//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

class EBFontButton : NSButton, EBUserClassNameProtocol {
  private var mFont : NSFont? = nil

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    noteObjectAllocation (self)
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  override func sendAction (_ action : Selector?, to : Any?) -> Bool {
    showFontManager ()
    return super.sendAction (action, to: to)
  }

  //····················································································································

  func showFontManager () {
    if let font = self.mFont {
      let fontManager = NSFontManager.shared
      fontManager.setSelectedFont (font, isMultiple: false)
      fontManager.orderFrontFontPanel (self)
      fontManager.target = self
      fontManager.action = #selector (EBFontButton.changeFont (_:))
    }
  }

  //····················································································································

  @objc func changeFont (_ sender : Any?) {
    if let font = self.mFont, let fontManager = sender as? NSFontManager {
      let newFont = fontManager.convert (font)
      self.mValueController?.mObject.setProp (newFont)
    }
  }

  //····················································································································

  func mySetFont (font : NSFont) {
    self.mFont = font
    let newTitle = String (format:"%@ - %g pt.", font.displayName!, font.pointSize)
    self.title = newTitle
  }

  //····················································································································
  //  $fontValue binding
  //····················································································································

  fileprivate func updateFont (_ object : EBReadOnlyProperty_NSFont) {
    switch object.selection {
    case .empty, .multiple :
      self.enableFromValueBinding (false)
      self.title = ""
    case .single (let v) :
      self.enableFromValueBinding (true)
      self.mySetFont (font: v)
    }
  }

  //····················································································································

  private var mValueController : Controller_EBFontButton_fontValue? = nil

  final func bind_fontValue (_ object : EBReadWriteProperty_NSFont) {
    self.mValueController = Controller_EBFontButton_fontValue (object: object, outlet: self)
  }

  final func unbind_fontValue () {
    self.mValueController?.unregister ()
    self.mValueController = nil
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   Controller_EBFontButton_fontValue
//----------------------------------------------------------------------------------------------------------------------

class Controller_EBFontButton_fontValue : EBReadOnlyPropertyController {

  fileprivate let mObject : EBReadWriteProperty_NSFont
  private let mOutlet : EBFontButton

  //····················································································································

  init (object : EBReadWriteProperty_NSFont, outlet : EBFontButton) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects: [object], callBack: { outlet.updateFont (object) })
  }

  //····················································································································

  override func unregister () {
    super.unregister ()
    self.mOutlet.target = nil
    self.mOutlet.action = nil
  }

  //····················································································································

  func updateModel (sender : EBFontButton) {
    _ = self.mObject.validateAndSetProp (self.mOutlet.font!, windowForSheet: sender.window)
  }

  //····················································································································
}

//----------------------------------------------------------------------------------------------------------------------

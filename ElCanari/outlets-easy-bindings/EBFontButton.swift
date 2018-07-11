//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBFontButton) class EBFontButton : NSButton, EBUserClassNameProtocol {
  private var mFont : NSFont?
  
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
    showFontManager ()
    return super.sendAction (action, to:to)
  }

  //····················································································································

  func showFontManager () {
    if let font = mFont {
      self.window?.makeFirstResponder (self)
      let fontManager = NSFontManager.shared ()
      fontManager.delegate = self
      fontManager.setSelectedFont (font, isMultiple:false)
      fontManager.orderFrontFontPanel (self)
    }
  }

  //····················································································································

  override func changeFont (_ sender : Any?) {
    if let valueController = mValueController, let fontManager = sender as! NSFontManager? {
      let newFont = fontManager.convert (mFont!)
      valueController.mObject.setProp (newFont)
    }
  }

  //····················································································································

  func mySetFont (font : NSFont) {
    mFont = font
    let newTitle = String (format:"%@ — %g pt.", font.displayName!, font.pointSize)
    self.title = newTitle
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  color binding
  //····················································································································

  private var mValueController : Controller_EBFontButton_fontValue?

  func bind_fontValue (_ object:EBReadWriteProperty_NSFont, file:String, line:Int) {
    mValueController = Controller_EBFontButton_fontValue (object:object, outlet:self, file:file, line:line)
  }

  func unbind_fontValue () {
    mValueController?.unregister ()
    mValueController = nil
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBFontButton_fontValue
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBFontButton_fontValue) class Controller_EBFontButton_fontValue : EBSimpleController {

  fileprivate let mObject : EBReadWriteProperty_NSFont
  private let mOutlet : EBFontButton

  //····················································································································

  init (object : EBReadWriteProperty_NSFont, outlet : EBFontButton, file : String, line : Int) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object], outlet:outlet)
    self.eventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································
  
  override func unregister () {
    super.unregister ()
    mOutlet.target = nil
    mOutlet.action = nil
  }

  //····················································································································

  private func updateOutlet () {
    switch mObject.prop {
    case .empty :
      mOutlet.enableFromValueBinding (false)
      mOutlet.title = ""
    case .single (let v) :
      mOutlet.enableFromValueBinding (true)
      mOutlet.mySetFont (font: v)
    case .multiple :
      mOutlet.enableFromValueBinding (false)
      mOutlet.title = ""
    }
  }

  //····················································································································

  func updateModel (sender : EBFontButton) {
//    mObject.validateAndSetProp (mOutlet.tag, windowForSheet:sender.window)
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

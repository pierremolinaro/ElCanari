//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBSwitch) class EBSwitch : NSButton, EBUserClassNameProtocol {

  //···················································································································· 

  required init? (coder: NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
    self.setButtonType (.switch)
  }

  //···················································································································· 

  override init (frame:NSRect) {
    super.init (frame:frame)
    noteObjectAllocation (self)
    self.setButtonType (.switch)
  }
  
  //···················································································································· 

  deinit {
    noteObjectDeallocation (self)
  }
  
  //···················································································································· 

  override func sendAction (_ action : Selector?, to : Any?) -> Bool {
    mValueController?.updateModel ()
    return super.sendAction (action, to:to)
  }

  //···················································································································· 
  //  value binding
  //···················································································································· 

  private var mValueController : Controller_EBSwitch_value?

  //···················································································································· 

  func bind_value (_ object: EBReadWriteProperty_Bool, file: String, line: Int) {
    mValueController = Controller_EBSwitch_value (object:object, outlet:self, file:file, line:line)
  }

  //···················································································································· 

  func unbind_value () {
    mValueController?.unregister ()
    mValueController = nil
  }

  //···················································································································· 
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller Controller_EBSwitch_value
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBSwitch_value) final class Controller_EBSwitch_value : EBSimpleController {

  private let mOutlet : EBSwitch
  private let mObject : EBReadWriteProperty_Bool

  //···················································································································· 

  init (object:EBReadWriteProperty_Bool, outlet : EBSwitch, file : String, line:Int) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object], outlet:outlet)
  }

  //···················································································································· 
  
  override func unregister () {
    super.unregister ()
  }

  //···················································································································· 

  override func sendUpdateEvent () {
    switch mObject.prop {
    case .empty :
      mOutlet.state = NSOffState
      mOutlet.enableFromValueBinding (false)
    case .multiple :
      mOutlet.state = NSMixedState
      mOutlet.enableFromValueBinding (false)
    case .single (let v) :
      mOutlet.state = v ? NSOnState : NSOffState
      mOutlet.enableFromValueBinding (true)
    }
  }

  //···················································································································· 

  func updateModel () {
    mObject.setProp (mOutlet.state == NSOnState)
  }
}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBSwitch_TableViewCell
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBSwitch_TableViewCell) class EBSwitch_TableViewCell : EBTableCellView {
  @IBOutlet var mCellOutlet : EBSwitch?

  //····················································································································

  func checkOutlet (columnName : String, file:String, line:Int) {
    if let cellOutlet : NSObject = mCellOutlet {
      if !(cellOutlet is EBSwitch) {
        presentErrorWindow (file: file,
          line: line,
          errorMessage:"\"\(columnName)\" column view is not an instance of EBSwitch"
        )
      }
    }else{
      presentErrorWindow (file: file,
        line: line,
        errorMessage:"\"\(columnName)\" column view mCellOutlet is nil (should be an instance of EBSwitch)"
      )
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

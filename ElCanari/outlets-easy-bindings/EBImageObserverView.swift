//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBImageObserverView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBImageObserverView) class EBImageObserverView : NSImageView, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame:frame)
    noteObjectAllocation (self)
  }
  
  //····················································································································

  deinit {
    noteObjectDeallocation (String (describing: type(of: self)))
  }

  //····················································································································
  //  image binding
  //····················································································································

  private var mImageController : Controller_EBImageView_image?

  func bind_image (_ object:EBReadOnlyProperty_NSImage, file:String, line:Int) {
    mImageController = Controller_EBImageView_image (object:object, outlet:self, file:file, line:line)
  }

  //····················································································································

  func unbind_image () {
    mImageController?.unregister ()
    mImageController = nil
  }

  //····················································································································
  //  tooltip binding
  //····················································································································

  private var mTooltipController : Controller_EBImageView_tooltip?

  func bind_tooltip (_ object:EBReadOnlyProperty_String, file:String, line:Int) {
    mTooltipController = Controller_EBImageView_tooltip (object:object, outlet:self, file:file, line:line)
  }

  //····················································································································

  func unbind_tooltip () {
    mTooltipController?.unregister ()
    mTooltipController = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller Controller_EBImageView_image
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBImageView_image) final class Controller_EBImageView_image : EBSimpleController {

  private let mOutlet : EBImageObserverView
  private let mObject : EBReadOnlyProperty_NSImage

  //····················································································································

  init (object:EBReadOnlyProperty_NSImage, outlet : EBImageObserverView, file : String, line : Int) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object])
    self.mEventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    switch mObject.prop {
    case .empty :
      mOutlet.image = nil
      mOutlet.enableFromValueBinding (false)
    case .multiple :
      mOutlet.image = nil
      mOutlet.enableFromValueBinding (false)
    case .single (let propertyValue) :
      mOutlet.image = propertyValue
      mOutlet.enableFromValueBinding (true)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller Controller_EBImageView_tooltip
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBImageView_tooltip) final class Controller_EBImageView_tooltip : EBSimpleController {

  private let mOutlet : EBImageObserverView
  private let mObject : EBReadOnlyProperty_String

  //····················································································································

  init (object:EBReadOnlyProperty_String, outlet : EBImageObserverView, file : String, line : Int) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object])
    self.mEventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    switch mObject.prop {
    case .empty :
      mOutlet.toolTip = nil
      mOutlet.enableFromValueBinding (false)
    case .multiple :
      mOutlet.toolTip = nil
      mOutlet.enableFromValueBinding (false)
    case .single (let propertyValue) :
      mOutlet.toolTip = propertyValue
      mOutlet.enableFromValueBinding (true)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBImageObserverView_TableViewCell
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBImageObserverView_TableViewCell) class EBImageObserverView_TableViewCell : EBTableCellView {
  @IBOutlet var mCellOutlet : EBImageObserverView? = nil

  //····················································································································

  func checkOutlet (columnName : String, file:String, line:Int) {
    if let cellOutlet : NSObject = mCellOutlet {
      if !(cellOutlet is EBImageObserverView) {
        presentErrorWindow (file: file,
          line: line,
          errorMessage:"\"\(columnName)\" column view is not an instance of EBImageObserverView"
        )
      }
    }else{
      presentErrorWindow (file: file,
        line: line,
        errorMessage:"\"\(columnName)\" column view mCellOutlet is nil (should be an instance of EBImageObserverView)"
      )
    }
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

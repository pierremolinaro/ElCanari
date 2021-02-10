//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBImageObserverView
//----------------------------------------------------------------------------------------------------------------------

class EBImageObserverView : NSImageView, EBUserClassNameProtocol {

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

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  image binding
  //····················································································································

  fileprivate func updateImage (_ object : EBReadOnlyProperty_NSImage) {
    switch object.selection {
    case .empty :
      self.image = nil
      self.enableFromValueBinding (false)
    case .multiple :
      self.image = nil
      self.enableFromValueBinding (false)
    case .single (let propertyValue) :
      self.image = propertyValue
      self.enableFromValueBinding (true)
    }
  }

  //····················································································································

  fileprivate var mImageController : EBReadOnlyPropertyController? = nil

  //····················································································································

  func bind_image (_ object : EBReadOnlyProperty_NSImage) {
    self.mImageController = EBReadOnlyPropertyController (observedObjects: [object], callBack: { self.updateImage (object) } )
  }

  //····················································································································

  func unbind_image () {
    self.mImageController?.unregister ()
    self.mImageController = nil
  }

  //····················································································································
  //  tooltip binding
  //····················································································································

  fileprivate func updateTooltip (_ object : EBReadOnlyProperty_String) {
    switch object.selection {
    case .empty :
      self.toolTip = nil
      self.enableFromValueBinding (false)
    case .multiple :
      self.toolTip = nil
      self.enableFromValueBinding (false)
    case .single (let propertyValue) :
      self.toolTip = propertyValue
      self.enableFromValueBinding (true)
    }
  }

  //····················································································································

  private var mTooltipController : EBReadOnlyPropertyController? = nil

  //····················································································································

  func bind_tooltip (_ object : EBReadOnlyProperty_String) {
    self.mTooltipController = EBReadOnlyPropertyController (observedObjects: [object], callBack : { self.updateTooltip (object) })
  }

  //····················································································································

  func unbind_tooltip () {
    self.mTooltipController?.unregister ()
    self.mTooltipController = nil
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   EBImageObserverView_TableViewCell
//----------------------------------------------------------------------------------------------------------------------

@objc(EBImageObserverView_TableViewCell) class EBImageObserverView_TableViewCell : EBTableCellView {

  //····················································································································

  @IBOutlet var mCellOutlet : EBImageObserverView? = nil

  //····················································································································

  func checkOutlet (columnName : String, file : String, line : Int) {
    checkOutletConnection (self.mCellOutlet, "\"\(columnName)\" column view", EBImageObserverView.self, file, line)
  }

  //····················································································································

  func update () {
    self.mCellOutlet?.mImageController?.mEventCallBack? ()
  }

  //····················································································································
}

//----------------------------------------------------------------------------------------------------------------------

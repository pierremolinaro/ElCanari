//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBButton) class EBButton : NSButton, EBUserClassNameProtocol {

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
  //  title binding
  //····················································································································

  fileprivate func updateTitle (_ object : EBReadOnlyProperty_String) {
    switch object.prop {
    case .empty :
      self.title = "—"
    case .multiple :
      self.title = "—"
    case .single (let v) :
      self.title = v
    }
  }

  //····················································································································

  private var mTitleController : EBSimpleController? = nil

  //····················································································································

  func bind_title (_ object : EBReadOnlyProperty_String, file : String, line : Int) {
    self.mTitleController = EBSimpleController (
      observedObjects: [object],
      callBack: { [weak self] in self?.updateTitle (object) }
    )
  }

  //····················································································································

  func unbind_title () {
    self.mTitleController?.unregister ()
    self.mTitleController = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBButton_TableViewCell
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBButton_TableViewCell) class EBButton_TableViewCell : EBTableCellView {
  @IBOutlet var mCellOutlet : EBButton? = nil

  //····················································································································

  func checkOutlet (columnName : String, file : String, line : Int) {
    if let cellOutlet : NSObject = self.mCellOutlet {
      if !(cellOutlet is EBButton) {
        presentErrorWindow (file, line, "\"\(columnName)\" column view is not an instance of EBButton")
      }
    }else{
      presentErrorWindow (file, line, "\"\(columnName)\" column view mCellOutlet is nil (should be an instance of EBButton)")
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

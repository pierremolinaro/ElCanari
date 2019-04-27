import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class CanariEnumSegmentedControl : NSSegmentedControl, EBUserClassNameProtocol {

  //····················································································································
  //  init
  //····················································································································

  required init? (coder: NSCoder) {
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
  //  selectedSegment
  //····················································································································

//  override var selectedSegment : Int {
//    didSet {
//      if self.selectedSegment != oldValue {
//        self.selectViewFromSelectedSegmentIndex ()
//      }
//    }
//  }

  //····················································································································
  //  sendAction
  //····················································································································

  override func sendAction (_ inAction : Selector?, to target : Any?) -> Bool {
    self.mController?.updateModel (self)
    return super.sendAction (inAction, to: target)
  }

  //····················································································································
  //    binding
  //····················································································································

  fileprivate func updateSelectedSegment (_ object : EBAbstractEnumProperty) {
    self.selectedSegment = object.rawValue () ?? 0
  }

  //····················································································································

  private var mController : Controller_CanariEnumSegmentedControl_selectedSegment? = nil

  //····················································································································

  func bind_selectedSegment (_ object : EBAbstractEnumProperty, file : String, line : Int) {
    self.mController = Controller_CanariEnumSegmentedControl_selectedSegment (object:object, outlet:self)
  }

  //····················································································································

  func unbind_selectedSegment () {
    self.mController?.unregister ()
    self.mController = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_CanariEnumSegmentedControl_selectedSegment
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_CanariEnumSegmentedControl_selectedSegment : EBSimpleController {

  private let mObject : EBAbstractEnumProperty
  private let mOutlet : CanariEnumSegmentedControl

  //····················································································································

  init (object : EBAbstractEnumProperty, outlet : CanariEnumSegmentedControl) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object], callBack: { outlet.updateSelectedSegment (object) })
  }

  //····················································································································

  func updateModel (_ sender : CanariEnumSegmentedControl) {
    self.mObject.setFrom (rawValue: self.mOutlet.selectedSegment)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

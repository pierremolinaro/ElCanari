//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

class AutoLayoutVerticalStackView : AutoLayoutStackView {

  //····················································································································
  //   INIT
  //····················································································································

  init () {
    super.init (orientation: .vertical)
    self.alignment = .width
  }

  //····················································································································

  required init? (coder inCoder : NSCoder) {
    fatalError ("init(coder:) has not been implemented")
  }

  //····················································································································
  // fillHorizontally
  //····················································································································

//  func fillHorizontally () -> Self {
////    self.alignment = .width
//    return self
//  }

  //····················································································································
  // SET WIDTH
  //····················································································································

  private var mWidth = NSView.noIntrinsicMetric

  //····················································································································

  final func set (width inWidth : Int) -> Self {
    self.mWidth = CGFloat (inWidth)
    self.needsUpdateConstraints = true
    return self
  }

  //····················································································································

  override var intrinsicContentSize : NSSize {
    return NSSize (width: self.mWidth, height: NSView.noIntrinsicMetric)
  }

  //····················································································································

  private var mConstraints = [NSLayoutConstraint] ()

  override func updateConstraints () {
    self.removeConstraints (self.mConstraints)
    self.mConstraints.removeAll ()
    var spaceViewArray = [AutoLayoutFlexibleSpace] ()
    for view in self.subviews {
      if let spaceView = view as? AutoLayoutFlexibleSpace {
        spaceViewArray.append (spaceView)
      }
    }
    if let oneSpaceView = spaceViewArray.popLast () {
      for spaceView in spaceViewArray {
        let c = NSLayoutConstraint (item: oneSpaceView, attribute: .height, relatedBy: .equal, toItem: spaceView, attribute: .height, multiplier: 1.0, constant: 0.0)
        self.mConstraints.append (c)
      }
      self.addConstraints (self.mConstraints)
    }
    super.updateConstraints ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

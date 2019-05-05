//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBView) class EBView : NSView, EBUserClassNameProtocol, EBViewScaleProvider {

  //····················································································································
  // MARK: -
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

  override func ebCleanUp () {
    super.ebCleanUp ()
    self.mViewController = nil
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  override var isFlipped : Bool { return false }

  //····················································································································

  override var isOpaque: Bool { return true }

  //····················································································································
  // MARK: -
  //····················································································································

   private weak var mViewController : EBViewControllerProtocol? = nil // SOULD BE WEAK

  //····················································································································

   var viewController : EBViewControllerProtocol? { return self.mViewController }

  //····················································································································

  func set (controller inController : EBViewControllerProtocol?) {
    self.mViewController = inController
  }

  //····················································································································
  // MARK: -
  //····················································································································

  internal var mSelectionRectangle : NSRect? = nil {
    didSet {
      if let oldSelectionRectangle = oldValue {
        self.setNeedsDisplay (oldSelectionRectangle.insetBy(dx: -1.0, dy: -1.0))
      }
      if let newSelectionRectangle = self.mSelectionRectangle {
        self.setNeedsDisplay (newSelectionRectangle.insetBy(dx: -1.0, dy: -1.0))
      }
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  final var mUnderObjectsDisplay = EBShape () {
    didSet {
      self.noteInvalidRectangles (old: oldValue, new: self.mUnderObjectsDisplay)
      if self.mUnderObjectsDisplay != oldValue {
        self.updateViewFrameAndBounds ()
      }
    }
  }

  //····················································································································

  final internal var mUnderObjectsDisplayController : EBSimpleController?

  //····················································································································
  // MARK: -
  //····················································································································

  final var mOverObjectsDisplay = EBShape () {
    didSet {
      self.noteInvalidRectangles (old: oldValue, new: self.mOverObjectsDisplay)
      if self.mOverObjectsDisplay != oldValue {
        self.updateViewFrameAndBounds ()
      }
    }
  }

  //····················································································································

  internal var mOverObjectsDisplayController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  internal var mGuideBezierPath : NSBezierPath? = nil {
    willSet {
      self.invalidateGuideBezierPath ()
    }
    didSet {
      self.invalidateGuideBezierPath ()
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  private var mArrowKeyMagnitude : Int = milsToCanariUnit (25)

  //····················································································································

  var arrowKeyMagnitude : Int { return self.mArrowKeyMagnitude }

  //····················································································································

  func set (arrowKeyMagnitude : Int) {
    self.mArrowKeyMagnitude = arrowKeyMagnitude
  }

  //····················································································································

  internal var mArrowKeyMagnitudeController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  private var mShiftArrowKeyMagnitude : Int = milsToCanariUnit (100)

  //····················································································································

  var shiftArrowKeyMagnitude : Int { return self.mShiftArrowKeyMagnitude }

 //····················································································································

  func set (shiftArrowKeyMagnitude : Int) {
    self.mShiftArrowKeyMagnitude = shiftArrowKeyMagnitude
  }

 //····················································································································

  internal var mShiftArrowKeyMagnitudeController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final var mBackColor : NSColor = NSColor.white {
    didSet {
      self.needsDisplay = true
    }
  }

  //····················································································································

  internal var mBackColorController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  private var mObjectDisplayArray = [EBShape] ()

  //····················································································································

  var objectDisplayArray : [EBShape] { return mObjectDisplayArray }

  //····················································································································

  func updateObjectDisplay (_ inObjectDisplayArray : [EBShape]) {
   //  Swift.print ("updateObjectDisplay")
    self.noteInvalidRectangles (old: self.mObjectDisplayArray, new: inObjectDisplayArray)
    self.mObjectDisplayArray = inObjectDisplayArray
    self.updateViewFrameAndBounds ()
  }

  //····················································································································

  var objectsAndIssueBoundingBox : NSRect {
    var r = NSRect.null
    for shape in self.mObjectDisplayArray {
      r = r.union (shape.boundingBox)
    }
    r = r.union (self.issueBoundingBox)
    r = r.union (self.mUnderObjectsDisplay.boundingBox)
    r = r.union (self.mOverObjectsDisplay.boundingBox)
    r = r.union (self.selectionShapeBoundingBox)
    return r
  }

  //····················································································································
  // MARK: -
  //····················································································································

  fileprivate var mMouseGridInCanariUnit : Int = 1 // No grid for mouse

  //····················································································································

  var mouseGridInCanariUnit : Int { return mMouseGridInCanariUnit }

  //····················································································································

  func set (mouseGridInCanariUnit : Int) {
    self.mMouseGridInCanariUnit = mouseGridInCanariUnit
  }

  //····················································································································

  internal var mMouseGridController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  internal var mLastMouseDraggedLocation : CanariPoint? = nil
  internal var mSelectionRectangleOrigin : NSPoint? = nil
  internal var mPossibleKnob : (Int, Int)? = nil // Object index, knob index
  internal var mPerformEndUndoGroupingOnMouseUp = false
  var mDraggingObjectsIsAlignedOnArrowKeyMagnitude = false

  //····················································································································
  // MARK: -
  //····················································································································

  private var mPasteboardType : NSPasteboard.PasteboardType? = nil

  //····················································································································

  var pasteboardType : NSPasteboard.PasteboardType? { return self.mPasteboardType }

  //····················································································································

  func register (pasteboardType inPasteboardType : NSPasteboard.PasteboardType?) {
    self.mPasteboardType = inPasteboardType
  }

  //····················································································································
  //   MARK: -
  //   Selection Layer
  //····················································································································

  private var mSelectionShapes = [EBShape] ()

  //····················································································································

  var selectionShapes : [EBShape] { return self.mSelectionShapes }

  //····················································································································

  var selectionShapeBoundingBox : NSRect {
    var r = NSRect.null
    for shape in self.mSelectionShapes {
      r = r.union (shape.boundingBox)
    }
    return r
  }

  //····················································································································

  func updateSelectionShape (_ inShapes : [EBShape]) {
    if self.mSelectionShapes != inShapes {
//      Swift.print ("updateSelectionShape Change")
      for shape in self.mSelectionShapes {
        if !shape.boundingBox.isEmpty {
          // Swift.print ("  old \(shape.boundingBox)")
          self.setNeedsDisplay (shape.boundingBox.insetBy(dx: -1.0, dy: -1.0))
        }
      }
      self.mSelectionShapes = inShapes
      for shape in self.mSelectionShapes {
        if !shape.boundingBox.isEmpty {
           //Swift.print ("  new \(shape.boundingBox)")
          self.setNeedsDisplay (shape.boundingBox.insetBy(dx: -1.0, dy: -1.0))
        }
      }
      self.updateViewFrameAndBounds ()
    }
  }

  //····················································································································
  //  MARK: -
  //····················································································································

  internal func updateViewFrameAndBounds () {
    let s = self.actualScale
    var newBounds = NSRect () // For including point (0, 0)
    newBounds = newBounds.union (self.objectsAndIssueBoundingBox)
    newBounds = newBounds.union (self.mMinimumRectangle)
//    if let clipView = self.superview as? NSClipView {
////      let r = self.convert (clipView.documentVisibleRect, from: clipView)
//      let r = clipView.documentVisibleRect
//      newBounds = newBounds.union (r)
//    }
    let currentBounds = self.bounds
    if currentBounds != newBounds {
      // Swift.print ("updateViewFrameAndBounds change")
      self.frame.size = newBounds.size
      self.bounds = newBounds
      self.applyZoom (Int (s * 100.0))
    }
  }

  //····················································································································
  //  MARK: -
  //····················································································································

  internal var mZoomPopUpButton : NSPopUpButton? = nil
  internal var mXPlacard : NSTextField? = nil
  internal var mYPlacard : NSTextField? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  internal var mXPlacardUnit = 2286 // mils

  //····················································································································

  func set (XPlacardUnit inUnit : Int) {
     self.mXPlacardUnit = inUnit
  }

  //····················································································································

  internal var mXPlacardUnitController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  internal var mYPlacardUnit = 2286 // mils

  //····················································································································

  func set (YPlacardUnit inUnit : Int) {
     self.mYPlacardUnit = inUnit
  }

  //····················································································································

  internal var mYPlacardUnitController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  private var mMinimumRectangle = NSRect ()

  //····················································································································

  func set (minimumRectangle inRect : NSRect) {
    if self.mMinimumRectangle != inRect {
      self.mMinimumRectangle = inRect
      self.updateViewFrameAndBounds ()
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  override var acceptsFirstResponder : Bool { return true }

  //····················································································································

  override func becomeFirstResponder () -> Bool { return true }

  //····················································································································

  override func resignFirstResponder () -> Bool { return true }

  //····················································································································
  //  Focus ring (https://developer.apple.com/library/content/qa/qa1785/_index.html)
  //····················································································································

  override var focusRingMaskBounds : NSRect { return self.bounds }

  //····················································································································

  override func drawFocusRingMask () {
    NSBezierPath.fill (self.bounds)
  }

  //····················································································································
  // MARK: -
  //····················································································································

  internal var mIssueBezierPath : NSBezierPath? = nil
  internal var mIssueKind : CanariIssueKind = .error // Any value, not used if mIssueBezierPath is nil

  //····················································································································
  // MARK: -
  //····················································································································

  internal var mZoomController : Controller_CanariViewWithZoomAndFlip_zoom?

  //····················································································································
  // MARK: -
  //····················································································································

  final private var mHorizontalFlip = false
  final private var mVerticalFlip = false

  //····················································································································

  final func set (horizontalFlip inFlip : Bool) {
    self.flip (horizontal: inFlip, vertical: self.mVerticalFlip)
  }

  //····················································································································

  final var horizontalFlip : Bool {
    return self.mHorizontalFlip
  }

  //····················································································································

  final func setVerticalFlip (_ inFlip : Bool) {
    self.flip (horizontal: self.mHorizontalFlip, vertical: inFlip)
  }

  //····················································································································

  final var verticalFlip : Bool {
    return self.mVerticalFlip
  }

  //····················································································································

  fileprivate func flip (horizontal inHorizontalFlip : Bool, vertical inVerticalFlip : Bool) {
     if let clipView = self.superview as? NSClipView {
       let toggleHorizontalFlip : CGFloat = (inHorizontalFlip != self.mHorizontalFlip) ? -1.0 : 1.0
       let toggleVerticalFlip   : CGFloat = (inVerticalFlip   != self.mVerticalFlip)   ? -1.0 : 1.0
       clipView.scaleUnitSquare (to: NSSize (width: toggleHorizontalFlip, height: toggleVerticalFlip))
       self.mHorizontalFlip = inHorizontalFlip
       self.mVerticalFlip = inVerticalFlip
     }
  }

  //····················································································································

  final internal var mHorizontalFlipController : EBSimpleController? = nil

  //····················································································································

  final internal var mVerticalFlipController : EBSimpleController? = nil

  //····················································································································
  // Grid Style
  // MARK: -
  //····················································································································

  final var mGridStyle : GridStyle = .noGrid {
    didSet {
      if self.mGridStyle != oldValue {
        self.needsDisplay = true
      }
    }
  }

  //····················································································································

  final internal var mGridStyleController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final var mGridStepInCanariUnit : Int = milsToCanariUnit (25) {
    didSet {
      if (self.mGridStepInCanariUnit != oldValue) && (self.mGridStyle != .noGrid)  {
        self.needsDisplay = true
      }
    }
  }

  //····················································································································

  final internal var mGridStepController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final var mGridDisplayFactor : Int = 4 {
    didSet {
      if (self.mGridDisplayFactor != oldValue) && (self.mGridStyle != .noGrid)  {
        self.needsDisplay = true
      }
    }
  }

  //····················································································································

  final internal var mGridDisplayFactorController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final var mGridLineColor : NSColor = .black {
    didSet {
      if (self.mGridLineColor != oldValue) && (self.mGridStyle == .line)  {
        self.needsDisplay = true
      }
    }
  }

  //····················································································································

  final internal var mGridLineColorController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  var mGridCrossColor : NSColor = .black {
    didSet {
      if (self.mGridCrossColor != oldValue) && (self.mGridStyle == .cross)  {
        self.needsDisplay = true
      }
    }
  }

  //····················································································································

  internal var mGridCrossColorController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  var mPopulateContextualMenuClosure : Optional < (_ inPoint : CanariPoint) -> NSMenu > = nil

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


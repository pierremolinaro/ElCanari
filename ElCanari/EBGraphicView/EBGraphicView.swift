//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBGraphicView
//----------------------------------------------------------------------------------------------------------------------

class EBGraphicView : NSView, EBUserClassNameProtocol, EBGraphicViewScaleProvider {

  //····················································································································
  // MARK: -
  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    noteObjectAllocation (self)
    self.postsFrameChangedNotifications = true
    NotificationCenter.default.addObserver (
      self,
      selector: #selector (self.ebFrameChanged (_:)),
      name: NSView.frameDidChangeNotification,
      object: self
    )
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    noteObjectAllocation (self)
    self.postsFrameChangedNotifications = true
    NotificationCenter.default.addObserver (
      self,
      selector: #selector (self.ebFrameChanged (_:)),
      name: NSView.frameDidChangeNotification,
      object: self
    )
  }

  //····················································································································

  override func awakeFromNib () {
    super.awakeFromNib ()
    if !self.wantsLayer {
      presentErrorWindow (#file, #line, "EBGraphicView requires layer")
    }
    self.installPlacards ()
    self.addEndLiveMagnificationObserver ()
    self.updateViewFrameAndBounds ()
  }

  //····················································································································

  override func ebCleanUp () {
    super.ebCleanUp ()
    self.mViewController = nil
    NotificationCenter.default.removeObserver (
      self,
      name: NSView.frameDidChangeNotification,
      object: self
    )
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  final override var isFlipped : Bool { return false }

  //····················································································································

  final override var isOpaque : Bool { return true }

  //····················································································································

  final internal var mTrackingArea : NSTrackingArea? = nil

  //····················································································································

  final internal var mZoomPropertyCache = 0 // Used in EBGraphicView-magnify-and-zoom.swift

  //····················································································································

  final var mDrawFrameIssue = true

  //····················································································································
  // MARK: -
  //····················································································································

  @objc private func ebFrameChanged (_ inNotification : Notification) {
    self.defineToolTips ()
  }

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mMouseDownBehaviour = DefaultBehaviourOnMouseDown ()

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mStartOptionMouseDownCallback : Optional < (_ inUnalignedMouseLocation : NSPoint) -> Void > = nil
  final internal var mContinueOptionMouseDraggedCallback : Optional < (_ inUnalignedMouseLocation : NSPoint, _ inModifierFlags : NSEvent.ModifierFlags) -> Void > = nil
  final internal var mAbortOptionMouseOperationCallback : Optional < () -> Void > = nil
  final internal var mStopOptionMouseUpCallback : Optional < (_ inUnalignedMouseLocation : NSPoint) -> Bool > = nil

  //····················································································································

  final func setOptionMouseCallbacks (start inStartCallback : @escaping (_ inUnalignedMouseLocation : NSPoint) -> Void,
                                      continue inContinueCallback : @escaping (_ inUnalignedMouseLocation : NSPoint, _ inModifierFlags : NSEvent.ModifierFlags) -> Void,
                                      abort inAbortCallback : @escaping () -> Void,
                                      stop inStopCallback : @escaping (_ inUnalignedMouseLocation : NSPoint) -> Bool) {
    self.mStartOptionMouseDownCallback = inStartCallback
    self.mContinueOptionMouseDraggedCallback = inContinueCallback
    self.mAbortOptionMouseOperationCallback = inAbortCallback
    self.mStopOptionMouseUpCallback = inStopCallback
  }

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mMouseMovedOrFlagsChangedCallback : Optional < (_ inMouseUnalignedLocation : NSPoint) -> Void> = nil

  //····················································································································

  final func setMouseMovedOrFlagsChangedCallback (_ inCallback : @escaping (_ inMouseUnalignedLocation : NSPoint) -> Void) {
    self.mMouseMovedOrFlagsChangedCallback = inCallback
  }

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mOptionalFrontShape : EBShape? = nil {
    didSet {
      if self.mOptionalFrontShape != oldValue {
        if let oldBox = oldValue?.boundingBox {
          self.setNeedsDisplay (oldBox)
        }
        if let newBox = self.mOptionalFrontShape?.boundingBox {
          self.setNeedsDisplay (newBox)
        }
      }
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mMouseExitCallback : Optional < () -> Void> = nil

  //····················································································································

  final func setMouseExitCallback (_ inCallback : @escaping () -> Void) {
    self.mMouseExitCallback = inCallback
  }

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mKeyDownCallback : Optional < (_ inMouseLocation : NSPoint, _ inKey : UnicodeScalar) -> Void> = nil

  //····················································································································

  final func setKeyDownCallback (_ inCallback : @escaping (_ inMouseLocation : NSPoint, _ inKey : UnicodeScalar) -> Void) {
    self.mKeyDownCallback = inCallback
  }

  //····················································································································
  // MARK: -
  //····················································································································

   final private weak var mViewController : EBGraphicViewControllerProtocol? = nil // SOULD BE WEAK

  //····················································································································

  final var viewController : EBGraphicViewControllerProtocol? { return self.mViewController }

  //····················································································································

  final func set (controller inController : EBGraphicViewControllerProtocol?) {
    self.mViewController = inController
  }

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mSelectionRectangle : NSRect? = nil {
    didSet {
      if let oldSelectionRectangle = oldValue {
        self.setNeedsDisplay (oldSelectionRectangle.insetBy (dx: -1.0, dy: -1.0))
      }
      if let newSelectionRectangle = self.mSelectionRectangle {
        self.setNeedsDisplay (newSelectionRectangle.insetBy (dx: -1.0, dy: -1.0))
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

  final internal var mOverObjectsDisplayController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mGuideBezierPath : NSBezierPath? = nil {
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

  final private var mArrowKeyMagnitude : Int = milsToCanariUnit (fromInt: 25)

  //····················································································································

  final var arrowKeyMagnitude : Int { return self.mArrowKeyMagnitude }

  //····················································································································

  final func set (arrowKeyMagnitude : Int) {
    self.mArrowKeyMagnitude = arrowKeyMagnitude
  }

  //····················································································································

  final internal var mArrowKeyMagnitudeController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final private var mShiftArrowKeyMagnitude : Int = milsToCanariUnit (fromInt: 100)

  //····················································································································

  final var shiftArrowKeyMagnitude : Int { return self.mShiftArrowKeyMagnitude }

 //····················································································································

  final func set (shiftArrowKeyMagnitude : Int) {
    self.mShiftArrowKeyMagnitude = shiftArrowKeyMagnitude
  }

 //····················································································································

  final internal var mShiftArrowKeyMagnitudeController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final var mBackColor : NSColor = NSColor.white {
    didSet {
      self.needsDisplay = true
      if let scrollView = self.superview?.superview as? NSScrollView {
        scrollView.backgroundColor = self.mBackColor
      }
    }
  }

  //····················································································································

  final internal var mBackColorController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final private var mObjectDisplayArray = [EBShape] () {
    didSet {
      if self.mObjectDisplayArray != oldValue {
        self.noteInvalidRectangles (old: oldValue, new: self.mObjectDisplayArray)
        self.updateViewFrameAndBounds ()
        self.defineToolTips ()
      }
    }
  }

  //····················································································································

  final var objectDisplayArray : [EBShape] { return mObjectDisplayArray }

  //····················································································································

  final func updateObjectDisplay (_ inObjectDisplayArray : [EBShape]) {
    self.mObjectDisplayArray = inObjectDisplayArray
  }

  //····················································································································

  final var objectsAndIssueBoundingBox : NSRect {
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

  final fileprivate var mMouseGridInCanariUnit : Int = 1 // No grid for mouse

  //····················································································································

  final var mouseGridInCanariUnit : Int { return mMouseGridInCanariUnit }

  //····················································································································

  final func set (mouseGridInCanariUnit : Int) {
    self.mMouseGridInCanariUnit = mouseGridInCanariUnit
  }

  //····················································································································

  final internal var mMouseGridController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final private var mPasteboardType : NSPasteboard.PasteboardType? = nil

  //····················································································································

  final var pasteboardType : NSPasteboard.PasteboardType? { return self.mPasteboardType }

  //····················································································································

  final func register (pasteboardType inPasteboardType : NSPasteboard.PasteboardType?) {
    self.mPasteboardType = inPasteboardType
  }

  //····················································································································
  //   MARK: -
  //   Selection Layer
  //····················································································································

  final private var mSelectionShapes = [EBShape] ()

  //····················································································································

  final var selectionShapes : [EBShape] {
    self.mViewController?.computeSelectionShape ()
    return self.mSelectionShapes
  }

  //····················································································································

  final var selectionShapeBoundingBox : NSRect {
    var r = NSRect.null
    for shape in self.mSelectionShapes {
      r = r.union (shape.boundingBox)
    }
    return r
  }

  //····················································································································

  final func updateSelectionShape (_ inShapes : [EBShape]) {
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

  final private var mDeferredUpdateViewFrameAndBoundsRegistered = false

  final internal func updateViewFrameAndBounds () {
    if !self.mDeferredUpdateViewFrameAndBoundsRegistered && (NSEvent.pressedMouseButtons == 0) {
      var candidateBounds = NSRect () // For including point (0, 0)
      candidateBounds = candidateBounds.union (self.objectsAndIssueBoundingBox)
      candidateBounds = candidateBounds.union (self.mMinimumRectangle)
      if let ciImage = self.mBackgroundImage {
        let bp = NSBezierPath (rect: ciImage.extent)
        let transformedBP = self.mBackgroundImageAffineTransform.transform (bp)
        candidateBounds = candidateBounds.union (transformedBP.bounds)
      }
      if self.bounds != candidateBounds {
        self.mDeferredUpdateViewFrameAndBoundsRegistered = true
        DispatchQueue.main.async {
          self.mDeferredUpdateViewFrameAndBoundsRegistered = false
          var newBounds = NSRect () // For including point (0, 0)
          newBounds = newBounds.union (self.objectsAndIssueBoundingBox)
          newBounds = newBounds.union (self.mMinimumRectangle)
          if let ciImage = self.mBackgroundImage {
            let bp = NSBezierPath (rect: ciImage.extent)
            let transformedBP = self.mBackgroundImageAffineTransform.transform (bp)
            newBounds = newBounds.union (transformedBP.bounds)
          }
          self.frame.size = newBounds.size
          self.bounds = newBounds
          self.setNeedsDisplay (self.frame)
          self.applyZoom ()
        }
      }
    }
  }

  //····················································································································
  //  MARK: -
  //····················································································································

  final internal var mZoomPopUpButton : NSPopUpButton? = nil
  final internal var mZoomToFitButton : NSButton? = nil
  final internal var mXYwindow : NSWindow? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mXPlacardUnit = 2286 // mils

  //····················································································································

  final func set (XPlacardUnit inUnit : Int) {
     self.mXPlacardUnit = inUnit
  }

  //····················································································································

  final internal var mXPlacardUnitController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mYPlacardUnit = 2286 // mils

  //····················································································································

  final func set (YPlacardUnit inUnit : Int) {
     self.mYPlacardUnit = inUnit
  }

  //····················································································································

  final internal var mYPlacardUnitController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final private var mMinimumRectangle = NSRect ()

  //····················································································································

  final func set (minimumRectangle inRect : NSRect) {
    if self.mMinimumRectangle != inRect {
      self.mMinimumRectangle = inRect
      self.updateViewFrameAndBounds ()
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mIssueBezierPathes = [EBBezierPath] ()
  final internal var mIssueKind : CanariIssueKind = .error // Any value, not used if mIssueBezierPath is nil

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mZoomController : Controller_CanariViewWithZoomAndFlip_zoom? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final internal var mControlKeyHiliteDiameterController : EBSimpleController? = nil

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

  final fileprivate func flip (horizontal inHorizontalFlip : Bool, vertical inVerticalFlip : Bool) {
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

  final var mGridStepInCanariUnit : Int = milsToCanariUnit (fromInt: 25) {
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

  final var mGridCrossColor : NSColor = .black {
    didSet {
      if (self.mGridCrossColor != oldValue) && (self.mGridStyle == .cross)  {
        self.needsDisplay = true
      }
    }
  }

  //····················································································································

  final internal var mGridCrossColorController : EBSimpleController? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final var mPopulateContextualMenuClosure : Optional < (_ inPoint : CanariPoint) -> NSMenu > = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final override var acceptsFirstResponder : Bool { return true }

  //····················································································································

  final private var mIsFirstResponder = false {
    didSet {
       if self.mIsFirstResponder != oldValue, let scrollView = self.superview?.superview as? EBScrollView {
         scrollView.setFocusRing (self.mIsFirstResponder)
       }
    }
  }

  //····················································································································

  final override func becomeFirstResponder () -> Bool {
    self.mIsFirstResponder = true
    return true
  }

  //····················································································································

  final override func resignFirstResponder () -> Bool {
    self.mIsFirstResponder = false
    return true
  }

  //····················································································································
  // MARK: -
  //····················································································································

  final var mBackgroundImage : CIImage? = nil
  final var mBackgroundImageDataController : EBSimpleController? = nil

  final var mBackgroundImageOpacity : CGFloat = 1.0
  final var mBackgroundImageOpacityController : EBSimpleController? = nil

  final var mBackgroundImageAffineTransform = NSAffineTransform ()

  //····················································································································

  final func set (backgroundImageAffineTransform inAffineTransform : NSAffineTransform) {
    self.mBackgroundImageAffineTransform = inAffineTransform
    self.updateViewFrameAndBounds ()
    self.needsDisplay = true
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------


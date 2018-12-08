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

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  override var isFlipped : Bool { return false }

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

  internal var selectionRectangleLayer : EBShape? = nil {
    didSet {
      if let oldSelectionRectangleLayer = oldValue {
        self.setNeedsDisplay (oldSelectionRectangleLayer.boundingBox)
      }
      if let newSelectionRectangleLayer = self.selectionRectangleLayer {
        self.setNeedsDisplay (newSelectionRectangleLayer.boundingBox)
      }
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  final var mUnderObjectsDisplay = EBShape () {
    didSet {
      if self.mUnderObjectsDisplay != oldValue {
        self.setNeedsDisplay (oldValue.boundingBox)
        self.setNeedsDisplay (self.mUnderObjectsDisplay.boundingBox)
      }
    }
  }

  //····················································································································

  final internal var mUnderObjectsDisplayController : EBReadOnlyController_EBShape?

  //····················································································································
  // MARK: -
  //····················································································································

  final var mOverObjectsDisplay = EBShape () {
    didSet {
      if self.mOverObjectsDisplay != oldValue {
        self.setNeedsDisplay (oldValue.boundingBox)
        self.setNeedsDisplay (self.mOverObjectsDisplay.boundingBox)
      }
    }
  }

  //····················································································································

  internal var mOverObjectsDisplayController : EBReadOnlyController_EBShape?

  //····················································································································
  // MARK: -
  //····················································································································

  override func draw (_ inDirtyRect: NSRect) {
    if let backColor = self.mBackColor {
      backColor.setFill ()
      NSBezierPath.fill (inDirtyRect)
    }
    self.drawGrid (inDirtyRect)
    self.mUnderObjectsDisplay.draw (inDirtyRect)
    for object in self.mObjectDisplayArray {
      object.draw (inDirtyRect)
    }
    self.mOverObjectsDisplay.draw (inDirtyRect)
    self.selectionRectangleLayer?.draw (inDirtyRect)
    for shape in self.mSelectionShapes {
      shape.draw (inDirtyRect)
    }
    self.drawIssue (inDirtyRect)
    self.selectionRectangleLayer?.draw (inDirtyRect)
    if !self.mIsFirstResponder {
      NSColor.white.withAlphaComponent (0.1).setFill ()
      NSBezierPath.fill (inDirtyRect)
    }
  }

  //····················································································································

  private func drawIssue (_ inDirtyRect : NSRect) {
    if let issueBezierPath = self.mIssueBezierPath, !issueBezierPath.isEmpty {
      switch self.mIssueKind {
      case .error :
        NSColor.red.withAlphaComponent (0.15).setFill ()
        issueBezierPath.fill ()
        NSColor.red.setStroke ()
        issueBezierPath.stroke ()
      case .warning :
        NSColor.orange.withAlphaComponent (0.15).setFill ()
        issueBezierPath.fill ()
        NSColor.orange.setStroke ()
        issueBezierPath.stroke ()
      }
    }
  }

  //····················································································································

  fileprivate func drawGrid (_ inDirtyRect: NSRect) {
    let r = inDirtyRect // self.bounds
    let gridDisplayStep = self.mGridStep * CGFloat (self.mGridStepFactor)
    let startX = (r.origin.x / gridDisplayStep).rounded (.down) * gridDisplayStep
    let endX = r.maxX
    let startY = (r.origin.y / gridDisplayStep).rounded (.down) * gridDisplayStep
    let endY = r.maxY
    let displayOffset = 0.5 / self.actualScale ()
    switch self.mGridStyle {
    case .noGrid :
      ()
    case .cross :
      let bp = NSBezierPath ()
      bp.lineWidth = 0.0
      bp.lineCapStyle = .round
      var x = startX
      while x <= endX {
        var y = startY
        while y <= endY {
          bp.move (to: NSPoint (x: x - 0.5 + displayOffset, y: y + displayOffset))
          bp.line (to: NSPoint (x: x + 0.5 + displayOffset, y: y + displayOffset))
          bp.move (to: NSPoint (x: x + displayOffset,       y: y + 0.5 + displayOffset))
          bp.line (to: NSPoint (x: x + displayOffset,       y: y - 0.5 + displayOffset))
          y += gridDisplayStep
        }
        x += gridDisplayStep
      }
      self.mGridCrossColor.setStroke ()
      bp.stroke ()
    case .line :
      let bp = NSBezierPath ()
      bp.lineWidth = 0.0
      bp.lineCapStyle = .round
      var x = startX
      while x <= r.maxX {
        let p1 = NSPoint (x: x + displayOffset, y: startY + displayOffset)
        let p2 = NSPoint (x: x + displayOffset, y: endY + displayOffset)
        bp.move (to: p1)
        bp.line (to: p2)
        x += gridDisplayStep
      }
      var y = startY
      while y <= endY {
        bp.move (to: NSPoint (x: startX + displayOffset, y: y + displayOffset))
        bp.line (to: NSPoint (x: endX   + displayOffset, y: y + displayOffset))
        y += gridDisplayStep
      }
      self.mGridLineColor.setStroke ()
      bp.stroke ()
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  private var mArrowKeyMagnitude : CGFloat = 10.0

  //····················································································································

  var arrowKeyMagnitude : CGFloat { return self.mArrowKeyMagnitude }

  //····················································································································

  func set (arrowKeyMagnitude : CGFloat) {
    self.mArrowKeyMagnitude = arrowKeyMagnitude
  }

  //····················································································································

  internal var mArrowKeyMagnitudeController : EBReadOnlyController_CGFloat? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  private var mShiftArrowKeyMagnitude : CGFloat = 10.0

  //····················································································································

  var shiftArrowKeyMagnitude : CGFloat { return self.mShiftArrowKeyMagnitude }

 //····················································································································

  func set (shiftArrowKeyMagnitude : CGFloat) {
    self.mShiftArrowKeyMagnitude = shiftArrowKeyMagnitude
  }

 //····················································································································

  internal var mShiftArrowKeyMagnitudeController : EBReadOnlyController_CGFloat? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final var mBackColor : NSColor? = nil {
    didSet {
      self.needsDisplay = true
    }
  }

  //····················································································································

  internal var mBackColorController : EBReadOnlyController_NSColor? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  private var mObjectDisplayArray = [EBShape] ()

  //····················································································································

  func updateObjectDisplay (_ inObjectDisplayArray : [EBShape]) {
  //--- Find invalid rectangle
    var invalidRect = NSRect.null
    let minCount = min (self.mObjectDisplayArray.count, inObjectDisplayArray.count)
    var idx = 0
    while idx < minCount {
      if inObjectDisplayArray [idx] != self.mObjectDisplayArray [idx] {
        invalidRect = invalidRect.union (inObjectDisplayArray [idx].boundingBox)
        invalidRect = invalidRect.union (self.mObjectDisplayArray [idx].boundingBox)
      }
      idx += 1
    }
    while idx < self.mObjectDisplayArray.count {
      invalidRect = invalidRect.union (self.mObjectDisplayArray [idx].boundingBox)
      idx += 1
    }
    while idx < inObjectDisplayArray.count {
      invalidRect = invalidRect.union (inObjectDisplayArray [idx].boundingBox)
      idx += 1
    }
  //--- Store new object array and tell view to display
    self.mObjectDisplayArray = inObjectDisplayArray
    self.updateViewFrameAndBounds ()
    self.setNeedsDisplay (invalidRect)
  }

  //····················································································································

  func objectBoundingBox () -> NSRect {
    var r = NSRect.null
    for shape in mObjectDisplayArray {
      r = r.union (shape.boundingBox)
    }
    if let issueBezierPath = self.mIssueBezierPath, !issueBezierPath.isEmpty {
      let e = -issueBezierPath.lineWidth / 2.0
      r = r.union (issueBezierPath.bounds.insetBy (dx: e, dy: e))
    }
    return r
  }

  //····················································································································
  // MARK: -
  //····················································································································

  internal var mLastMouseDraggedLocation : NSPoint? = nil
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

  func updateSelectionShape (_ inShapes : [EBShape]) {
    for shape in self.mSelectionShapes {
      self.setNeedsDisplay (shape.boundingBox)
    }
    for shape in inShapes {
      self.setNeedsDisplay (shape.boundingBox)
    }
    self.mSelectionShapes = inShapes
  }

  //····················································································································

  func updateViewFrameAndBounds () {
    scaleToZoom (self.mZoom, self.mHorizontalFlip, self.mVerticalFlip)
  }

  //····················································································································

  override func viewDidMoveToSuperview () {
    super.viewDidMoveToSuperview ()
    self.installPlacards ()
  }

  //····················································································································

  internal func indexOfFrontmostObject (at inLocation : NSPoint) -> (Int?, Int?) {
    var possibleObjectIndex : Int? = nil
    var possibleKnobIndex : Int? = nil
    var idx = self.mSelectionShapes.count
    while (idx > 0) && (possibleObjectIndex == nil) {
      idx -= 1
      possibleKnobIndex = self.mSelectionShapes [idx].knobIndex (at: inLocation)
      if possibleKnobIndex != nil {
        possibleObjectIndex = idx
      }
    }
    idx = self.mObjectDisplayArray.count
    while (idx > 0) && (possibleObjectIndex == nil) {
      idx -= 1
      if self.mObjectDisplayArray [idx].contains (point: inLocation) {
        possibleObjectIndex = idx
      }
    }
    //Swift.print ("possibleObjectIndex \(possibleObjectIndex), possibleKnobIndex \(possibleKnobIndex)")
    return (possibleObjectIndex, possibleKnobIndex)
  }

  //····················································································································

  internal func indexesOfObjects (intersecting inRect : NSRect) -> Set <Int> {
    var result = Set <Int> ()
    var idx = 0
    for object in self.mObjectDisplayArray {
      if object.intersects (rect: inRect) {
        result.insert (idx)
      }
      idx += 1
    }
    return result
  }

  //····················································································································
  //  MARK: -
  //····················································································································

  internal var mZoom = 100

  //····················································································································

  internal func scaleToZoom (_ inZoom : Int,  // 0 -> fit to window
                             _ inHorizontalFlip : Bool,
                             _ inVerticalFlip : Bool) {
    if let clipView = self.superview as? NSClipView {
      var newRect = self.objectBoundingBox ()
      if let issueBezierPath = self.mIssueBezierPath, !issueBezierPath.isEmpty {
        newRect = newRect.union (issueBezierPath.bounds)
      }
      if let minimumBounds = self.mMinimumRect {
        newRect = newRect.union (minimumBounds)
      }
      if (inZoom != 0) || newRect.isNull {
        let r = clipView.convert (clipView.documentVisibleRect, from: self)
        newRect = newRect.union (r)
      }
      if self.bounds != newRect {
        self.frame.size = newRect.size
        self.bounds = newRect
      }
      let currentUnitSquareSize : NSSize = clipView.convert (NSSize (width: 1.0, height: 1.0), from:nil)
      let currentScale = 1.0 / currentUnitSquareSize.width
      let toggleHorizontalFlip : CGFloat = (inHorizontalFlip != self.mHorizontalFlip) ? -1.0 : 1.0 ;
      let toggleVerticalFlip   : CGFloat = (inVerticalFlip != self.mVerticalFlip) ? -1.0 : 1.0 ;
      if 0 == inZoom { // Fit to window
        let clipViewSize = clipView.frame.size
        let currentSize = self.frame.size
        let sx = clipViewSize.width / currentSize.width
        let sy = clipViewSize.height / currentSize.height
        let scale = fmin (sx, sy) / currentScale
        clipView.scaleUnitSquare(to: NSSize (width: toggleHorizontalFlip * scale, height: toggleVerticalFlip * scale))
      }else{
        let scale = CGFloat (inZoom) / (100.0 * currentScale)
        clipView.scaleUnitSquare(to: NSSize (width: toggleHorizontalFlip * scale, height: toggleVerticalFlip * scale))
      }
      let zoomTitle = "\(Int ((self.actualScale () * 100.0).rounded (.toNearestOrEven))) %"
      self.mZoomPopUpButton?.menu?.item (at:0)?.title = (0 == inZoom) ? ("(\(zoomTitle))") : zoomTitle
      self.setNeedsDisplay (self.frame)
    }
  }

  //····················································································································

  func actualScale () -> CGFloat {
    var result : CGFloat = 1.0
    if let clipView = self.superview as? NSClipView {
      let currentScale : NSSize = clipView.convert (NSSize (width: 1.0, height: 1.0), from:nil)
      result = 1.0 / currentScale.width
    }
    return result
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

  internal var mXPlacardUnitController : EBReadOnlyController_Int? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  internal var mYPlacardUnit = 2286 // mils

  //····················································································································

  func set (YPlacardUnit inUnit : Int) {
     self.mYPlacardUnit = inUnit
  }

  //····················································································································

  internal var mYPlacardUnitController : EBReadOnlyController_Int? = nil

  //····················································································································
  //  MARK: -
  //····················································································································

  override func viewWillMove (toSuperview inSuperview : NSView?) {
     super.viewWillMove (toSuperview: inSuperview)
  //--- Remove from superview ?
    if nil == inSuperview {
      self.removePlacards ()
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  private var mIsFirstResponder = false

  //····················································································································

  override var acceptsFirstResponder : Bool { return true }

  //····················································································································

  override func becomeFirstResponder () -> Bool {
    self.mIsFirstResponder = true
    self.needsDisplay = true
    return true
  }

  //····················································································································

  override func resignFirstResponder () -> Bool {
    self.mIsFirstResponder = false
    self.needsDisplay = true
    return true
  }

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

  private var mIssueBezierPath : NSBezierPath? = nil
  private var mIssueKind : CanariIssueKind = .error // Any value, not used if mIssueBezierPath is nil

  //····················································································································

  func setIssue (_ inBezierPath : NSBezierPath?, _ issueKind : CanariIssueKind) {
    if self.mIssueBezierPath != inBezierPath {
      self.mIssueBezierPath = inBezierPath
      self.mIssueKind = issueKind
      self.updateViewFrameAndBounds ()
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  private var mCanariRectController : EBReadOnlyController_CanariRect? = nil

  //····················································································································

  func bind_canariRect (_ model : EBReadOnlyProperty_CanariRect, file : String, line : Int) {
    self.mCanariRectController = EBReadOnlyController_CanariRect (
      model: model,
      callBack: { [weak self] in self?.updateRect (from: model) }
    )
  }

  //····················································································································

  func unbind_canariRect () {
    self.mCanariRectController?.unregister ()
    self.mCanariRectController = nil
  }

  //····················································································································

  private func updateRect (from model : EBReadOnlyProperty_CanariRect) {
    var rect = CanariRect ()
    switch model.prop {
    case .empty :
      ()
    case .single (let v) :
      rect = v
    case .multiple :
      ()
    }
    self.setMinimumRect (rect)
  }

  //····················································································································

  fileprivate var mMinimumRect : NSRect? = nil

  internal func setMinimumRect (_ inCanariRect : CanariRect) {
    let emptyModel = (inCanariRect.size.width <= 0) || (inCanariRect.size.height <= 0)
    if emptyModel {
      self.mMinimumRect = nil
    }else{
      self.mMinimumRect = inCanariRect.cocoaRect ()
    }
    self.updateViewFrameAndBounds ()
  }

  //····················································································································
  // MARK: -
  //····················································································································

  internal var mZoomController : Controller_CanariViewWithZoomAndFlip_zoom?

  //····················································································································

  func setZoom (_ inZoom : Int, activateZoomPopUpButton inActivate : Bool) {
    scaleToZoom (inZoom, self.mHorizontalFlip, self.mVerticalFlip)
    self.mZoom = inZoom
    self.mZoomPopUpButton?.isEnabled = inActivate
  }

  //····················································································································
  // MARK: -
  //····················································································································

  private var mHorizontalFlip = false

  //····················································································································

  final func set (horizontalFlip inFlip : Bool) {
    scaleToZoom (self.mZoom, inFlip, self.mVerticalFlip)
    self.mHorizontalFlip = inFlip
  }

  //····················································································································

  final var horizontalFlip : Bool {
    return self.mHorizontalFlip
  }

  //····················································································································

  internal var mHorizontalFlipController : EBReadOnlyController_Bool? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final private var mVerticalFlip = false

  //····················································································································

  final func setVerticalFlip (_ inFlip : Bool) {
    scaleToZoom (self.mZoom, self.mHorizontalFlip, inFlip)
    self.mVerticalFlip = inFlip
  }

  //····················································································································

  final var verticalFlip : Bool {
    return self.mVerticalFlip
  }

  //····················································································································

  final internal var mVerticalFlipController : EBReadOnlyController_Bool? = nil

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

  final internal var mGridStyleController : EBReadOnlyController_GridStyle? = nil

  //····················································································································
  // MARK: -
  //····················································································································

  final var mGridStep : CGFloat = milsToCocoaUnit (25.0) {
    didSet {
      if (self.mGridStep != oldValue) && (self.mGridStyle != .noGrid)  {
        self.needsDisplay = true
      }
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  final var mGridStepFactor : Int = 4 {
    didSet {
      if (self.mGridStepFactor != oldValue) && (self.mGridStyle != .noGrid)  {
        self.needsDisplay = true
      }
    }
  }

  //····················································································································

  final internal var mGridStepFactorController : EBReadOnlyController_Int? = nil

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

  final internal var mGridLineColorController : EBReadOnlyController_NSColor? = nil

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

  internal var mGridCrossColorController : EBReadOnlyController_NSColor? = nil

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

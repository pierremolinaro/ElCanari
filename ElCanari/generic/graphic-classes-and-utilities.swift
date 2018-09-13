//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Int {
  mutating func rotateLeft () {
    let b0 = self >> 31
    let bl = self << 1
    self = b0 | bl
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  EBGraphicManagedObject
//  dynamic before func is required in order to make functions overriden in extensions
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBGraphicManagedObject : EBManagedObject {

  //····················································································································

  var objectDisplay_property = EBTransientProperty_EBShape ()

  //····················································································································

  var selectionDisplay_property = EBTransientProperty_EBShape ()

  //····················································································································

  @objc dynamic func acceptedTranslation (by inValue: CGPoint) -> CGPoint {
    return inValue
  }

  //····················································································································

  @objc dynamic func acceptToTranslate (xBy inDx: CGFloat, yBy inDy: CGFloat) -> Bool {
    return false
  }

  //····················································································································

  @objc dynamic func translate (xBy inDx: CGFloat, yBy inDy: CGFloat) {
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBShape
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBShape : Hashable, EBUserClassNameProtocol {

  //····················································································································
  //  Properties
  //····················································································································

  private var mShapes : [EBShape]
  private var mCachedBoundingBox : NSRect?

  //····················································································································
  //  init
  //····················································································································

  init () {
    mShapes = []
    mCachedBoundingBox = nil
    noteObjectAllocation (self)
  }

  //····················································································································

  init (shape inShape : EBShape) {
    mShapes = [inShape]
    mCachedBoundingBox = nil
    noteObjectAllocation (self)
  }

  //····················································································································

  init (shapes inShapes : [EBShape]) {
    mShapes = inShapes
    mCachedBoundingBox = nil
    noteObjectAllocation (self)
  }

  //····················································································································
  //  deinit
  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  append
  //····················································································································

  func append (shape inShape : EBShape) {
    self.mShapes.append (inShape)
    self.mCachedBoundingBox = nil
  }

  //····················································································································

  func append (shapes inShapes : [EBShape]) {
    self.mShapes += inShapes
    self.mCachedBoundingBox = nil
  }

  //····················································································································
  //  Transformed shape using NSAffineTransform object
  //····················································································································

  func transformedBy (_ inAffineTransform : NSAffineTransform) -> EBShape {
    let result = EBShape ()
    self.internalTransform (result, by: inAffineTransform)
    return result
  }

  //····················································································································

  fileprivate final func internalTransform (_ result : EBShape, by inAffineTransform : NSAffineTransform) {
    for shape in self.mShapes {
      result.append (shape: shape.transformedBy (inAffineTransform))
    }
  }

  //····················································································································
  //  Draw Rect
  //····················································································································

  func draw (_ inDirtyRect: NSRect) {
    for shape in self.mShapes {
      shape.draw (inDirtyRect)
    }
  }

  //····················································································································
  // boundingBox
  //····················································································································

  var boundingBox : NSRect {
    if let cbb = mCachedBoundingBox {
      return cbb
    }else{
      var r = NSZeroRect
      for shape in self.mShapes {
        r = r.union (shape.boundingBox)
      }
      self.mCachedBoundingBox = r
      return r
    }
  }

  //····················································································································
  //   intersects
  //····················································································································

  func intersects (_ inRect : NSRect) -> Bool {
    return self.boundingBox.intersects (inRect)
  }

  //····················································································································
  //   Contains point
  //····················································································································

  func contains (point inPoint : NSPoint) -> Bool {
    for shape in self.mShapes {
      if shape.contains (point: inPoint) {
        return true
      }
    }
    return false
  }

  //····················································································································

  func sameDisplay (as inObject : EBShape) -> Bool {
    var equal = self.mShapes.count == inObject.mShapes.count
    if equal {
      var idx = 0
      while idx < self.mShapes.count {
        equal = self.mShapes [idx] == inObject.mShapes [idx]
        if !equal {
          break
        }
        idx += 1
      }
    }
    return equal
  }

  //····················································································································
  /// Returns a Boolean value indicating whether two values are equal.
  ///
  /// Equality is the inverse of inequality. For any values `a` and `b`,
  /// `a == b` implies that `a != b` is `false`.
  ///
  /// - Parameters:
  ///   - lhs: A value to compare.
  ///   - rhs: Another value to compare.
  //····················································································································

  public static func == (lhs: EBShape, rhs: EBShape) -> Bool {
    return lhs.isEqualTo (rhs)
  }

  //····················································································································

  func isEqualTo (_ inOperand : EBShape) -> Bool {
    var equal = self.mShapes.count == inOperand.mShapes.count
    var idx = 0
    while (idx < self.mShapes.count) && equal {
      equal = self.mShapes [idx] == inOperand.mShapes [idx]
      idx += 1
    }
    return equal
  }

  //····················································································································
  /// The hash value.
  ///
  /// Hash values are not guaranteed to be equal across different executions of
  /// your program. Do not save hash values to use during a future execution.
  //····················································································································

  public var hashValue : Int {
    var h = 0
    for shape in self.mShapes {
      h.rotateLeft ()
      h ^= shape.hashValue
    }
    return h
  }

  //····················································································································

  func computeInvalidRect (_ inObjects : EBShape) -> NSRect {
    var invalidRect = NSZeroRect
    let commonCount = min (self.mShapes.count, inObjects.mShapes.count)
    var idx = 0
    while idx < commonCount {
      let currentObjet = self.mShapes [idx]
      let newObject = inObjects.mShapes [idx]
      if !newObject.sameDisplay(as: currentObjet) {
        invalidRect = invalidRect.union (currentObjet.boundingBox)
        invalidRect = invalidRect.union (newObject.boundingBox)
      }
      idx += 1
    }
  //--- Enter in invalid rect removed objects
    while idx < self.mShapes.count {
      invalidRect = invalidRect.union (self.mShapes [idx].boundingBox)
      idx += 1
    }
  //--- Enter in invalid rect new objects
    idx = commonCount
    while idx < inObjects.mShapes.count {
      invalidRect = invalidRect.union (inObjects.mShapes [idx].boundingBox)
      idx += 1
    }
    return invalidRect
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBStrokeBezierPathShape
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBStrokeBezierPathShape : EBShape {
  private var mPaths : [NSBezierPath]
  private var mCGPaths : [CGPath?] // Computed lazily by contains (point:)
  private let mColor : NSColor
  private var mCachedBoundingBox : NSRect?

  //····················································································································
  //  Init
  //····················································································································

  init (_ inPaths: [NSBezierPath], _ inColor: NSColor) {
    mPaths = inPaths
    mCGPaths = [CGPath?](repeating: nil, count: inPaths.count)
    mColor = inColor
    super.init ()
  }

  //····················································································································
  //  append
  //····················································································································

  func append (path inBezierPath : NSBezierPath) {
    self.mPaths.append (inBezierPath)
    self.mCGPaths.append (nil)
    self.mCachedBoundingBox = nil
  }

  //····················································································································
  //  transformedBy
  //····················································································································

  override func transformedBy (_ inAffineTransform : NSAffineTransform) -> EBShape {
    var paths = [NSBezierPath] ()
    for path in self.mPaths {
      let bp = inAffineTransform.transform (path)
      paths.append (bp)
    }
    let result = EBStrokeBezierPathShape (paths, self.mColor)
    self.internalTransform (result, by: inAffineTransform)
    return result
  }

  //····················································································································
  //  Draw Rect
  //····················································································································

  override func draw (_ inDirtyRect: NSRect) {
    self.mColor.setStroke ()
    for bp in self.mPaths {
      bp.stroke ()
    }
  }

  //····················································································································
  // boundingBox
  //····················································································································

  override var boundingBox : NSRect {
    if let cbb = mCachedBoundingBox {
      return cbb
    }else{
      var r = super.boundingBox
      for bp in self.mPaths {
        let lineWidth = max (bp.lineWidth, 1.0)
        r = r.union (bp.bounds.insetBy (dx: -lineWidth, dy: -lineWidth))
      }
      self.mCachedBoundingBox = r
      return r
    }
  }

  //····················································································································
  //   Contains point
  //····················································································································

  override func contains (point inPoint : NSPoint) -> Bool {
    var result = super.contains (point: inPoint)
    var idx = 0
    while (idx < self.mPaths.count) && !result {
      let cgPath : CGPath
      if let p = self.mCGPaths [idx] {
        cgPath = p
      }else{
        let bp = self.mPaths [idx]
        let lineCap : CGLineCap
        switch bp.lineCapStyle {
        case .buttLineCapStyle : lineCap = .butt
        case .roundLineCapStyle : lineCap = .round
        case .squareLineCapStyle : lineCap = .square
        }
        let lineJoin : CGLineJoin
        switch bp.lineJoinStyle {
        case .bevelLineJoinStyle : lineJoin = .bevel
        case .miterLineJoinStyle : lineJoin = .miter
        case .roundLineJoinStyle : lineJoin = .round
        }
        cgPath = bp.cgPath.copy (
          strokingWithWidth: bp.lineWidth,
          lineCap: lineCap,
          lineJoin: lineJoin,
          miterLimit: bp.miterLimit
        )
        self.mCGPaths [idx] = cgPath
      }
      result = cgPath.contains (inPoint, using: .winding)
      idx += 1
    }
    return result
  }

  //····················································································································

  override func isEqualTo (_ inOperand : EBShape) -> Bool {
    var equal = false
    if let operand = inOperand as? EBStrokeBezierPathShape {
      equal = self.mPaths.count == operand.mPaths.count
      if equal {
        equal = super.isEqualTo (inOperand)
      }
      var idx = 0
      while (idx < self.mPaths.count) && equal {
        equal = self.mPaths [idx] == operand.mPaths [idx]
        idx += 1
      }
    }
    return equal
  }

  //····················································································································
  /// The hash value.
  ///
  /// Hash values are not guaranteed to be equal across different executions of
  /// your program. Do not save hash values to use during a future execution.
  //····················································································································

  override public var hashValue : Int {
    var h = super.hashValue
    h.rotateLeft ()
    h ^= mColor.hashValue
    for path in self.mPaths {
      h.rotateLeft ()
      h ^= path.hashValue
    }
    return h
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBFilledBezierPathShape
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBFilledBezierPathShape : EBShape {
  private var mPaths : [NSBezierPath]
  private var mCGPaths : [CGPath?] // Computed lazily by contains (point:)
  private let mColor : NSColor
  private var mCachedBoundingBox : NSRect?

  //····················································································································
  //  Init
  //····················································································································

  init (_ inPaths: [NSBezierPath], _ inColor: NSColor) {
    mPaths = inPaths
    mColor = inColor
    mCGPaths = [CGPath?] (repeating: nil, count: inPaths.count)
    super.init ()
  }

  //····················································································································
  //  append
  //····················································································································

  func append (_ inBezierPath : NSBezierPath) {
    self.mPaths.append (inBezierPath)
    self.mCGPaths.append (nil)
    self.mCachedBoundingBox = nil
  }

  //····················································································································
  //  transformedBy
  //····················································································································

  override func transformedBy (_ inAffineTransform : NSAffineTransform) -> EBShape {
    var paths = [NSBezierPath] ()
    for path in self.mPaths {
      let bp = inAffineTransform.transform (path)
      paths.append (bp)
    }
    let result = EBFilledBezierPathShape (paths, self.mColor)
    self.internalTransform (result, by: inAffineTransform)
    return result
  }

  //····················································································································
  //  Draw Rect
  //····················································································································

  override func draw (_ inDirtyRect: NSRect) {
    self.mColor.setFill ()
    for bp in self.mPaths {
      bp.fill ()
    }
  }

  //····················································································································
  // boundingBox
  //····················································································································

  override var boundingBox : NSRect {
    if let cbb = mCachedBoundingBox {
      return cbb
    }else{
      var r = super.boundingBox
      for bp in self.mPaths {
        r = r.union (bp.bounds)
      }
      self.mCachedBoundingBox = r
      return r
    }
  }

  //····················································································································
  //   Contains point
  //····················································································································

  override func contains (point inPoint : NSPoint) -> Bool {
    var result = super.contains (point: inPoint)
    var idx = 0
    while (idx < self.mPaths.count) && !result {
      let cgPath : CGPath
      if let p = self.mCGPaths [idx] {
        cgPath = p
      }else{
        let bp = self.mPaths [idx]
        cgPath = bp.cgPath
        self.mCGPaths [idx] = cgPath
      }
      result = cgPath.contains (inPoint, using: .winding) // §§§ .winding à revoir
      idx += 1
    }
    return result
  }

  //····················································································································
  /// The hash value.
  ///
  /// Hash values are not guaranteed to be equal across different executions of
  /// your program. Do not save hash values to use during a future execution.
  //····················································································································

  override public var hashValue : Int {
    var h = super.hashValue
    h.rotateLeft ()
    h ^= mColor.hashValue
    for path in self.mPaths {
      h.rotateLeft ()
      h ^= path.hashValue
    }
    return h
  }

  //····················································································································

  override func isEqualTo (_ inOperand : EBShape) -> Bool {
    var equal = false
    if let operand = inOperand as? EBFilledBezierPathShape {
      equal = self.mPaths.count == operand.mPaths.count
      if equal {
        equal = super.isEqualTo (inOperand)
      }
      var idx = 0
      while (idx < self.mPaths.count) && equal {
        equal = self.mPaths [idx] == operand.mPaths [idx]
        idx += 1
      }
    }
    return equal
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Build PDF image
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func buildPDFimage (frame inFrame: CGRect,
                    shapes inShapes: EBShape,
                    backgroundColor inBackColor : NSColor? = nil) -> Data {
  let view = EBOffscreenView (frame: inFrame)
  view.setBackColor (inBackColor)
  view.setPaths (inShapes)
  return view.dataWithPDF (inside: inFrame)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBOffscreenView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate final class EBOffscreenView : NSView, EBUserClassNameProtocol {

  private var mShape = EBShape ()
  private var mBackColor : NSColor? = nil

  //····················································································································

  override init (frame frameRect: NSRect) {
    super.init (frame: frameRect)
    noteObjectAllocation (self)
  }

  //····················································································································

  required init? (coder: NSCoder) {
    super.init (coder: coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  Set paths
  //····················································································································

  func setPaths (_ inShapes : EBShape) {
    self.mShape = inShapes
  }

  //····················································································································
  //  Set back color
  //····················································································································

  func setBackColor (_ inColor : NSColor?) {
    self.mBackColor = inColor
  }

  //····················································································································
  //  Draw Rect
  //····················································································································

  override func draw (_ inDirtyRect: NSRect) {
    if let backColor = mBackColor {
      backColor.setFill ()
      #if swift(>=4)
        __NSRectFill (inDirtyRect)
      #else
        NSRectFill (inDirtyRect)
      #endif
    }
  //--- Bezier paths
    self.mShape.draw (inDirtyRect)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  Extension NSBezierPath
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension NSBezierPath {

  //····················································································································
  // https://stackoverflow.com/questions/1815568/how-can-i-convert-nsbezierpath-to-cgpath

  public var cgPath: CGPath {
    let path = CGMutablePath ()
    var points = [CGPoint] (repeating: .zero, count: 3)
    for idx in 0 ..< self.elementCount {
      let type = self.element (at: idx, associatedPoints: &points)
      switch type {
      case .moveToBezierPathElement:
        path.move (to: points[0])
      case .lineToBezierPathElement:
        path.addLine (to: points[0])
      case .curveToBezierPathElement:
        path.addCurve (to: points[2], control1: points[0], control2: points[1])
      case .closePathBezierPathElement:
        path.closeSubpath ()
      }
    }
    return path
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

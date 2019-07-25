//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBShape
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct EBShape : Hashable {

  //····················································································································
  //  Properties
  //····················································································································

  private var mElements = [EBShapeElement] ()
  private var mToolTips = [EBToolTip] ()
  private var mCachedBoundingBox = NSRect.null

  //····················································································································
  //  init
  //····················································································································

  init () {
  }

  //····················································································································

  init (filled inFilledPaths : [EBBezierPath],
        _ inColor : NSColor?,
        knobIndex inKnobIndex : Int? = nil,
        clip inClipRule : EBClipRule = .none) {
    self.add (filled: inFilledPaths, inColor, knobIndex: inKnobIndex, clip: inClipRule)
  }

  //····················································································································

  init (stroke inStrokePaths : [EBBezierPath],
        _ inColor : NSColor,
        knobIndex inKnobIndex : Int? = nil,
        clip inClipRule : EBClipRule = .none) {
    self.add (stroke: inStrokePaths, inColor, knobIndex: inKnobIndex, clip: inClipRule)
  }

  //····················································································································

  init (text inString: String,
        _ inOrigin : NSPoint,
        _ inTextAttributes : [NSAttributedString.Key : Any],
        _ inHorizontalAlignment : EBTextHorizontalAlignment,
        _ inVerticalAlignment : EBTextVerticalAlignment) {
    self.add (text: inString, inOrigin, inTextAttributes, inHorizontalAlignment, inVerticalAlignment)
  }

  //····················································································································

  init (textKnob inString : String,
        _ inOrigin : NSPoint,
        _ inFont : NSFont,
        _ inHorizontalAlignment : EBTextHorizontalAlignment,
        _ inVerticalAlignment : EBTextVerticalAlignment,
        knobIndex inKnobIndex : Int) {
    self.add (textKnob: inString, inOrigin, inFont, inHorizontalAlignment, inVerticalAlignment, knobIndex: inKnobIndex)
  }

  //····················································································································
  //  add
  //····················································································································

  mutating func add (_ inShape : EBShape) {
    self.mElements += inShape.mElements
    self.mCachedBoundingBox = self.mCachedBoundingBox.union (inShape.mCachedBoundingBox)
  }

  //····················································································································

  mutating func add (filled inFilledPaths : [EBBezierPath],
                     _ inColor : NSColor?,
                     knobIndex inKnobIndex : Int? = nil,
                     clip inClipRule : EBClipRule = .none) {
    var nonEmptyBezierPathes = [EBBezierPath] ()
    for path in inFilledPaths {
      if !path.isEmpty {
        nonEmptyBezierPathes.append (path)
      }
    }
    if nonEmptyBezierPathes.count > 0 {
      let e = EBShapeElement (nonEmptyBezierPathes, inColor, inKnobIndex, inClipRule)
      self.mElements.append (e)
      self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
    }
  }

  //····················································································································

  mutating func add (stroke inStrokePathes : [EBBezierPath],
                     _ inColor : NSColor,
                     knobIndex inKnobIndex : Int? = nil,
                     clip inClipRule : EBClipRule = .none) {
    var filledBezierPathes = [EBBezierPath] ()
    for path in inStrokePathes {
      if !path.isEmpty, path.lineWidth > 0.0 {
        filledBezierPathes.append (path.pathByStroking)
      }
    }
    if filledBezierPathes.count > 0 {
      let e = EBShapeElement (filledBezierPathes, inColor, inKnobIndex, inClipRule)
      self.mElements.append (e)
      self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
    }
  }

  //····················································································································

  mutating func add (knobAt inPoint: NSPoint, knobIndex inKobIndex : Int, _ inKind : EBKnobKind, _ inKnobSize : CGFloat) {
    let r = NSRect (x: inPoint.x - inKnobSize / 2.0, y: inPoint.y - inKnobSize / 2.0, width: inKnobSize, height: inKnobSize)
    var bp : EBBezierPath
    switch inKind {
    case .rect :
      bp = EBBezierPath (rect: r)
    case .circ :
      bp = EBBezierPath (ovalIn: r)
    }
  //--- Background
    let e = EBShapeElement ([bp], .white, inKobIndex, .none)
    self.mElements.append (e)
    self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
  //--- Line
    bp.lineWidth = 0.1
    bp.lineCapStyle = .round
    bp.lineJoinStyle = .round
    self.add (stroke: [bp], .black)
  }

  //····················································································································

  mutating func add (text inString: String,
                     _ inOrigin : NSPoint,
                     _ inTextAttributes : [NSAttributedString.Key : Any],
                     _ inHorizontalAlignment : EBTextHorizontalAlignment,
                     _ inVerticalAlignment : EBTextVerticalAlignment) {
    if inString != "" {
    //--- Forecolor
      let textColor : NSColor
      if let c = inTextAttributes [NSAttributedString.Key.foregroundColor] as? NSColor {
        textColor = c
      }else{
        textColor = .black
      }
    //--- Transform text into filled bezier path
      let filledBezierPath = EBBezierPath (
        with: inString,
        at: inOrigin,
        inHorizontalAlignment,
        inVerticalAlignment,
        withAttributes: inTextAttributes
      )
    //--- Append background ?
      if let backColor = inTextAttributes [NSAttributedString.Key.backgroundColor] as? NSColor {
        let bp = EBBezierPath (rect: filledBezierPath.bounds)
        let e = EBShapeElement ([bp], backColor, nil, .none)
        self.mElements.append (e)
        self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
      }else{
        let bp = EBBezierPath (rect: filledBezierPath.bounds)
        let e = EBShapeElement ([bp], nil, nil, .none)
        self.mElements.append (e)
        self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
     }
    //--- Append text
      let e = EBShapeElement ([filledBezierPath], textColor, nil, .none)
      self.mElements.append (e)
      self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
    }
  }

  //····················································································································
  //  Text knob
  //····················································································································

  mutating func add (textKnob inString : String,
                     _ inOrigin : NSPoint,
                     _ inFont : NSFont,
                     _ inHorizontalAlignment : EBTextHorizontalAlignment,
                     _ inVerticalAlignment : EBTextVerticalAlignment,
                     knobIndex inKnobIndex : Int) {
    let string = (inString == "") ? " " : inString
    let textAttributes : [NSAttributedString.Key : Any] = [
      NSAttributedString.Key.font : inFont
    ]
  //--- Transform text into filled bezier path
    let filledBezierPath = EBBezierPath (
      with: string,
      at: inOrigin,
      inHorizontalAlignment,
      inVerticalAlignment,
      withAttributes: textAttributes
    )
  //--- Append background
    do{
      var bp = EBBezierPath (rect: filledBezierPath.bounds.insetBy (dx: -1.0, dy: -1.0))
      bp.lineWidth = 0.5
      bp.lineJoinStyle = .round
      bp.lineCapStyle = .round
      let e1 = EBShapeElement ([bp], .white, inKnobIndex, .none)
      self.mElements.append (e1)
      let e2 = EBShapeElement ([bp.pathByStroking], .cyan, inKnobIndex, .none)
      self.mElements.append (e2)
      self.mCachedBoundingBox = self.mCachedBoundingBox.union (e2.boundingBox)
    }
  //--- Append text
    let e = EBShapeElement ([filledBezierPath], .black, nil, .none)
    self.mElements.append (e)
    self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
  }

  //····················································································································
  //  Tool tips
  //····················································································································

  mutating func addToolTip (_ inRect : NSRect, _ inText : String) {
    self.mToolTips.append (EBToolTip (path: EBBezierPath (rect: inRect), string: inText))
  }

  //····················································································································

  func installToolTips (toView inView : EBGraphicView) {
    for tooltip in self.mToolTips {
      inView.addToolTip (tooltip.path.bounds, owner: tooltip.string, userData: nil)
    }
  }

  //····················································································································
  //  Draw
  //····················································································································

  func draw (_ inView : NSView, _ inDirtyRect : NSRect) {
    if self.mCachedBoundingBox.intersects (inDirtyRect) {
      for element in self.mElements {
        if inView.needsToDraw (element.boundingBox) {
          element.draw (inView, inDirtyRect)
        }
      }
    }
  }

  //····················································································································
  // boundingBox
  //····················································································································

  var boundingBox : NSRect {
    return self.mCachedBoundingBox
  }

  //····················································································································
  //   Contains point
  //····················································································································

  func contains (point inPoint : NSPoint) -> Bool {
    if self.mCachedBoundingBox.contains (inPoint) {
      for element in self.mElements {
        if element.contains (point: inPoint) {
          return true
        }
      }
    }
    return false
  }

  //····················································································································
  //   intersects
  //····················································································································

  func intersects (rect inRect : NSRect) -> Bool {
    if self.mCachedBoundingBox.intersects (inRect) {
      for element in self.mElements {
        if element.intersects (rect: inRect) {
          return true
        }
      }
    }
    return false
  }

  //····················································································································
  //   Knob Index
  //····················································································································

  func knobIndex (at inPoint : NSPoint) -> Int? {
    if self.mCachedBoundingBox.contains (inPoint) {
      for element in self.mElements.reversed () {
        if let idx = element.knobIndex (at: inPoint) {
          return idx
        }
      }
    }
    return nil
  }

  //····················································································································
  //  Transformed shape using NSAffineTransform object
  //····················································································································

  func transformed (by inAffineTransform : AffineTransform) -> EBShape {
    var result = EBShape ()
    for element in self.mElements {
      let newElement = element.transformed (by: inAffineTransform)
      result.mElements.append (newElement)
      result.mCachedBoundingBox = result.mCachedBoundingBox.union (newElement.boundingBox)
    }
    for tooltip in self.mToolTips {
      result.mToolTips.append (EBToolTip (path: tooltip.path.transformed (by: inAffineTransform), string: tooltip.string))
    }
    return result
  }

  //····················································································································
  //  Blended color
  //····················································································································

   func blended (withFraction inFraction : CGFloat, of inColor : NSColor) -> EBShape {
    var result = EBShape ()
    for element in self.mElements {
      let newElement = element.blended (withFraction: inFraction, of: inColor)
      result.mElements.append (newElement)
    }
    result.mCachedBoundingBox = self.mCachedBoundingBox
    result.mToolTips = self.mToolTips
    return result
   }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBKnobKind
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum EBKnobKind {
  case rect
  case circ
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBToolTip
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate struct EBToolTip : Hashable {
  let path : EBBezierPath
  let string : String
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBClipRule
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum EBClipRule : Hashable {
  case none
  case inside (EBBezierPath)
  case outside (EBBezierPath)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
// EBShapeElement
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate final class EBShapeElement : Hashable {

  //····················································································································
  // Properties
  //····················································································································

  private let mFilledPathes : [EBBezierPath]
  private let mColor : NSColor?
  private let mKnobIndex : Int?
  private let mClipRule : EBClipRule

  //····················································································································
  //  init
  //····················································································································

  init (_ inFilledPathes : [EBBezierPath],
        _ inColor : NSColor?,
        _ inKnobIndex : Int? = nil,
        _ inClipRule : EBClipRule) {
    mFilledPathes = inFilledPathes
    mColor = inColor
    mKnobIndex = inKnobIndex
    mClipRule = inClipRule
  }

  //····················································································································
  // Hashable
  //····················································································································

   func hash (into hasher: inout Hasher) {
    self.mColor?.hash (into: &hasher)
    self.mKnobIndex?.hash (into: &hasher)
    self.mClipRule.hash (into: &hasher)
    self.mFilledPathes.hash (into: &hasher)
  }

  //····················································································································
  // Equatable
  //····················································································································

  static func == (lhs: EBShapeElement, rhs: EBShapeElement) -> Bool {
    var result = lhs.mColor == rhs.mColor
    if result {
      result = lhs.mKnobIndex == rhs.mKnobIndex
    }
    if result {
      result = lhs.mClipRule == rhs.mClipRule
    }
    if result {
      result = lhs.mFilledPathes == rhs.mFilledPathes
    }
    return result
  }
  //····················································································································
  //  Draw Rect
  //····················································································································

  func draw (_ inView : NSView, _ inDirtyRect: NSRect) {
    if let color = self.mColor {
      color.setFill ()
      switch self.mClipRule {
      case .none :
        ()
      case .inside (let clipBezierPath) :
        NSGraphicsContext.saveGraphicsState ()
        clipBezierPath.addClip ()
      case .outside (let clipBezierPath) :
        NSGraphicsContext.saveGraphicsState ()
        let clip = NSBezierPath (rect: self.boundingBox)
        clip.append (clipBezierPath.reversed.nsBezierPath)
        clip.setClip ()
      }
      for bp in self.mFilledPathes {
        if !bp.isEmpty && inView.needsToDraw (bp.bounds) {
          bp.fill ()
        }
      }
      switch self.mClipRule {
      case .none :
        ()
      case .inside (_) :
        NSGraphicsContext.restoreGraphicsState ()
      case .outside (_) :
        NSGraphicsContext.restoreGraphicsState ()
      }
    }
  }

  //····················································································································
  // boundingBox
  //····················································································································

  var boundingBox : NSRect {
    var r = NSRect.null
    for bp in self.mFilledPathes {
      r = r.union (bp.bounds)
    }
    switch self.mClipRule {
    case .none :
      ()
    case .inside (let clipBezierPath) :
      r = r.intersection (clipBezierPath.bounds)
    case .outside (_) :
      ()
    }
    return r
  }

  //····················································································································
  //   Contains point
  //····················································································································

  func contains (point inPoint : NSPoint) -> Bool {
    let ok : Bool
    switch self.mClipRule {
    case .none :
      ok = true
    case .inside (let clipBezierPath) :
      ok = clipBezierPath.contains (inPoint)

    case .outside (let clipBezierPath) :
      ok = !clipBezierPath.contains (inPoint)
    }
    if ok {
      for path in self.mFilledPathes {
        if path.contains (inPoint) {
          return true
        }
      }
    }
    return false
  }

  //····················································································································
  //   intersects
  //····················································································································

  func intersects (rect inRect : NSRect) -> Bool {
    let ok : Bool
    switch self.mClipRule {
    case .none :
      ok = true
    case .inside (let clipBezierPath) :
      ok = clipBezierPath.intersects (rect: inRect)

    case .outside (let clipBezierPath) :
      ok = !clipBezierPath.intersects (rect: inRect)
    }
    if ok { // self.mClipBezierPath?.intersects (rect: inRect) ?? true {
      for path in self.mFilledPathes {
        if path.intersects (rect: inRect) {
          return true
        }
      }
    }
    return false
  }

  //····················································································································
  //   Knob Index
  //····················································································································

  func knobIndex (at inPoint : NSPoint) -> Int? {
    for path in self.mFilledPathes.reversed () {
      if let idx = self.mKnobIndex, path.contains (inPoint) {
        return idx
      }
    }
    return nil
  }

  //····················································································································
  //  transformedBy
  //····················································································································

  func transformed (by inAffineTransform : AffineTransform) -> EBShapeElement {
    var paths = [EBBezierPath] ()
    for path in self.mFilledPathes {
      paths.append (path.transformed(by: inAffineTransform))
    }
    let clipRule : EBClipRule
    switch self.mClipRule {
    case .none :
      clipRule = .none
    case .inside (let bp) :
      clipRule = .inside (bp.transformed (by: inAffineTransform))
    case .outside (let bp) :
      clipRule = .outside (bp.transformed (by: inAffineTransform))
    }
    return EBShapeElement (paths, self.mColor, self.mKnobIndex, clipRule)
  }

  //····················································································································
  //  Blended color
  //····················································································································

  func blended (withFraction inFraction : CGFloat, of inColor : NSColor) -> EBShapeElement {
    if let color = self.mColor, let newColor = color.blended (withFraction: inFraction, of: inColor) {
      return EBShapeElement (self.mFilledPathes, newColor, self.mKnobIndex, self.mClipRule)
    }else{
      return self
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

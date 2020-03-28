//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBShape
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct EBShape : Hashable {

  //····················································································································
  //  Equatable Protocol
  //····················································································································

  static func == (lhs: EBShape, rhs: EBShape) -> Bool {
    return lhs.mSharedObject === rhs.mSharedObject
  }

  //····················································································································
  //  Property
  //····················································································································

  private var mSharedObject : EBShapeObject?

  //····················································································································
  //  init
  //····················································································································

  init () {
    mSharedObject = nil
  }

  //····················································································································

  init (stroke inStrokePaths : [EBBezierPath],
        _ inColor : NSColor?,
        knobIndex inKnobIndex : Int? = nil,
        clip inClipRule : EBClipRule = .none) {
    self.mSharedObject = EBShapeObject ()
    self.mSharedObject?.add (stroke: inStrokePaths, inColor, knobIndex: inKnobIndex, clip: inClipRule)
  }

  //····················································································································

  init (filled inFilledPaths : [EBBezierPath],
        _ inColor : NSColor?,
        knobIndex inKnobIndex : Int? = nil,
        clip inClipRule : EBClipRule = .none) {
    self.mSharedObject = EBShapeObject ()
    self.mSharedObject?.add (filled: inFilledPaths, inColor, knobIndex: inKnobIndex, clip: inClipRule)
  }

  //····················································································································

  init (text inString: String,
        _ inOrigin : NSPoint,
        _ inTextAttributes : [NSAttributedString.Key : Any],
        _ inHorizontalAlignment : EBTextHorizontalAlignment,
        _ inVerticalAlignment : EBTextVerticalAlignment) {
    self.mSharedObject = EBShapeObject ()
    self.mSharedObject?.add (text: inString, inOrigin, inTextAttributes, inHorizontalAlignment, inVerticalAlignment)
  }

  //····················································································································

  init (textKnob inString : String,
        _ inOrigin : NSPoint,
        _ inFont : NSFont,
        foreColor inForeColor : NSColor,
        backColor inBackColor : NSColor,
        _ inHorizontalAlignment : EBTextHorizontalAlignment,
        _ inVerticalAlignment : EBTextVerticalAlignment,
        knobIndex inKnobIndex : Int) {
    self.mSharedObject = EBShapeObject ()
    self.mSharedObject?.add (
      textKnob: inString,
      inOrigin,
      inFont,
      foreColor: inForeColor,
      backColor: inBackColor,
      inHorizontalAlignment,
      inVerticalAlignment,
      knobIndex: inKnobIndex
    )
  }

  //····················································································································
  //  add
  //····················································································································

  mutating func add (stroke inStrokePathes : [EBBezierPath],
                     _ inColor : NSColor?,
                     knobIndex inKnobIndex : Int? = nil,
                     clip inClipRule : EBClipRule = .none) {
    if self.mSharedObject == nil {
      self.mSharedObject = EBShapeObject ()
    }else if !isKnownUniquelyReferenced (&self.mSharedObject) {
      self.mSharedObject = EBShapeObject (self.mSharedObject!)
    }
    self.mSharedObject?.add (stroke: inStrokePathes, inColor, knobIndex: inKnobIndex, clip: inClipRule)
  }

  //····················································································································

  mutating func add (filled inFilledPathes : [EBBezierPath],
                     _ inColor : NSColor?,
                     knobIndex inKnobIndex : Int? = nil,
                     clip inClipRule : EBClipRule = .none) {
    if self.mSharedObject == nil {
      self.mSharedObject = EBShapeObject ()
    }else if !isKnownUniquelyReferenced (&self.mSharedObject) {
      self.mSharedObject = EBShapeObject (self.mSharedObject!)
    }
    self.mSharedObject?.add (filled: inFilledPathes, inColor, knobIndex: inKnobIndex, clip: inClipRule)
  }

  //····················································································································

  mutating func add (knobAt inPoint: NSPoint, knobIndex inKnobIndex : Int, _ inKind : EBKnobKind, _ inKnobSize : CGFloat) {
    if self.mSharedObject == nil {
      self.mSharedObject = EBShapeObject ()
    }else if !isKnownUniquelyReferenced (&self.mSharedObject) {
      self.mSharedObject = EBShapeObject (self.mSharedObject!)
    }
    self.mSharedObject?.add (knobAt: inPoint, knobIndex: inKnobIndex, inKind, inKnobSize)
  }

  //····················································································································

  mutating func add (text inString : String,
                     _ inOrigin : NSPoint,
                     _ inTextAttributes : [NSAttributedString.Key : Any],
                     _ inHorizontalAlignment : EBTextHorizontalAlignment,
                     _ inVerticalAlignment : EBTextVerticalAlignment) {
    if self.mSharedObject == nil {
      self.mSharedObject = EBShapeObject ()
    }else if !isKnownUniquelyReferenced (&self.mSharedObject) {
      self.mSharedObject = EBShapeObject (self.mSharedObject!)
    }
    self.mSharedObject?.add (text: inString, inOrigin, inTextAttributes, inHorizontalAlignment, inVerticalAlignment)
  }

  //····················································································································

  mutating func add (textKnob inString : String,
                     _ inOrigin : NSPoint,
                     _ inFont : NSFont,
                     foreColor inForeColor : NSColor,
                     backColor inBackColor : NSColor,
                     _ inHorizontalAlignment : EBTextHorizontalAlignment,
                     _ inVerticalAlignment : EBTextVerticalAlignment,
                    knobIndex inKnobIndex : Int) {
    if self.mSharedObject == nil {
      self.mSharedObject = EBShapeObject ()
    }else if !isKnownUniquelyReferenced (&self.mSharedObject) {
      self.mSharedObject = EBShapeObject (self.mSharedObject!)
    }
    self.mSharedObject?.add (
      textKnob: inString,
      inOrigin,
      inFont,
      foreColor: inForeColor,
      backColor: inBackColor,
      inHorizontalAlignment,
      inVerticalAlignment,
      knobIndex: inKnobIndex
    )
  }

  //····················································································································

  mutating func add (_ inShape : EBShape) {
    if let addedSharedObject = inShape.mSharedObject {
      if self.mSharedObject == nil {
        self.mSharedObject = addedSharedObject
      }else if isKnownUniquelyReferenced (&self.mSharedObject) {
        self.mSharedObject?.add (addedSharedObject)
      }else{
        self.mSharedObject = EBShapeObject (self.mSharedObject!)
        self.mSharedObject?.add (addedSharedObject)
      }
    }
  }

  //····················································································································
  //  Tool tips
  //····················································································································

  mutating func addToolTip (_ inRect : NSRect, _ inText : String) {
    if self.mSharedObject == nil {
      self.mSharedObject = EBShapeObject ()
    }else if !isKnownUniquelyReferenced (&self.mSharedObject) {
      self.mSharedObject = EBShapeObject (self.mSharedObject!)
    }
    self.mSharedObject?.addToolTip (inRect, inText)
  }

  //····················································································································
  //  Draw
  //····················································································································

  func draw (_ inDirtyRect : NSRect) {
    self.mSharedObject?.draw (inDirtyRect)
  }

  //····················································································································
  //  Transformed shape using NSAffineTransform object
  //····················································································································

  func transformed (by inAffineTransform : AffineTransform) -> EBShape {
    var result = EBShape ()
    if let sharedObject = self.mSharedObject {
      result.mSharedObject = sharedObject.transformed (by: inAffineTransform)
    }
    return result
  }

  //····················································································································
  //  Blended color
  //····················································································································

  func blended (withFraction inFraction : CGFloat, of inColor : NSColor) -> EBShape {
    var result = EBShape ()
    if let sharedObject = self.mSharedObject {
      result.mSharedObject = sharedObject.blended (withFraction: inFraction, of: inColor)
    }
    return result
  }

  //····················································································································
  //  Accessors
  //····················································································································

  var boundingBox : NSRect {
    if let sharedObject = self.mSharedObject {
      return sharedObject.boundingBox
    }else{
      return .null
    }
  }

  //····················································································································
  //   Contains point
  //····················································································································

  func contains (point inPoint : NSPoint) -> Bool {
    if let sharedObject = self.mSharedObject {
      return sharedObject.contains (point: inPoint)
    }else{
      return false
    }
  }

  //····················································································································
  //   Knob Index
  //····················································································································

  func knobIndex (at inPoint : NSPoint) -> Int? {
    if let sharedObject = self.mSharedObject {
      return sharedObject.knobIndex (at: inPoint)
    }else{
      return nil
    }
  }

  //····················································································································
  //   intersects
  //····················································································································

  func intersects (rect inRect : NSRect) -> Bool {
    if let sharedObject = self.mSharedObject {
      return sharedObject.intersects (rect: inRect)
    }else{
      return false
    }
  }

  //····················································································································

  func installToolTips (toView inView : EBGraphicView) {
    self.mSharedObject?.installToolTips (toView: inView)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBShape
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate class EBShapeObject : Hashable {

  //····················································································································
  //  Properties
  //····················································································································

  private var mElements : [EBShapeElement]
  private var mToolTips : [EBToolTip]
  private var mCachedBoundingBox : NSRect

  //····················································································································
  //  Equatable Protocol
  //····················································································································

  static func == (lhs: EBShapeObject, rhs: EBShapeObject) -> Bool {
    return (lhs.mCachedBoundingBox == rhs.mCachedBoundingBox)
        && (lhs.mToolTips == rhs.mToolTips)
        && (lhs.mElements == rhs.mElements)
  }

  //····················································································································
  // Hashable Protocol
  //····················································································································

   func hash (into hasher: inout Hasher) {
    self.mElements.hash (into: &hasher)
    self.mToolTips.hash (into: &hasher)
    self.mCachedBoundingBox.hash (into: &hasher)
  }

  //····················································································································
  //  init
  //····················································································································

  init () {
    mElements = [EBShapeElement] ()
    mToolTips = [EBToolTip] ()
    mCachedBoundingBox = NSRect.null
  }

  //····················································································································

  init (_ inSource : EBShapeObject) {
    mElements = inSource.mElements
    mToolTips = inSource.mToolTips
    mCachedBoundingBox = inSource.mCachedBoundingBox
  }

  //····················································································································
  //  add
  //····················································································································

  func add (_ inShape : EBShapeObject) {
    self.mElements += inShape.mElements
    self.mToolTips += inShape.mToolTips
    self.mCachedBoundingBox = self.mCachedBoundingBox.union (inShape.mCachedBoundingBox)
  }

  //····················································································································

  func add (filled inFilledPaths : [EBBezierPath],
            _ inColor : NSColor?,
            knobIndex inKnobIndex : Int?,
            clip inClipRule : EBClipRule) {
    var nonEmptyBezierPathes = [EBBezierPath] ()
    for path in inFilledPaths {
      if !path.isEmpty {
        nonEmptyBezierPathes.append (path)
      }
    }
    if nonEmptyBezierPathes.count > 0 {
      let e = EBShapeElement (nonEmptyBezierPathes, .fill, inColor, inKnobIndex, inClipRule)
      self.mElements.append (e)
      self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
    }
  }

  //····················································································································

  func add (stroke inStrokePathes : [EBBezierPath],
            _ inColor : NSColor?,
            knobIndex inKnobIndex : Int?,
            clip inClipRule : EBClipRule) {
    var filledBezierPathes = [EBBezierPath] ()
    var strokeBezierPathes = [EBBezierPath] ()
    for path in inStrokePathes {
      if !path.isEmpty {
        if path.lineWidth > 0.0 {
          filledBezierPathes.append (path.pathByStroking)
        }else{
          strokeBezierPathes.append (path)
        }
      }
    }
    if filledBezierPathes.count > 0 {
      let e = EBShapeElement (filledBezierPathes, .fill, inColor, inKnobIndex, inClipRule)
      self.mElements.append (e)
      self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
    }
    if strokeBezierPathes.count > 0 {
      let e = EBShapeElement (strokeBezierPathes, .strokeThinnestLine, inColor, inKnobIndex, inClipRule)
      self.mElements.append (e)
      self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
    }
  }

  //····················································································································

  func add (knobAt inPoint: NSPoint, knobIndex inKnobIndex : Int, _ inKind : EBKnobKind, _ inKnobSize : CGFloat) {
    let r = NSRect (x: inPoint.x - inKnobSize / 2.0, y: inPoint.y - inKnobSize / 2.0, width: inKnobSize, height: inKnobSize)
    var bp : EBBezierPath
    let backColor : NSColor
    let frameColor : NSColor
    switch inKind {
    case .rect :
      bp = EBBezierPath (rect: r)
      backColor = .white
      frameColor = .black
    case .circ :
      bp = EBBezierPath (ovalIn: r)
      backColor = .white
      frameColor = .black
    case .transparentCircle :
      bp = EBBezierPath (ovalIn: r)
      backColor = .clear
      frameColor = .clear
    }
  //--- Background
    let e = EBShapeElement ([bp], .fill, backColor, inKnobIndex, .none)
    self.mElements.append (e)
    self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
  //--- Line
    bp.lineWidth = 0.0 // Thinnest line
    bp.lineCapStyle = .round
    bp.lineJoinStyle = .round
    self.add (stroke: [bp], frameColor, knobIndex: nil, clip: .none)
  }

  //····················································································································

  func add (text inString: String,
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
        let e = EBShapeElement ([bp], .fill, backColor, nil, .none)
        self.mElements.append (e)
        self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
      }else{
        let bp = EBBezierPath (rect: filledBezierPath.bounds)
        let e = EBShapeElement ([bp], .fill, nil, nil, .none)
        self.mElements.append (e)
        self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
     }
    //--- Append text
      let e = EBShapeElement ([filledBezierPath], .fill, textColor, nil, .none)
      self.mElements.append (e)
      self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
    }
  }

  //····················································································································
  //  Text knob
  //····················································································································

  func add (textKnob inString : String,
            _ inOrigin : NSPoint,
            _ inFont : NSFont,
            foreColor inForeColor : NSColor,
            backColor inBackColor : NSColor,
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
      var bp = EBBezierPath (roundedRect: filledBezierPath.bounds.insetBy (dx: -1.0, dy: -1.0), xRadius: 2.0, yRadius: 2.0)
      bp.lineWidth = 0.5
      bp.lineJoinStyle = .round
      bp.lineCapStyle = .round
      let e1 = EBShapeElement ([bp], .fill, inBackColor, inKnobIndex, .none)
      self.mElements.append (e1)
      let e2 = EBShapeElement ([bp.pathByStroking], .fill, .cyan, inKnobIndex, .none)
      self.mElements.append (e2)
      self.mCachedBoundingBox = self.mCachedBoundingBox.union (e2.boundingBox)
    }
  //--- Append text
    let e = EBShapeElement ([filledBezierPath], .fill, inForeColor, nil, .none)
    self.mElements.append (e)
    self.mCachedBoundingBox = self.mCachedBoundingBox.union (e.boundingBox)
  }

  //····················································································································
  //  Tool tips
  //····················································································································

  func addToolTip (_ inRect : NSRect, _ inText : String) {
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

  func draw (_ inDirtyRect : NSRect) {
    if self.mCachedBoundingBox.intersects (inDirtyRect) {
      for element in self.mElements {
        if element.boundingBox.intersects (inDirtyRect) {
          element.draw (inDirtyRect)
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

  func transformed (by inAffineTransform : AffineTransform) -> EBShapeObject {
    let result = EBShapeObject ()
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

   func blended (withFraction inFraction : CGFloat, of inColor : NSColor) -> EBShapeObject {
    let result = EBShapeObject ()
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
  case transparentCircle
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
//    EBPathKind
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum EBPathKind : Hashable {
  case strokeThinnestLine
  case fill
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
// EBShapeElement
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate final class EBShapeElement : Hashable {

  //····················································································································
  // Properties
  //····················································································································

  private let mPathes : [EBBezierPath]
  private let mKind : EBPathKind
  private let mColor : NSColor?
  private let mKnobIndex : Int?
  private let mClipRule : EBClipRule

  //····················································································································
  //  init
  //····················································································································

  init (_ inPathes : [EBBezierPath],
        _ inKind : EBPathKind,
        _ inColor : NSColor?,
        _ inKnobIndex : Int? = nil,
        _ inClipRule : EBClipRule) {
    mPathes = inPathes
    mKind = inKind
    mColor = inColor
    mKnobIndex = inKnobIndex
    mClipRule = inClipRule
  }

  //····················································································································
  // Hashable
  //····················································································································

   func hash (into hasher: inout Hasher) {
    self.mKind.hash (into: &hasher)
    self.mColor?.hash (into: &hasher)
    self.mKnobIndex?.hash (into: &hasher)
    self.mClipRule.hash (into: &hasher)
    self.mPathes.hash (into: &hasher)
  }

  //····················································································································
  // Equatable
  //····················································································································

  static func == (lhs: EBShapeElement, rhs: EBShapeElement) -> Bool {
    var result = lhs.mKind == rhs.mKind
    if result {
      result = lhs.mColor == rhs.mColor
    }
    if result {
      result = lhs.mKnobIndex == rhs.mKnobIndex
    }
    if result {
      result = lhs.mClipRule == rhs.mClipRule
    }
    if result {
      result = lhs.mPathes == rhs.mPathes
    }
    return result
  }

  //····················································································································
  //  Draw Rect
  //····················································································································

  func draw (_ inDirtyRect : NSRect) {
    if let color = self.mColor {
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
      switch self.mKind {
      case .fill :
        color.setFill ()
        for bp in self.mPathes {
          bp.fill ()
        }
      case .strokeThinnestLine :
        color.setStroke ()
        for bp in self.mPathes {
          bp.stroke ()
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
    for bp in self.mPathes {
      switch self.mKind {
      case .fill :
        r = r.union (bp.bounds)
      case .strokeThinnestLine :
        r = r.union (bp.bounds.insetBy (dx: -1.0, dy: -1.0))
      }
    }
    switch self.mClipRule {
    case .none :
      ()
    case .inside (let clipBezierPath) :
      r = r.intersection (clipBezierPath.bounds)
    case .outside (_) :
      ()
    }
    return r.insetBy (dx: -1.0, dy: -1.0)
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
      for path in self.mPathes {
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
    if ok {
      for path in self.mPathes {
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
    for path in self.mPathes.reversed () {
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
    for path in self.mPathes {
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
    return EBShapeElement (paths, self.mKind, self.mColor, self.mKnobIndex, clipRule)
  }

  //····················································································································
  //  Blended color
  //····················································································································

  func blended (withFraction inFraction : CGFloat, of inColor : NSColor) -> EBShapeElement {
    if let color = self.mColor, let newColor = color.blended (withFraction: inFraction, of: inColor) {
      return EBShapeElement (self.mPathes, self.mKind, newColor, self.mKnobIndex, self.mClipRule)
    }else{
      return self
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

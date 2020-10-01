//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    extension NSBezierPath : ClassPropertyProtocol
//----------------------------------------------------------------------------------------------------------------------

extension NSBezierPath : ValuePropertyProtocol {

  //····················································································································

  final func ebHashValue () -> UInt32 {
    let s = self.archiveToString ()
    return s.ebHashValue ()
  }

  //····················································································································

  func convertToNSObject () -> NSObject {
    let s = self.archiveToString ()
    return s as NSString
  }

  //····················································································································

  static func convertFromNSObject (object : NSObject) -> Self {
    let string = object as! String
    return Self.unarchiveFromString (string: string) as! Self
  }

  //····················································································································

  func archiveToString () -> String {
    var result = ""
    var idx = 0
    var points = [NSPoint] (repeating: .zero, count: 3)
    while idx < self.elementCount {
      let type = self.element (at: idx, associatedPoints: &points)
      idx += 1
      switch type {
      case .moveTo:
        result += ":\(points[0].x) \(points[0].y)"
      case .lineTo:
        result += ";\(points[0].x) \(points[0].y)"
      case .curveTo:
        result += "@\(points[0].x) \(points[0].y) \(points[1].x) \(points[1].y) \(points[2].x) \(points[2].y)"
      case .closePath:
        result += "#"
      @unknown default :
        ()
      }
    }
    result += "*\(self.windingRule.rawValue) \(self.lineCapStyle.rawValue) \(self.lineJoinStyle.rawValue)"
    result += " \(self.lineWidth) \(self.flatness) \(self.miterLimit)"
    return result
  }

  //····················································································································

  static func unarchiveFromData (data : Data) -> NSObject? {
    return NSKeyedUnarchiver.unarchiveObject (with: data) as? NSBezierPath
  }

  //····················································································································

  static func unarchiveFromString (string : String) -> NSObject? {
    let bp = NSBezierPath ()
    let scanner = Scanner (string: string)
    var ok = true
    var loop = true
    while ok && loop {
      if scanner.scanString (":", into: nil) {
        var x = 0.0
        ok = scanner.scanDouble (&x)
        var y = 0.0
        if ok {
          ok = scanner.scanDouble (&y)
        }
        if ok {
          bp.move (to: NSPoint (x: CGFloat (x), y: CGFloat (y)))
        }
      }else if scanner.scanString (";", into: nil) {
        var x = 0.0
        ok = scanner.scanDouble (&x)
        var y = 0.0
        if ok {
          ok = scanner.scanDouble (&y)
        }
        if ok {
          bp.line (to: NSPoint (x: CGFloat (x), y: CGFloat (y)))
        }
      }else if scanner.scanString ("@", into: nil) {
        var x0 = 0.0
        ok = scanner.scanDouble (&x0)
        var y0 = 0.0
        if ok {
          ok = scanner.scanDouble (&y0)
        }
        var x1 = 0.0
        if ok {
          ok = scanner.scanDouble (&x1)
        }
        var y1 = 0.0
        if ok {
          ok = scanner.scanDouble (&y1)
        }
        var x2 = 0.0
        if ok {
          ok = scanner.scanDouble (&x2)
        }
        var y2 = 0.0
        if ok {
          ok = scanner.scanDouble (&y2)
        }
        if ok {
          bp.curve (
            to: NSPoint (x: CGFloat (x2), y: CGFloat (y2)),
            controlPoint1: NSPoint (x: CGFloat (x0), y: CGFloat (y0)),
            controlPoint2: NSPoint (x: CGFloat (x1), y: CGFloat (y1))
          )
        }
      }else if scanner.scanString ("#", into: nil) {
        bp.close ()
      }else if scanner.scanString ("*", into: nil) {
        loop = false
      }
    }
    if ok {
      var windingRuleRawValue = 0
      ok = scanner.scanInt (&windingRuleRawValue)
      if ok, let windingRule = NSBezierPath.WindingRule (rawValue: UInt (windingRuleRawValue)) {
        bp.windingRule = windingRule
      }else{
        ok = false
      }
    }
    if ok {
      var lineCapStyleRawValue = 0
      ok = scanner.scanInt (&lineCapStyleRawValue)
      if ok, let lineCapStyle = NSBezierPath.LineCapStyle (rawValue: UInt (lineCapStyleRawValue)) {
        bp.lineCapStyle = lineCapStyle
      }else{
        ok = false
      }
    }
    if ok {
      var lineJoinStyleRawValue = 0
      ok = scanner.scanInt (&lineJoinStyleRawValue)
      if ok, let lineJoinStyle = NSBezierPath.LineJoinStyle (rawValue: UInt (lineJoinStyleRawValue)) {
        bp.lineJoinStyle = lineJoinStyle
      }else{
        ok = false
      }
    }
    if ok {
      var lineWidth = 0.0
      ok = scanner.scanDouble (&lineWidth)
      if ok {
        bp.lineWidth = CGFloat (lineWidth)
      }
    }
    if ok {
      var flatness = 0.0
      ok = scanner.scanDouble (&flatness)
      if ok {
        bp.flatness = CGFloat (flatness)
      }
    }
    if ok {
      var miterLimit = 0.0
      ok = scanner.scanDouble (&miterLimit)
      if ok {
        bp.miterLimit = CGFloat (miterLimit)
      }
    }
    return bp
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

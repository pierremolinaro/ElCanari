//
//  utiliters-symbol-issues.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 27/11/2018.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private let HILITE_SIZE = SYMBOL_GRID_IN_COCOA_UNIT * 4.0
private let LINE_WIDTH : CGFloat = 0.25

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Array where Element == CanariIssue {

  //····················································································································

  mutating func appendSymbolHorizontalIssueAt (x: Int, y: Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x) - HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y) - HILITE_SIZE / 2.0,
      width: HILITE_SIZE,
      height: HILITE_SIZE
    )
    let bp = NSBezierPath (ovalIn: r)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Horizontal Alignment", path: bp))
  }

  //····················································································································

  mutating func appendSymbolVerticalIssueAt (x: Int, y: Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x) - HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y) - HILITE_SIZE / 2.0,
      width: HILITE_SIZE,
      height: HILITE_SIZE
    )
    let bp = NSBezierPath (ovalIn: r)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Vertical Alignment", path: bp))
  }

  //····················································································································

  mutating func appendSymbolWidthIssueAt (x: Int, y: Int, width : Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x) - HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y) - HILITE_SIZE / 2.0,
      width: canariUnitToCocoa (width) + HILITE_SIZE,
      height: HILITE_SIZE
    )
    let bp = NSBezierPath (roundedRect: r, xRadius: HILITE_SIZE / 2.0, yRadius: HILITE_SIZE / 2.0)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Width Alignment", path: bp))
  }

  //····················································································································

  mutating func appendSymbolHeightIssueAt (x: Int, y: Int, height : Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x) - HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y) - HILITE_SIZE / 2.0,
      width: HILITE_SIZE,
      height: canariUnitToCocoa (height) + HILITE_SIZE
    )
    let bp = NSBezierPath (roundedRect: r, xRadius: HILITE_SIZE / 2.0, yRadius: HILITE_SIZE / 2.0)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Height Alignment", path: bp))
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


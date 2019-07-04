//
//  utilities-symbol-issues.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 27/11/2018.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private let LINE_WIDTH : CGFloat = 0.75

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Array where Element == CanariIssue {

  //····················································································································

  mutating func appendSymbolEmptyPinNameIssueAt (x: Int, y: Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      width: CANARI_ISSUE_HILITE_SIZE,
      height: CANARI_ISSUE_HILITE_SIZE
    )
    var bp = EBBezierPath (ovalIn: r)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .warning, message: "Empty Pin Name", path: bp))
  }

  //····················································································································

  mutating func appendSymbolEmptyTextIssueAt (x: Int, y: Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      width: CANARI_ISSUE_HILITE_SIZE,
      height: CANARI_ISSUE_HILITE_SIZE
    )
    var bp = EBBezierPath (ovalIn: r)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .warning, message: "Empty Text", path: bp))
  }

  //····················································································································

  mutating func appendSymbolSeveralPinAtSameLocationIssue (pinLocation inPoint: CanariPoint) {
    let r = NSRect (
      x: canariUnitToCocoa (inPoint.x) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (inPoint.y) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      width: CANARI_ISSUE_HILITE_SIZE,
      height: CANARI_ISSUE_HILITE_SIZE
    )
    var bp = EBBezierPath (ovalIn: r)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Several pin at the same location", path: bp))
  }

  //····················································································································

  mutating func appendSymbolDuplicatedPinNameIssueAt (rect: NSRect) {
    var bp = EBBezierPath (rect: rect)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Duplicated Pin Name", path: bp))
  }

  //····················································································································

  mutating func appendSymbolNoPinNameIssue () {
    self.append (CanariIssue (kind: .warning, message: "No Pin"))
  }

  //····················································································································

  mutating func appendSymbolPinHorizontalIssueAt (x: Int, y: Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      width: CANARI_ISSUE_HILITE_SIZE,
      height: CANARI_ISSUE_HILITE_SIZE
    )
    var bp = EBBezierPath (ovalIn: r)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Pin Horizontal Alignment", path: bp))
  }

  //····················································································································

  mutating func appendSymbolPinVerticalIssueAt (x: Int, y: Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      width: CANARI_ISSUE_HILITE_SIZE,
      height: CANARI_ISSUE_HILITE_SIZE
    )
    var bp = EBBezierPath (ovalIn: r)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Pin Vertical Alignment", path: bp))
  }

  //····················································································································

  mutating func appendSymbolHorizontalIssueAt (x: Int, y: Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      width: CANARI_ISSUE_HILITE_SIZE,
      height: CANARI_ISSUE_HILITE_SIZE
    )
    var bp = EBBezierPath (ovalIn: r)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Horizontal Alignment", path: bp))
  }

  //····················································································································

  mutating func appendSymbolVerticalIssueAt (x: Int, y: Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      width: CANARI_ISSUE_HILITE_SIZE,
      height: CANARI_ISSUE_HILITE_SIZE
    )
    var bp = EBBezierPath (ovalIn: r)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Vertical Alignment", path: bp))
  }

  //····················································································································

  mutating func appendSymbolWidthIssueAt (x: Int, y: Int, width : Int, height : Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y + height / 2) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      width: canariUnitToCocoa (width) + CANARI_ISSUE_HILITE_SIZE,
      height: CANARI_ISSUE_HILITE_SIZE
    )
    var bp = EBBezierPath (roundedRect: r, xRadius: CANARI_ISSUE_HILITE_SIZE / 2.0, yRadius: CANARI_ISSUE_HILITE_SIZE / 2.0)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Width Alignment", path: bp))
  }

  //····················································································································

  mutating func appendSymbolHeightIssueAt (x: Int, y: Int, width : Int, height : Int) {
    let r = NSRect (
      x: canariUnitToCocoa (x + width / 2) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      y: canariUnitToCocoa (y) - CANARI_ISSUE_HILITE_SIZE / 2.0,
      width: CANARI_ISSUE_HILITE_SIZE,
      height: canariUnitToCocoa (height) + CANARI_ISSUE_HILITE_SIZE
    )
    var bp = EBBezierPath (roundedRect: r, xRadius: CANARI_ISSUE_HILITE_SIZE / 2.0, yRadius: CANARI_ISSUE_HILITE_SIZE / 2.0)
    bp.lineWidth = LINE_WIDTH
    self.append (CanariIssue (kind: .error, message: "Height Alignment", path: bp))
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


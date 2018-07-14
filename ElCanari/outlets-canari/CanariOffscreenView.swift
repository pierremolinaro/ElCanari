//
//  CanariOffscreenView.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 09/07/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum StrokeOrFill {
  case stroke
  case fill
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   CanariViewWithZoomAndFlip
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class CanariOffscreenView : NSView, EBUserClassNameProtocol {

  private var mBezierPaths = [([NSBezierPath], NSColor, StrokeOrFill)] ()
  private var mBackColor : NSColor? = nil

  //····················································································································

  override init(frame frameRect: NSRect) {
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

  func setPaths (_ inPaths : [([NSBezierPath], NSColor, StrokeOrFill)]) {
    self.mBezierPaths = inPaths
  }

  //····················································································································
  //  Set back color
  //····················································································································

  func setBackColor (_ inColor : NSColor) {
    self.mBackColor = inColor
  }

  //····················································································································
  //  Draw Rect
  //····················································································································

  override func draw (_ dirtyRect: NSRect) {
    if let backColor = mBackColor {
      backColor.setFill ()
      NSRectFill (dirtyRect)
    }
  //--- Bezier paths
    for (paths, color, operation) in self.mBezierPaths {
      switch operation {
      case .stroke :
        color.setStroke ()
        for bp in paths {
          bp.stroke ()
        }
      case .fill :
        color.setFill ()
        for bp in paths {
          bp.fill ()
        }
      }
    }
  }

  //····················································································································

}

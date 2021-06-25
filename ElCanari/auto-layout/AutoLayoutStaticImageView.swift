//
//  AutoLayoutStaticImageView.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 25/06/2021.
//
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   AutoLayoutStaticImageView
//----------------------------------------------------------------------------------------------------------------------

final class AutoLayoutStaticImageView : NSImageView, EBUserClassNameProtocol {

  //····················································································································

  init (name inImageName : String) {
    super.init (frame: NSRect ())
    noteObjectAllocation (self)
    self.translatesAutoresizingMaskIntoConstraints = false

    self.image = NSImage (named: inImageName)
    self.imageScaling = .scaleProportionallyUpOrDown
    self.imageFrameStyle = .none

    self.frame.size = self.intrinsicContentSize
  }

  //····················································································································

  required init? (coder : NSCoder) {
    fatalError ("init(coder:) has not been implemented")
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

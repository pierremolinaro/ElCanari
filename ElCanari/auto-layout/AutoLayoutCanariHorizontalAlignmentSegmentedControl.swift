//
//  AutoLayoutCanariHorizontalAlignmentSegmentedControl.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 19/06/2021.
//
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

final class AutoLayoutCanariHorizontalAlignmentSegmentedControl : NSSegmentedControl, EBUserClassNameProtocol {

  //····················································································································

  init (small inSmall : Bool) {
    super.init (frame: NSRect ())
    noteObjectAllocation (self)

    self.translatesAutoresizingMaskIntoConstraints = false
    self.controlSize = inSmall ? .small : .regular
    self.segmentStyle = SEGMENTED_CONTROL_STYLE
    self.font = NSFont.systemFont (ofSize: inSmall ? NSFont.smallSystemFontSize : NSFont.systemFontSize)
    self.target = self
    self.action = #selector (Self.selectedSegmentDidChange (_:))
    if #available (OSX 10.13, *) {
      self.setValue (NSNumber (value: 2), forKey: "segmentDistribution") // fillEqually
    }

    self.addSegment (withImageNamed: "alignmentLeft")
    self.addSegment (withImageNamed: "alignmentCenter")
    self.addSegment (withImageNamed: "alignmentRight")
  }

  //····················································································································

  required init?(coder inCoder: NSCoder) {
    fatalError ("init(coder:) has not been implemented")
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  override func ebCleanUp () {
    self.mAlignmentController?.unregister ()
    self.mAlignmentController = nil
    super.ebCleanUp ()
  }

  //····················································································································
  // ADD PAGE
  //····················································································································

  final func addSegment (withImageNamed inImageName : String) {
    let idx = self.segmentCount
    self.segmentCount += 1
    if let image = NSImage (named: inImageName) {
      self.setImage (image, forSegment: idx)
      self.setImageScaling (.scaleProportionallyUpOrDown, forSegment: idx)
      self.setLabel ("", forSegment: idx)
    }else{
      self.setLabel ("?", forSegment: idx)
    }
 //   self.frame.size = self.intrinsicContentSize
  }

  //····················································································································

  final func makeWidthExpandable () -> Self {
    self.setContentHuggingPriority (.init (rawValue: 1.0), for: .horizontal)
    return self
  }

  //····················································································································

  override func resizeSubviews (withOldSize oldSize : NSSize) {
    super.resizeSubviews (withOldSize: oldSize)
    if #available (OSX 10.13, *) {
    }else if self.segmentCount > 1 {
      let width = self.bounds.size.width / CGFloat (self.segmentCount) - 3.0
      for i in 0 ..< self.segmentCount {
        self.setWidth (width, forSegment: i)
      }
    }
  }

  //····················································································································
  // SELECTED TAB DID CHANGE
  //····················································································································

  @objc func selectedSegmentDidChange (_ inSender : Any?) {
    _ = self.mObject?.setFrom (rawValue: self.selectedSegment)
  }

  //····················································································································
  //  $alignment binding
  //····················································································································

  private var mAlignmentController : EBReadOnlyPropertyController? = nil
  private var mObject : EBReadWriteObservableEnumProtocol? = nil

  //····················································································································

  final func bind_alignment (_ inObject : EBReadWriteObservableEnumProtocol) -> Self {
    self.mObject = inObject
    self.mAlignmentController = EBReadOnlyPropertyController (
      observedObjects: [inObject],
      callBack: { [weak self] in self?.update (from: inObject) }
    )
    return self
  }

  //····················································································································

  fileprivate func update (from inObject : EBReadWriteObservableEnumProtocol) {
    self.selectedSegment = inObject.rawValue () ?? 0
    self.selectedSegmentDidChange (nil)
  }


  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

//
//  AutoLayoutTextObserverView.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 28/06/2021.
//
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

final class AutoLayoutTextObserverView : NSScrollView, EBUserClassNameProtocol {

  //····················································································································

  fileprivate let mTextView = InternalAutoLayoutTextView ()

  //····················································································································

  init () {
    super.init (frame: NSRect (x: 0, y: 0, width: 100, height: 100))
    noteObjectAllocation (self)
//    self.translatesAutoresizingMaskIntoConstraints = false // DO NOT UNCOMMENT

    self.mTextView.isEditable = false
    self.mTextView.isSelectable = true
    self.mTextView.isVerticallyResizable = true
    self.mTextView.isHorizontallyResizable = true
    self.mTextView.isRichText = false
    self.mTextView.importsGraphics = false
    self.mTextView.allowsImageEditing = false
//    self.mTextView.backgroundColor = .yellow
//    self.mTextView.drawsBackground = true

//    Swift.print ("min size \(self.mTextView.minSize)")
//    Swift.print ("max size \(self.mTextView.maxSize)")

    let MAX_SIZE : CGFloat = 1_000_000.0 // CGFloat.greatestFiniteMagnitude
    self.mTextView.minSize = NSSize (width: 0.0, height: contentSize.height)
    self.mTextView.maxSize = NSSize (width: MAX_SIZE, height: MAX_SIZE)
    self.mTextView.isVerticallyResizable = true
    self.mTextView.isHorizontallyResizable = true
    self.mTextView.textContainer?.containerSize = NSSize (width: contentSize.width, height: MAX_SIZE)
    self.mTextView.textContainer?.widthTracksTextView = true

    self.drawsBackground = false
    self.documentView = self.mTextView
    self.hasHorizontalScroller = true
    self.hasVerticalScroller = true
    self.automaticallyAdjustsContentInsets = true
  }

  //····················································································································

  required init? (coder inCoder : NSCoder) {
    fatalError ("init(coder:) has not been implemented")
  }

  //····················································································································

  override func ebCleanUp () {
    self.mValueController?.unregister ()
    self.mValueController = nil
    super.ebCleanUp ()
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  // setRedTextColor
  //····················································································································

  final func setRedTextColor () -> Self {
    self.mTextView.textColor = .red
    return self
  }

  //····················································································································

  var string : String {
    get { return self.mTextView.string }
    set { self.mTextView.string = newValue }
  }

  var textStorage : NSTextStorage? { self.mTextView.textStorage }

  //····················································································································
  //  value binding
  //····················································································································

  fileprivate func update (from inObject : EBReadOnlyProperty_String) {
    switch inObject.selection {
    case .empty, .multiple :
      self.mTextView.string = ""
      self.mTextView.invalidateIntrinsicContentSize ()
    case .single (let propertyValue) :
      let currentSelectedRangeValues = self.mTextView.selectedRanges
      self.mTextView.string = propertyValue
      self.mTextView.selectedRanges = currentSelectedRangeValues
      self.mTextView.invalidateIntrinsicContentSize ()
    }
  }

  //····················································································································

  private var mValueController : EBReadOnlyPropertyController? = nil

  //····················································································································

  final func bind_observedValue (_ inObject : EBReadOnlyProperty_String) -> Self {
    self.mValueController = EBReadOnlyPropertyController (
      observedObjects: [inObject],
      callBack: { [weak self] in self?.update (from: inObject) }
    )
    return self
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension AutoLayoutPackageDocument {
  @objc func programHelpAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    if let window = self.windowForSheet {
      let sheet = NSPanel ()
      var mask : NSWindow.StyleMask = sheet.styleMask
      mask.insert (.resizable)
      sheet.styleMask = mask
      sheet.setContentSize (NSSize (width: 600.0, height: 500.0))
    //---
      let vStack = AutoLayoutVerticalStackView ().set (margins: 20)
      vStack.appendView (AutoLayoutFlexibleSpace ())
    //--- Text
      let textView = EmbeddedAutoLayoutTextView ()
      textView.isEditable = false
      textView.isSelectable = true
      textView.isVerticallyResizable = true
      textView.isHorizontallyResizable = true
      textView.isRichText = true
      textView.importsGraphics = false
      textView.allowsImageEditing = false
      textView.isFieldEditor = false
      if let path = Bundle.main.path (forResource: "package-program-guide", ofType: "rtf", inDirectory: nil) {
        // Swift.print ("path \(path)")
        let rtfData = try! Data (contentsOf: URL (fileURLWithPath: path))
        textView.replaceCharacters (in: NSRange (), withRTF: rtfData)
      }
      let scrollView = NSScrollView (frame: NSRect ())
      scrollView.documentView = textView
      scrollView.hasHorizontalScroller = true
      scrollView.hasVerticalScroller = true
      vStack.appendView (scrollView)
    //--- Ok button
      let okButton = CanariOkButtonForSheet ()
      vStack.appendView (okButton)
    //---
      sheet.contentView = vStack
      if let cell = okButton.cell as? NSButtonCell {
        sheet.defaultButtonCell = cell
      }
      sheet.initialFirstResponder = okButton
      window.beginSheet (sheet, completionHandler: nil)
    }
//--- END OF USER ZONE 2
  }
}

//----------------------------------------------------------------------------------------------------------------------

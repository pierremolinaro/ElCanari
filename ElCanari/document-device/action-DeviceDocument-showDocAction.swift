//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension DeviceDocument {
  @objc func showDocAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    let selectedDocArray = self.mDocumentationController.selectedArray_property.propval
    if selectedDocArray.count == 1 {
      let selectedDoc = selectedDocArray [0]
      let window = CanariPDFWindow (fileName: selectedDoc.mFileName, pdfData: selectedDoc.mFileData)
//        contentRect: NSRect (x:0, y:0, width:800, height: 600),
//        styleMask: [.titled, .closable, .resizable],
//        backing: .buffered,
//        defer: false
//      )
//      window.title = selectedDoc.mFileName
//      window.isReleasedWhenClosed = false
//      let pdfView = PDFView (frame: window.contentView!.frame)
//      pdfView.document = PDFDocument (data: selectedDoc.mFileData)
//      window.contentView = pdfView
      window.makeKeyAndOrderFront (nil)
    }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
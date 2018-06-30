//
//  CanariBoardInsertMenu.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 30/06/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   CanariBoardInsertMenu
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class CanariBoardInsertMenu : NSMenu, EBUserClassNameProtocol {

  //····················································································································
  //   OUTLET
  //····················································································································

  @IBOutlet weak var mDocument : PMMergerDocument?  = nil // Reference to document SHOULD BE weak
  
  //····················································································································
  //   INIT
  //····················································································································

  required init (coder: NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
    self.autoenablesItems = true
  }

  //····················································································································

  override init (title: String) {
    super.init (title:title)
    noteObjectAllocation (self)
    self.autoenablesItems = true
  }
  
  //····················································································································
  //   DEINIT
  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //    BINDING names
  //····················································································································

  private var mNamesController : Controller_CanariBoardInsertMenu_names?

  //····················································································································

  func bind_names (_ names:EBReadOnlyProperty_MergerBoardModelArray, file:String, line:Int) {
    mNamesController = Controller_CanariBoardInsertMenu_names (names:names, outlet:self)
  }

  //····················································································································

  func unbind_names () {
    mNamesController?.unregister ()
    mNamesController = nil
  }

  //····················································································································

  func setNames (_ inNameArray : [String]) {
    self.removeAllItems ()
    if inNameArray.count == 0 {
      self.addItem (withTitle: "No Board Model to Insert", action: nil, keyEquivalent: "")
    }else{
      for name in inNameArray {
        self.addItem (withTitle: "Insert \"\(name)\"", action: #selector (PMMergerDocument.insertBoardAction (_:)), keyEquivalent: "")
        self.items.last?.target = mDocument
        self.items.last?.isEnabled = true
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_CanariBoardInsertMenu_names
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_CanariBoardInsertMenu_names : EBSimpleController {

  private let mNames : EBReadOnlyProperty_MergerBoardModelArray
  private let mOutlet : CanariBoardInsertMenu

  //····················································································································

  init (names : EBReadOnlyProperty_MergerBoardModelArray, outlet : CanariBoardInsertMenu) {
    mNames = names
    mOutlet = outlet
    super.init (observedObjects:[names], outlet:outlet)
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mNames.prop {
    case .noSelection :
      mOutlet.setNames ([])
    case .singleSelection (let v) :
      mOutlet.setNames (v.modelNameArray)
    case .multipleSelection :
      mOutlet.setNames ([])
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//
//  ApplicationDelegate.swift
//  canari
//
//  Created by Pierre Molinaro on 03/07/2015.
//
//
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension ApplicationDelegate {

  //····················································································································

  @IBAction func openCanariWebSite (_ inSender : AnyObject) {
    let ws = NSWorkspace.shared
    let urlString = "http://canari.rts-software.org"
    if let url = URL (string:urlString) {
      ws.open (url)
    }
  }


  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

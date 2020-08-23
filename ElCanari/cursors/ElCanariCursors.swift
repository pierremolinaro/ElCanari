//
//  ElCanariCursors.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 23/08/2020.
//
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

func upDownRightLeftCursor () -> NSCursor {
  let cursor = NSCursor (
    image: NSImage (imageLiteralResourceName: "upDownRightLeftCursor"),
    hotSpot: NSPoint (x: 6.0, y: 7.0)
  )
  return cursor
}

//----------------------------------------------------------------------------------------------------------------------

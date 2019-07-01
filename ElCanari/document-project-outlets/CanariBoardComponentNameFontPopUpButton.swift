//
//  CanariBoardComponentNameFontPopUpButton.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 1/07/2019.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   CanariBoardComponentNameFontPopUpButton
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class CanariBoardComponentNameFontPopUpButton : NSPopUpButton, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    noteObjectAllocation (self)
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  // MARK: -
  //····················································································································

  private var mFontsModel : ReadOnlyArrayOf_FontInProject? = nil
  private var mSelectedObjects : ReadOnlyArrayOf_ComponentInProject? = nil
  private var mObserver : EBOutletEvent? = nil

  //····················································································································

  func register (fontsModel inFontsModel : ReadOnlyArrayOf_FontInProject,
                 selectionController inSelectedObjects : ReadOnlyArrayOf_ComponentInProject) {
    self.mFontsModel = inFontsModel
    self.mSelectedObjects = inSelectedObjects
    let observer = EBOutletEvent ()
    self.mObserver = observer
    observer.mEventCallBack = { self.buildPopUpButton () }
    inFontsModel.addEBObserverOf_mFontName (observer)
    inSelectedObjects.addEBObserverOf_componentNameFontName (observer)
  }

  //····················································································································

  func unregister () {
    if let observer = self.mObserver {
      observer.mEventCallBack = nil
      self.mFontsModel?.removeEBObserverOf_mFontName (observer)
      self.mSelectedObjects?.removeEBObserverOf_componentNameFontName (observer)
      self.mObserver = nil
    }
    self.mFontsModel = nil
    self.mSelectedObjects = nil
  }

  //····················································································································

  private func buildPopUpButton () {
    //Swift.print ("buildPopUpButton")
    var fontNameSet = Set <String> ()
    if let selectedComponents = self.mSelectedObjects?.propval {
      for component in selectedComponents {
        if let fontName = component.componentNameFontName {
          fontNameSet.insert (fontName)
        }
      }
      //Swift.print ("fontNameSet \(fontNameSet), selectedTexts \(selectedTexts.count)")
    }
  //---
    self.removeAllItems ()
    if let fontsModel = self.mFontsModel?.propval {
      for font in fontsModel {
        self.addItem (withTitle: font.mFontName)
        self.lastItem?.representedObject = font
        self.lastItem?.target = self
        self.lastItem?.action = #selector (CanariBoardComponentNameFontPopUpButton.changeFontAction (_:))
        self.lastItem?.isEnabled = true
        if fontNameSet.contains (font.mFontName) {
          self.select (self.lastItem)
          let attributes : [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font : NSFont.boldSystemFont (ofSize: NSFont.smallSystemFontSize)
          ]
          let attributedString = NSAttributedString (string: font.mFontName, attributes: attributes)
          self.lastItem?.attributedTitle = attributedString
        }
      }
    }
  }

  //····················································································································

  @objc private func changeFontAction (_ inSender : NSMenuItem) {
    if let selectedComponents = self.mSelectedObjects?.propval, let font = inSender.representedObject as? FontInProject {
      for component in selectedComponents {
        component.mNameFont = font
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//
//  ProjectDocument-add-drag-component.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 01/10/2019.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension ProjectDocument {

  //····················································································································

  internal func changePackageOfSelectedComponents () {
    var possiblePackages = StringArray ()
    var componentNames = [String] ()
    var currentSelectedPackageSet = Set <String> ()
    let selectedComponents = self.componentController.selectedArray_property.propval
    if selectedComponents.count > 0 {
      var intersectionOfPackageSet = Set (selectedComponents [0].availablePackages!)
      for component in selectedComponents {
        componentNames.append (component.componentName!)
        currentSelectedPackageSet.insert (component.mSelectedPackage!.mPackageName)
        if let availablePackages = component.availablePackages {
          intersectionOfPackageSet.formIntersection (availablePackages)
        }
      }
      possiblePackages = Array (intersectionOfPackageSet)
    }
    componentNames.sort ()
  //---
    if possiblePackages.count > 0, let window = self.windowForSheet, let panel = self.mChangePackagePanel {
      self.mChangePackagePopUpButton?.removeAllItems ()
      self.mChangePackageComponentListTextField?.stringValue = componentNames.joined (separator: ", ")
      var itemToSelect : NSMenuItem? = nil
      let stringAttributes : [NSAttributedString.Key : Any] = [
        NSAttributedString.Key.font : NSFont.boldSystemFont (ofSize: 0.0)
      ]
      for packageName in possiblePackages.sorted () {
        self.mChangePackagePopUpButton?.addItem (withTitle: packageName)
        if let item = self.mChangePackagePopUpButton?.lastItem, currentSelectedPackageSet.contains (packageName) {
          item.attributedTitle = NSAttributedString (string: packageName, attributes: stringAttributes)
          itemToSelect = item
        }
      }
      self.mChangePackagePopUpButton?.select (itemToSelect)
      window.beginSheet (panel) { (_ inResponse : NSApplication.ModalResponse) in
        if inResponse == .stop, let newPackageName = self.mChangePackagePopUpButton?.titleOfSelectedItem {
          for component in selectedComponents {
            var newPossiblePackage : DevicePackageInProject? = nil
            for candidatePackage in component.mDevice?.mPackages ?? [] {
              if candidatePackage.mPackageName == newPackageName {
                newPossiblePackage = candidatePackage
              }
            }
            if let newPackage = newPossiblePackage {
              component.set (package: newPackage)
            }
          }
        }
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension ComponentInProject {

  //····················································································································

  internal func set (package inPackage : DevicePackageInProject) {
    if self.isPlacedInBoard! {
    //--- Check the corresponding pad does exist in new package
      for currentConnector in self.mConnectors {
        var found = false
        for (padName, masterPadDescriptor) in inPackage.packagePadDictionary! {
          if (currentConnector.mComponentPadName == padName) && (currentConnector.mPadIndex <= masterPadDescriptor.slavePads.count) {
            found = true
          }
        }
        if !found { // If not found, new package does not accept this slave pad: detach pad from component
          let p = currentConnector.location!
          currentConnector.mX = p.x
          currentConnector.mY = p.y
          currentConnector.mComponent = nil
          currentConnector.mComponentPadName = ""
          currentConnector.mPadIndex = 0
          if (currentConnector.mTracksP1.count == 0) && (currentConnector.mTracksP2.count == 0) {
            currentConnector.mRoot = nil // Remove from board
          }
        }
      }
    //--- Check a slave pad does exist for the new package
//      let padNetDictionary = self.padNetDictionary!
      for (padName, masterPadDescriptor) in inPackage.packagePadDictionary! {
        if masterPadDescriptor.slavePads.count > 0 {
          for slavePadIndex in 1 ... masterPadDescriptor.slavePads.count {
            var found = false
            for currentConnector in self.mConnectors {
              if (currentConnector.mComponentPadName == padName) && (currentConnector.mPadIndex == slavePadIndex) {
                found = true
              }
            }
            if !found { // There is not connector for this slave pad: create one
//              let p = masterPadDescriptor.slavePads [slavePadIndex - 1].center
//              let style = masterPadDescriptor.slavePads [slavePadIndex - 1].style
//              let side : ConnectorSide
//              switch style {
//              case .componentSide :
//                switch self.mSide {
//                case .back : side = .back
//                case .front : side = .front
//                }
//              case .oppositeSide :
//                switch self.mSide {
//                case .back : side = .front
//                case .front : side = .back
//                }
//              case .traversing :
//                side = .both
//              }
//              if let possibleConnectors = self.mRoot?.connectors (at: p, connectorSide: side),
//                 possibleConnectors.count == 1,
//                 possibleConnectors [0].mComponent == nil,
//                 let connectorNetName = possibleConnectors [0].netNameFromTracks,
//                 let padNetName = padNetDictionary [padName],
//                 connectorNetName == padNetName {
//                possibleConnectors [0].mComponent = self
//                possibleConnectors [0].mComponentPadName = padName
//                possibleConnectors [0].mPadIndex = slavePadIndex
//              }else{ // Create a new connector
                let newConnector = BoardConnector (self.ebUndoManager)
                newConnector.mComponent = self
                newConnector.mComponentPadName = padName
                newConnector.mPadIndex = slavePadIndex
                newConnector.mRoot = self.mRoot
//              }
            }
          }
        }
      }
    }
  //--- Assign new package
    self.mSelectedPackage = inPackage
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

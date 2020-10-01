//
//  extension-ProjectDocument-add-net-class.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 26/04/2019.
//
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension ProjectDocument {

  //····················································································································

  internal func performAddNetClass () {
    if let window = self.windowForSheet, let panel = self.mAddNetClassPanel {
      self.mAddNetClassTextField?.target = self
      self.mAddNetClassTextField?.action = #selector (ProjectDocument.newClassNameTextFieldDidChange (_:))
      self.mAddNetClassTextField?.isContinuous = true
      self.mAddNetClassTextField?.setSendContinously (true)
      self.newClassNameTextFieldDidChange (nil)
    //---  Allow Back track
      let allowBackTrack_property = EBStoredProperty_Bool (defaultValue: true, undoManager: nil)
      self.mAllowTracksOnBackSideSwitch?.bind_value (allowBackTrack_property, file: #file, line: #line)
    //---  Allow front track
      let allowFrontTrack_property = EBStoredProperty_Bool (defaultValue: true, undoManager: nil)
      self.mAllowTracksOnFrontSideSwitch?.bind_value (allowFrontTrack_property, file: #file, line: #line)
    //---  Width
      let width_property = EBStoredProperty_Int (defaultValue: 45_720, undoManager: nil) // 20 mils
      let widthUnit_property = EBStoredProperty_Int (defaultValue: 2_286, undoManager: nil) // mils
      self.mNetClassWidthDimensionTextField?.bind_dimensionAndUnit (
        width_property,
        widthUnit_property,
        file: #file,
        line: #line
      )
      self.mNetClassWidthUnitPopUpButton?.bind_selectedTag (widthUnit_property, file: #file, line: #line)
    //--- Hole Diameter
      let viaHoleDiameter_property = EBStoredProperty_Int (defaultValue: 45_720, undoManager: nil) // 20 mils
      let viaHoleDiameterUnit_property = EBStoredProperty_Int (defaultValue: 2_286, undoManager: nil) // mils
      self.mNetClassHoleDiameterDimensionTextField?.bind_dimensionAndUnit (
        viaHoleDiameter_property,
        viaHoleDiameterUnit_property,
        file: #file,
        line: #line
      )
      self.mNetClassHoleDiameterUnitPopUpButton?.bind_selectedTag (viaHoleDiameterUnit_property, file: #file, line: #line)
    //--- Pad Diameter
      let viaPadDiameter_property = EBStoredProperty_Int (defaultValue: 91_440, undoManager: nil) // 40 mils
      let viaPadDiameterUnit_property = EBStoredProperty_Int (defaultValue: 2_286, undoManager: nil) // mils
      self.mNetClassPadDiameterDimensionTextField?.bind_dimensionAndUnit (
        viaPadDiameter_property,
        viaPadDiameterUnit_property,
        file: #file,
        line: #line
      )
      self.mNetClassPadDiameterUnitPopUpButton?.bind_selectedTag (viaPadDiameterUnit_property, file: #file, line: #line)
    //--- Color
      let netColor_property = EBStoredProperty_NSColor (defaultValue: .brown, undoManager: nil)
      self.mNetClassColorWell?.bind_color (netColor_property, file: #file, line: #line, sendContinously: true)
    //---  Dialog
      window.beginSheet (panel) { (_ inResponse : NSApplication.ModalResponse) in
        if inResponse == .stop, let newNetClassName = self.mAddNetClassTextField?.stringValue {
          let netClass = NetClassInProject (self.ebUndoManager)
          netClass.mNetClassName = newNetClassName
          netClass.mNetClassColor = netColor_property.propval
          netClass.mTrackWidth = width_property.propval
          netClass.mTrackWidthUnit = widthUnit_property.propval
          netClass.mViaHoleDiameter = viaHoleDiameter_property.propval
          netClass.mViaHoleDiameterUnit = viaHoleDiameterUnit_property.propval
          netClass.mViaPadDiameter = viaPadDiameter_property.propval
          netClass.mViaPadDiameterUnit = viaPadDiameterUnit_property.propval
          netClass.mAllowTracksOnFrontSide = allowFrontTrack_property.propval
          netClass.mAllowTracksOnBackSide = allowBackTrack_property.propval
          self.rootObject.mNetClasses.append (netClass)
          self.netClassController.setSelection ([netClass])
        }
        self.mNetClassWidthDimensionTextField?.unbind_dimensionAndUnit ()
        self.mNetClassWidthUnitPopUpButton?.unbind_selectedTag ()
        self.mNetClassHoleDiameterDimensionTextField?.unbind_dimensionAndUnit ()
        self.mNetClassHoleDiameterUnitPopUpButton?.unbind_selectedTag ()
        self.mNetClassPadDiameterDimensionTextField?.unbind_dimensionAndUnit ()
        self.mNetClassPadDiameterUnitPopUpButton?.unbind_selectedTag ()
        self.mNetClassColorWell?.unbind_color ()
        self.mAllowTracksOnFrontSideSwitch?.unbind_value ()
        self.mAllowTracksOnBackSideSwitch?.unbind_value ()
      }
    }
  }

  //····················································································································

  @objc fileprivate func newClassNameTextFieldDidChange (_ inSender : NSObject?) {
    if let newNetClassName = self.mAddNetClassTextField?.stringValue {
      self.mAddNetClassValidationButton?.isEnabled = newNetClassName != ""
      if newNetClassName == "" {
        self.mAddNetClassErrorMessageTextField?.stringValue = "New Net Class name is empty."
      }else{
        var newNameIsUnique = true
        for netClass in self.rootObject.mNetClasses {
          if netClass.mNetClassName == newNetClassName {
            newNameIsUnique = false
          }
        }
        self.mAddNetClassValidationButton?.isEnabled = newNameIsUnique
        self.mAddNetClassErrorMessageTextField?.stringValue = newNameIsUnique
          ? ""
          : "New Net Class name already exists."
      }
    }
  }

  //····················································································································

  internal func performEditNetClass () {
    let selectedNetClasses = self.netClassController.selectedArray
    if let window = self.windowForSheet, let panel = self.mAddNetClassPanel, selectedNetClasses.count == 1 {
      let editedNetClass = selectedNetClasses [0]
      self.mAddNetClassTextField?.stringValue = editedNetClass.mNetClassName
      self.mAddNetClassTextField?.target = self
      self.mAddNetClassTextField?.action = #selector (ProjectDocument.classNameTextFieldEditionDidChange (_:))
      self.mAddNetClassTextField?.isContinuous = true
      self.mAddNetClassTextField?.setSendContinously (true)
      self.classNameTextFieldEditionDidChange (nil)
    //---  Allow Back track
      let allowBackTrack_property = EBStoredProperty_Bool (defaultValue: editedNetClass.mAllowTracksOnBackSide, undoManager: nil)
      self.mAllowTracksOnBackSideSwitch?.bind_value (allowBackTrack_property, file: #file, line: #line)
    //---  Allow front track
      let allowFrontTrack_property = EBStoredProperty_Bool (defaultValue: editedNetClass.mAllowTracksOnFrontSide, undoManager: nil)
      self.mAllowTracksOnFrontSideSwitch?.bind_value (allowFrontTrack_property, file: #file, line: #line)
    //---  Width
      let width_property = EBStoredProperty_Int (defaultValue: editedNetClass.mTrackWidth, undoManager: nil)
      let widthUnit_property = EBStoredProperty_Int (defaultValue: editedNetClass.mTrackWidthUnit, undoManager: nil)
      self.mNetClassWidthDimensionTextField?.bind_dimensionAndUnit (
        width_property,
        widthUnit_property,
        file: #file,
        line: #line
      )
      self.mNetClassWidthUnitPopUpButton?.bind_selectedTag (widthUnit_property, file: #file, line: #line)
    //--- Hole Diameter
      let viaHoleDiameter_property = EBStoredProperty_Int (defaultValue: editedNetClass.mViaHoleDiameter, undoManager: nil)
      let viaHoleDiameterUnit_property = EBStoredProperty_Int (defaultValue: editedNetClass.mViaHoleDiameterUnit, undoManager: nil)
      self.mNetClassHoleDiameterDimensionTextField?.bind_dimensionAndUnit (
        viaHoleDiameter_property,
        viaHoleDiameterUnit_property,
        file: #file,
        line: #line
      )
      self.mNetClassHoleDiameterUnitPopUpButton?.bind_selectedTag (viaHoleDiameterUnit_property, file: #file, line: #line)
    //--- Pad Diameter
      let viaPadDiameter_property = EBStoredProperty_Int (defaultValue: editedNetClass.mViaPadDiameter, undoManager: nil)
      let viaPadDiameterUnit_property = EBStoredProperty_Int (defaultValue: editedNetClass.mViaPadDiameterUnit, undoManager: nil)
      self.mNetClassPadDiameterDimensionTextField?.bind_dimensionAndUnit (
        viaPadDiameter_property,
        viaPadDiameterUnit_property,
        file: #file,
        line: #line
      )
      self.mNetClassPadDiameterUnitPopUpButton?.bind_selectedTag (viaPadDiameterUnit_property, file: #file, line: #line)
    //--- Color
      let netColor_property = EBStoredProperty_NSColor (defaultValue: editedNetClass.mNetClassColor, undoManager: nil)
      self.mNetClassColorWell?.bind_color (netColor_property, file: #file, line: #line, sendContinously: true)
    //---  Dialog
      window.beginSheet (panel) { (_ inResponse : NSApplication.ModalResponse) in
        if inResponse == .stop, let newNetClassName = self.mAddNetClassTextField?.stringValue {
          editedNetClass.mNetClassName = newNetClassName
          editedNetClass.mNetClassColor = netColor_property.propval
          editedNetClass.mTrackWidth = width_property.propval
          editedNetClass.mTrackWidthUnit = widthUnit_property.propval
          editedNetClass.mViaHoleDiameter = viaHoleDiameter_property.propval
          editedNetClass.mViaHoleDiameterUnit = viaHoleDiameterUnit_property.propval
          editedNetClass.mViaPadDiameter = viaPadDiameter_property.propval
          editedNetClass.mViaPadDiameterUnit = viaPadDiameterUnit_property.propval
          editedNetClass.mAllowTracksOnFrontSide = allowFrontTrack_property.propval
          editedNetClass.mAllowTracksOnBackSide = allowBackTrack_property.propval
        }
        self.mNetClassWidthDimensionTextField?.unbind_dimensionAndUnit ()
        self.mNetClassWidthUnitPopUpButton?.unbind_selectedTag ()
        self.mNetClassHoleDiameterDimensionTextField?.unbind_dimensionAndUnit ()
        self.mNetClassHoleDiameterUnitPopUpButton?.unbind_selectedTag ()
        self.mNetClassPadDiameterDimensionTextField?.unbind_dimensionAndUnit ()
        self.mNetClassPadDiameterUnitPopUpButton?.unbind_selectedTag ()
        self.mNetClassColorWell?.unbind_color ()
        self.mAllowTracksOnFrontSideSwitch?.unbind_value ()
        self.mAllowTracksOnBackSideSwitch?.unbind_value ()
      }
    }
  }

  //····················································································································

  @objc fileprivate func classNameTextFieldEditionDidChange (_ inSender : NSObject?) {
    let selectedNetClasses = self.netClassController.selectedArray
    if let newNetClassName = self.mAddNetClassTextField?.stringValue, selectedNetClasses.count == 1 {
      let editedNetClass = selectedNetClasses [0]
      if newNetClassName == "" {
       self.mAddNetClassValidationButton?.isEnabled = false
       self.mAddNetClassErrorMessageTextField?.stringValue = "Net Class name is empty."
      }else{
        var newNameIsUnique = true
        for netClass in self.rootObject.mNetClasses {
          if (netClass !== editedNetClass) && (netClass.mNetClassName == newNetClassName) {
            newNameIsUnique = false
          }
        }
        self.mAddNetClassValidationButton?.isEnabled = newNameIsUnique
        self.mAddNetClassErrorMessageTextField?.stringValue = newNameIsUnique
          ? ""
          : "Net Class name already exists."
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

//
//  CanariDimensionObserverTextField.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 02/07/2018.
//
//
import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   CanariDimensionObserverTextField
//----------------------------------------------------------------------------------------------------------------------

class CanariDimensionObserverTextField : NSTextField, EBUserClassNameProtocol, NSTextFieldDelegate {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    self.delegate = self
    noteObjectAllocation (self)
    self.configureFormatter ()
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    self.delegate = self
    noteObjectAllocation (self)
    self.configureFormatter ()
  }

  //····················································································································

  private func configureFormatter () {
    let numberFormatter = NumberFormatter ()
    numberFormatter.formatterBehavior = .behavior10_4
    numberFormatter.numberStyle = .decimal
    numberFormatter.localizesFormat = true
    numberFormatter.minimumFractionDigits = 2
    numberFormatter.maximumFractionDigits = 2
    numberFormatter.isLenient = true
    self.formatter = numberFormatter
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  value binding
  //····················································································································

  fileprivate func updateOutlet (dimension : EBReadOnlyProperty_Int, unit : EBReadOnlyProperty_Int) {
    switch combine (dimension: dimension.selection, unit: unit.selection) {
    case .empty :
      self.stringValue = "—"
      self.enableFromValueBinding (false)
    case .multiple :
      self.stringValue = "—"
      self.enableFromValueBinding (false)
    case .single (let propertyValue) :
      if propertyValue == 0.0 {
        self.stringValue = "—"
      }else{
        self.doubleValue = propertyValue
      }
      self.enableFromValueBinding (true)
    }
  }

  //····················································································································

  private var mController : EBSimpleController?

  //····················································································································

  func bind_dimensionAndUnit (_ dimension : EBReadOnlyProperty_Int,
                              _ unit : EBReadOnlyProperty_Int,
                              file : String,
                              line : Int) {
    self.mController = EBSimpleController (observedObjects: [dimension, unit], callBack: { self.updateOutlet (dimension: dimension, unit: unit) })
  }

  //····················································································································

  func unbind_dimensionAndUnit () {
    self.mController?.unregister ()
    self.mController = nil
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   Controller Controller_CanariDimensionObserverTextField_dimensionAndUnit
//----------------------------------------------------------------------------------------------------------------------

//final class Controller_CanariDimensionObserverTextField_dimensionAndUnit : EBSimpleController {
//
//  //····················································································································
//
//  init (dimension:EBReadOnlyProperty_Int,
//        unit:EBReadOnlyProperty_Int,
//        outlet : CanariDimensionObserverTextField,
//        file : String, line : Int) {
//    super.init (observedObjects: [dimension, unit], callBack: { outlet.updateOutlet(dimension: dimension, unit: unit) })
//  }
//
//  //····················································································································
//
//}

//----------------------------------------------------------------------------------------------------------------------

private func combine (dimension : EBSelection <Int>, unit : EBSelection <Int>) -> EBSelection <Double> {
  switch dimension {
  case .empty :
    return .empty
  case .multiple :
    switch dimension {
    case .empty :
      return .empty
    case .multiple, .single :
      return .multiple
    }
  case .single (let dimensionValue) :
    switch unit {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let unitValue):
      return .single (Double (dimensionValue) / Double (unitValue))
    }
  }
}

//----------------------------------------------------------------------------------------------------------------------

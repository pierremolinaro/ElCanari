//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol HiddenEBProtocol : AnyObject {
  var isHidden : Bool { get set }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension NSView : HiddenEBProtocol {
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   MultipleBindingController_hidden
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class MultipleBindingController_hidden : EBOutletEvent {

  private let mOutlet : HiddenEBProtocol?

  //····················································································································

  init (computeFunction inExpression : EBMultipleBindingBooleanExpression,
        outlet inOutlet : HiddenEBProtocol?) {
    self.mOutlet = inOutlet
    super.init ()
    self.mEventCallBack = { [weak self] in self?.updateOutlet (inExpression.compute ()) }
    var modelArray = [EBObservableObjectProtocol] ()
    inExpression.addModelsTo (&modelArray)
    for observedModel in modelArray {
      observedModel.addEBObserver (self)
    }
  }

  //····················································································································

   private func updateOutlet (_ inSelection : EBSelection <Bool>) {
    switch inSelection {
    case .single (let b) :
      self.mOutlet?.isHidden = b
    default :
      self.mOutlet?.isHidden = false
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   MultipleBindingController_enabled
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol EnabledMultipleBindingProtocol {
  func enableFromEnableBinding (_ inEnable : Bool)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class MultipleBindingController_enabled : EBOutletEvent {

  private let mOutlet : EnabledMultipleBindingProtocol?

  //····················································································································

  init (computeFunction inExpression : EBMultipleBindingBooleanExpression,
        outlet inOutlet : EnabledMultipleBindingProtocol?) {
    self.mOutlet = inOutlet
    super.init ()
    var modelArray = [EBObservableObjectProtocol] ()
    inExpression.addModelsTo (&modelArray)
    for observedModel in modelArray {
      observedModel.addEBObserver (self)
    }
    self.mEventCallBack = { [weak self] in self?.updateOutlet (inExpression.compute ()) }
  }

  //····················································································································

  private func updateOutlet (_ inModel : EBSelection <Bool>) {
    switch inModel {
    case .single (let b) :
      self.mOutlet?.enableFromEnableBinding (b)
    default :
      self.mOutlet?.enableFromEnableBinding (false)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum MultipleBindingBooleanOperation {
  case or
  case and
  case xor
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum MultipleBindingIntegerOperation {
  case eq
  case ne
  case lt
  case le
  case gt
  case ge
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

indirect enum EBMultipleBindingBooleanExpression {
  case empty
  case boolcmp (EBMultipleBindingBooleanExpression, MultipleBindingBooleanOperation, EBMultipleBindingBooleanExpression)
  case intcmp  (EBMultipleBindingIntegerExpression, MultipleBindingIntegerOperation, EBMultipleBindingIntegerExpression)
  case not (EBMultipleBindingBooleanExpression)
  case id  (EBGenericReadOnlyProperty <Bool>)

  func addModelsTo (_ ioModelArray : inout [EBObservableObjectProtocol]) {
    switch self {
    case .empty :
      ()
    case .boolcmp (let left, _, let right) :
      left.addModelsTo (&ioModelArray)
      right.addModelsTo (&ioModelArray)
    case .intcmp (let left, _, let right) :
      left.addModelsTo (&ioModelArray)
      right.addModelsTo (&ioModelArray)
    case .not (let bindingExp) :
      bindingExp.addModelsTo (&ioModelArray)
    case .id  (let model) :
      ioModelArray.append (model)
    }
  }

  func compute () -> EBSelection <Bool> {
    switch self {
    case .empty :
      return .empty
    case .boolcmp (let left, let op, let right) :
      let leftSelection = left.compute ()
      let rightSelection = right.compute ()
      switch (leftSelection, rightSelection) {
      case (.empty, _), (_, .empty) :
        return .empty
      case (_, .multiple), (.multiple, _) :
        return .multiple
      case (.single (let v), .single (let w)) :
        switch op {
        case .and :
          return .single (v && w)
        case .or :
          return .single (v || w)
        case .xor :
          return .single (v != w)
        }
      }
    case .intcmp (let left, let op, let right) :
      let leftSelection = left.compute ()
      let rightSelection = right.compute ()
      switch (leftSelection, rightSelection) {
      case (.empty, _), (_, .empty) :
        return .empty
      case (_, .multiple), (.multiple, _) :
        return .multiple
      case (.single (let v), .single (let w)) :
        switch op {
        case .eq :
          return .single (v == w)
        case .ne :
          return .single (v != w)
        case .lt :
          return .single (v < w)
        case .le :
          return .single (v <= w)
        case .gt :
          return .single (v > w)
        case .ge :
          return .single (v >= w)
        }
      }
    case .not (let bindingExp) :
      let selection = bindingExp.compute ()
      switch selection {
      case .empty :
        return .empty
      case .single (let v) :
        return .single (!v)
      case .multiple :
        return .multiple
      }
    case .id  (let model) :
      return model.selection
    }
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum EBMultipleBindingIntegerExpression {
  case literalInt (Int)
  case id (EBGenericReadOnlyProperty <Int>)

  func addModelsTo (_ ioModelArray : inout [EBObservableObjectProtocol]) {
    switch self {
    case .literalInt :
      ()
    case .id (let model) :
      ioModelArray.append (model)
    }
  }

  func compute () -> EBSelection <Int> {
    switch self {
    case .literalInt (let v) :
      return .single (v)
    case .id (let model) :
      return model.selection
    }
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

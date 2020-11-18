//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol EBObservableObjectProtocol {
  func addEBObserver (_ inObserver : EBEvent)
  func removeEBObserver (_ inObserver : EBEvent)
  func computePropertyAsynchronously (_ inOperationQueue : OperationQueue)
}

//----------------------------------------------------------------------------------------------------------------------

protocol EBReadObservableEnumProtocol : EBObservableObjectProtocol {
  func rawValue () -> Int?
}

//----------------------------------------------------------------------------------------------------------------------

protocol EBReadWriteObservableEnumProtocol : EBReadObservableEnumProtocol {
  func setFrom (rawValue : Int)
}

//----------------------------------------------------------------------------------------------------------------------
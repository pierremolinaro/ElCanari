//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBValidationResult
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum EBValidationResult <T> {
  case ok (T /* validated value */)
  case rejectWithBeep
  case rejectWithAlert (String /* informativeText */)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

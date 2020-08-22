//
//  ArrayDictionary.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 29/09/2019.
//
//----------------------------------------------------------------------------------------------------------------------

import Foundation

//----------------------------------------------------------------------------------------------------------------------

typealias ArrayDictionary <Key, T> = [Key : Array <T> ] where Key : Hashable

//----------------------------------------------------------------------------------------------------------------------

extension ArrayDictionary {

  //····················································································································

  mutating func append <T> (value inValue : T, forKey inKey : Key) where [T] == Value {
    if let array = self [inKey] {
      self [inKey] = array + [inValue]
    }else{
      self [inKey] = [inValue]
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    BezierPathArray
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct BezierPathArray : Hashable, Comparable, ValuePropertyProtocol {

  //····················································································································

  private var mPathes = [EBBezierPath] ()

  //····················································································································

  var array : [EBBezierPath] { return self.mPathes }

  //····················································································································

  mutating func append (_ inBP : EBBezierPath) {
    if !inBP.isEmpty {
      self.mPathes.append (inBP)
    }
  }

  //····················································································································

  mutating func append (_ inBezierPathArray : [EBBezierPath]) {
    for bp in inBezierPathArray {
      if !bp.isEmpty {
        self.mPathes.append (bp)
      }
    }
  }

   //····················································································································

  mutating func append (_ inBezierPathArray : BezierPathArray) {
    self.mPathes += inBezierPathArray.mPathes
  }

 //····················································································································

  var bounds : NSRect {
    var r = NSRect.null
    for path in self.mPathes {
      r = r.union (path.bounds)
    }
    return r
  }

  //····················································································································

  public static func == (lhs: BezierPathArray, rhs: BezierPathArray) -> Bool {
    var equal = lhs.mPathes.count == rhs.mPathes.count
    if equal {
      var idx = 0
      while idx < lhs.mPathes.count {
        if lhs.mPathes [idx] != rhs.mPathes [idx] {
          equal = false
          idx = lhs.mPathes.count // For exiting loop
        }
        idx += 1
      }
    }
    return equal
  }

  //····················································································································

  public static func < (lhs: BezierPathArray, rhs: BezierPathArray) -> Bool {
    var inferior = lhs.mPathes.count < rhs.mPathes.count
    if lhs.mPathes.count == rhs.mPathes.count {
      let leftData = NSMutableData ()
      let leftArchiver = NSKeyedArchiver (forWritingWith: leftData)
      leftArchiver.encode (self, forKey: NSKeyedArchiveRootObjectKey)
      leftArchiver.finishEncoding ()
      // let leftData  = NSKeyedArchiver.archivedData (withRootObject: lhs.mPathes)
      let rightData = NSMutableData ()
      let rightArchiver = NSKeyedArchiver (forWritingWith: rightData)
      rightArchiver.encode (self, forKey: NSKeyedArchiveRootObjectKey)
      rightArchiver.finishEncoding ()
      // let rightData = NSKeyedArchiver.archivedData (withRootObject: rhs.mPathes)
      inferior = (leftData as Data) < (rightData as Data)
    }
    return inferior
  }

  //····················································································································

  func ebHashValue () -> UInt32 {
    let data = NSMutableData ()
    let archiver = NSKeyedArchiver (forWritingWith: data)
    archiver.encode (self, forKey: NSKeyedArchiveRootObjectKey)
    archiver.finishEncoding ()
    return (data as Data).ebHashValue ()
  }

  //····················································································································

  func convertToNSObject () -> NSObject {
    let data = NSMutableData ()
    let archiver = NSKeyedArchiver (forWritingWith: data)
    var array = [NSBezierPath] ()
    for p in self.mPathes {
      array.append (p.nsBezierPath)
    }
    archiver.encode (array, forKey: NSKeyedArchiveRootObjectKey)
    archiver.finishEncoding ()
    return data
  }

  //····················································································································

  static func convertFromNSObject (object : NSObject) -> BezierPathArray {
    let array = NSKeyedUnarchiver.unarchiveObject (with: object as! Data) as! [NSBezierPath]
    var result = BezierPathArray ()
    for bp in array {
      result.append (EBBezierPath (bp))
    }
    return result
  }

  //····················································································································

  func stringPropertyValue () -> String {
    var s = ""
    var first = true
    for bp in array {
      if first {
        first = false
      }else{
        s += "|"
      }
      s += bp.nsBezierPath.archiveToString ()
    }
    s += "\n"
    return s
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

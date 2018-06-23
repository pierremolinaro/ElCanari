//
//  CanariLibraryEntryDelegate.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 09/11/2015.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  http://blog.beecomedigital.com/2015/06/27/developing-a-filesystemwatcher-for-os-x-by-using-fsevents-with-swift-2/
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

private let DEBUG = false

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(CanariLibraryEntryDelegate) final class CanariLibraryEntryDelegate : EBEvent {
  
  private weak var mObject : CanariLibraryEntry?
  private var mStream : FSEventStreamRef?

  //····················································································································

  init (object : CanariLibraryEntry) {
    mObject = object
    super.init ()
    object.mPath.addEBObserver (self)
  }

  //····················································································································

  final override func postEvent () {
    let possiblePath = mObject?.mPath.propval
    if DEBUG {
      NSLog ("\(#function), path '\(String(describing: possiblePath))'")
    }
  //--- Remove previous monitoring (if any)
    removeFileSystemMonitoring ()
  //--- Install new monitoring
    if let path = possiblePath, "" != path {
    //--- Use an FSEvent for tracking Canari System Library changes
      let pathsToWatch : [String] = [path]
    //--- Latency
      let latency : CFTimeInterval = 1.0 /* Latency in seconds */
    //--- Set self as context
      var context = FSEventStreamContext (version: 0, info: nil, retain: nil, release: nil, copyDescription: nil)
      context.info = UnsafeMutableRawPointer (mutating: Unmanaged.passUnretained (self).toOpaque ())
    //---
      let callback: FSEventStreamCallback = {
        (streamRef, clientCallBackInfo, numEvents, eventPaths, eventFlags, eventIds) -> Void in
        callbackForFSEvent (streamRef,
                            clientCallBackInfo: clientCallBackInfo,
                            numEvents: numEvents,
                            eventPaths: eventPaths,
                            eventFlags: eventFlags,
                            eventIds: eventIds)
      }
    //--- Create the stream, passing in a callback
      let possibleStream = FSEventStreamCreate (
        kCFAllocatorDefault,
        callback, //callbackForLibraryEntryFSEvent,
        &context, // self as context
        pathsToWatch as CFArray, // pathsToWatch,
        FSEventStreamEventId (kFSEventStreamEventIdSinceNow),
        latency,
        FSEventStreamCreateFlags (kFSEventStreamCreateFlagNoDefer | kFSEventStreamCreateFlagWatchRoot)
      )
      if let stream = possibleStream {
        FSEventStreamScheduleWithRunLoop (stream, CFRunLoopGetCurrent(), "" as CFString) // CFRunLoopMode.defaultMode)
        FSEventStreamStart (stream)
      }
      mStream = possibleStream
    }
  }
  
  //····················································································································

  fileprivate final func monitoredFileDidChange () {
    if DEBUG {
      NSLog ("\(#function)")
    }
    mObject?.mStatusImage.postEvent ()
  }
  
  //····················································································································

  final func removeFileSystemMonitoring () {
    if DEBUG {
      NSLog ("\(#function)")
    }
    if let stream = mStream {
      FSEventStreamStop (stream)
      FSEventStreamInvalidate (stream)
      FSEventStreamRelease (stream)
      mStream = nil
    }
  }
  
  //····················································································································

  deinit {
    mObject?.mPath.removeEBObserver (self)
    removeFileSystemMonitoring ()
  }
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
// FSEventStreamCallback

func callbackForLibraryEntryFSEvent (_ streamRef : ConstFSEventStreamRef,
                                     clientCallBackInfo : UnsafeMutableRawPointer?,
                                     numEvents : Int,
                                     eventPaths : UnsafeMutableRawPointer,
                                     eventFlags : UnsafePointer<FSEventStreamEventFlags>?,
                                     eventIds : UnsafePointer<FSEventStreamEventId>?) {
  let delegate : CanariLibraryEntryDelegate = unsafeBitCast (clientCallBackInfo, to: CanariLibraryEntryDelegate.self)
  delegate.monitoredFileDidChange ()
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

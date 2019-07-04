//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageRoot_issues (
       _ self_packageObjects_issues : [PackageObject_issues],
       _ self_packageZones_rect : [PackageZone_rect],
       _ self_packageZones_zoneName : [PackageZone_zoneName],
       _ self_packageZones_xName : [PackageZone_xName],
       _ self_packageZones_yName : [PackageZone_yName],
       _ prefs_padZoneFont : NSFont
) -> CanariIssueArray {
//--- START OF USER ZONE 2
     var issues = CanariIssueArray ()
   //--- collect intersecting zones
     var idx = 0
     while idx < self_packageZones_rect.count {
       var idy = idx + 1
       while idy < self_packageZones_rect.count {
         let intersection = self_packageZones_rect [idx].rect!.intersection (self_packageZones_rect [idy].rect!)
         if !intersection.isEmpty {
           issues.appendZoneIntersectionIssueIn (rect: intersection)
         }
         idy += 1
       }
       idx += 1
     }
   //--- Collect name collisions
     var nameDictionary = [String : Int] ()
     for zone in self_packageZones_zoneName {
       if zone.zoneName != "" {
         let d = nameDictionary [zone.zoneName] ?? 0
         nameDictionary [zone.zoneName] = d + 1
       }
     }
     idx = 0
     while idx < self_packageZones_zoneName.count {
       let zoneName = self_packageZones_zoneName [idx].zoneName
       if let c = nameDictionary [zoneName], c > 1 {
         let p = CanariPoint (x: self_packageZones_xName [idx].xName, y: self_packageZones_yName [idx].yName).cocoaPoint
           let textAttributes : [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font : prefs_padZoneFont
         ]
         var shape = EBShape ()
         shape.add (text: zoneName, p, textAttributes, .center, .center)
         issues.appendDuplicatedZoneNameIssueIn (rect: shape.boundingBox)
       }
       idx += 1
     }
   //--- Collect issues
     for optionalIssueArray in self_packageObjects_issues {
        if let issueArray = optionalIssueArray.issues {
          issues += issueArray
        }
      }
    //-------------------- Sort issues
      issues.sort (by: CanariIssue.displaySortingCompare)
    //---
      return issues
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

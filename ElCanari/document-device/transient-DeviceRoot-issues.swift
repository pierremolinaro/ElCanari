//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_DeviceRoot_issues (
       _ self_mTitle : String,    
       _ self_mPrefix : String,   
       _ self_inconsistentPackagePadNameSetsMessage : String,
       _ self_inconsistentSymbolNameSetMessage : String,
       _ self_unconnectedPins : UnconnectedSymbolPinsInDevice,
       _ self_unconnectedPads : StringArray,
       _ self_mPackages_mVersion : [PackageInDevice_mVersion],
       _ self_mPackages_mName : [PackageInDevice_mName],
       _ self_mSymbolTypes_mVersion : [SymbolTypeInDevice_mVersion],
       _ self_mSymbolTypes_mTypeName : [SymbolTypeInDevice_mTypeName]
) -> CanariIssueArray {
//--- START OF USER ZONE 2
       var issues = [CanariIssue] ()
       if self_mTitle == "" {
         issues.append (CanariIssue (kind: .warning, message: "Title is Empty", path: NSBezierPath (), representativeValue: 0))
       }
       if self_mPrefix == "" {
         issues.append (CanariIssue (kind: .warning, message: "Prefix is Empty", path: NSBezierPath (), representativeValue: 0))
       }else{
         var ok = true
         for unicodeChar in self_mPrefix.unicodeArray {
           ok = (unicodeChar >= "a") && (unicodeChar <= "z")
           if !ok {
             ok = (unicodeChar >= "A") && (unicodeChar <= "Z")
           }
           if !ok {
             break
           }
         }
         if !ok {
           issues.append (CanariIssue (kind: .error, message: "Prefix should contains only lowercase or uppercase ASCII letters", path: NSBezierPath ()))
         }
       }
       if self_inconsistentPackagePadNameSetsMessage != "" {
         issues.append (CanariIssue (kind: .error, message: "There are several packages, their pad names are inconsistent", path: NSBezierPath ()))
       }
       if self_inconsistentSymbolNameSetMessage != "" {
         issues.append (CanariIssue (kind: .error, message: "There are several symbols with the same name", path: NSBezierPath ()))
       }
       if self_unconnectedPins.count == 1 {
         issues.append (CanariIssue (kind: .warning, message: "1 unconnected pin", path: NSBezierPath ()))
       }else if self_unconnectedPins.count > 1 {
         issues.append (CanariIssue (kind: .warning, message: "\(self_unconnectedPins.count) unconnected pins", path: NSBezierPath ()))
       }
       if self_unconnectedPads.count == 1 {
         issues.append (CanariIssue (kind: .warning, message: "1 unassigned pad", path: NSBezierPath ()))
       }else if self_unconnectedPads.count > 1 {
         issues.append (CanariIssue (kind: .warning, message: "\(self_unconnectedPads.count) unassigned pads", path: NSBezierPath ()))
       }
    //--- Check package version
       var idx = 0
       while idx < self_mPackages_mVersion.count {
         if self_mPackages_mVersion [idx].mVersion == 0 {
           let typeName = self_mPackages_mName [idx].mName
           issues.append (CanariIssue (kind: .warning, message: "Package \(typeName) requires update.", path: NSBezierPath ()))
         }
         idx += 1
       }
   //--- Check symbol version
       idx = 0
       while idx < self_mSymbolTypes_mVersion.count {
         if self_mSymbolTypes_mVersion [idx].mVersion == 0 {
           let typeName = self_mSymbolTypes_mTypeName [idx].mTypeName
           issues.append (CanariIssue (kind: .warning, message: "Symbol \(typeName) requires update.", path: NSBezierPath ()))
         }
         idx += 1
       }
    //---
       return issues
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

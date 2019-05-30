//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1

fileprivate func computeSubnets (_ inPointArray : NetInfoPointArray) -> (StatusStringArray, Bool) { // ( ..., has warning)
//--- Wire dictionary (for compute subnet accessibility)
  var wireDictionary = [Int : NetInfoPointArray] ()
  for point in inPointArray {
    for wire in point.wires {
      if let v = wireDictionary [wire] {
        wireDictionary [wire] = v + [point]
      }else{
        wireDictionary [wire] = [point]
      }
    }
  }
//---
  var subnetDescriptionStrings = [(Bool, String)] ()
  var unExploredPointSet = Set (inPointArray)
  while let aPoint = unExploredPointSet.first {
    unExploredPointSet.removeFirst ()
    var currentPointSet = Set <NetInfoPoint> ([aPoint])
    var exploreArray = [aPoint]
    var exploreWireSet = Set <Int> ()
    while let p = exploreArray.last {
      exploreArray.remove (at: exploreArray.count - 1)
      for wire in p.wires {
        if !exploreWireSet.contains (wire) {
          exploreWireSet.insert (wire)
          if let pts = wireDictionary [wire] {
            for pp in pts {
              if !currentPointSet.contains(pp) {
                currentPointSet.insert (pp)
                exploreArray.append (pp)
                unExploredPointSet.remove (pp)
              }
            }
          }
        }
      }

    }
  //--- Build subnet description string
    var subnetDescription = ""
    for p in currentPointSet {
      if let pinName = p.pin {
        subnetDescription += " " + pinName
      }
    }
    var labelCount = 0
    for p in currentPointSet {
      labelCount += p.labels.count
      for label in p.labels {
        subnetDescription += " " + label
      }
    }
    subnetDescriptionStrings.append ((labelCount > 0, subnetDescription))
  }
//--- Several subnets ?
  var harWarning = false
  var statusStringArray = [StatusString] ()
  if subnetDescriptionStrings.count == 1 {
    statusStringArray.append (StatusString (status: .ok, string: subnetDescriptionStrings [0].1))
  }else if subnetDescriptionStrings.count > 1 {
    for (severalLabels, descriptionString) in subnetDescriptionStrings {
      if !severalLabels {
        harWarning = true
      }
      statusStringArray.append (StatusString (status: severalLabels ? .ok : .warning, string: descriptionString))
    }
  }
//---
  return (statusStringArray, harWarning)
}

//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_NetClassInProject_netsDescription (
       _ self_mNets_mNetName : [NetInProject_mNetName],
       _ self_mNets_netPointsInfo : [NetInProject_netPointsInfo],
       _ self_mNetClassName : String
) -> NetInfoArray {
//--- START OF USER ZONE 2
        var array = NetInfoArray ()
        var idx = 0
        while idx < self_mNets_mNetName.count {
          let netName = self_mNets_mNetName [idx].mNetName
          let netPointInfo = self_mNets_netPointsInfo [idx].netPointsInfo!
          var pinCount = 0
          var labelCount = 0
          for point in netPointInfo {
           labelCount += point.labels.count
            if point.pin != nil {
              pinCount += 1
            }
          }
          let (subnets, subnetsHaveWarning) = computeSubnets (netPointInfo)
          let netInfo = NetInfo (
            netName: netName,
            netClassName: self_mNetClassName,
            points: netPointInfo,
            subnets: subnets,
            subnetsHaveWarning : subnetsHaveWarning,
            pinCount: pinCount,
            labelCount: labelCount
          )
          array.append (netInfo)
          idx += 1
        }
        return array
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

func collectAndPrepareObjectsForSaveOperation (fromRoot inRootObject : EBManagedObject) -> [EBManagedObject] {
  var reachableObjectArray = [inRootObject]
  var reachableObjectSet = Set ([inRootObject])
  var objectsToExploreArray = [inRootObject]
  while let objectToExplore = objectsToExploreArray.last {
    objectsToExploreArray.removeLast ()
    var accessible = [EBManagedObject] ()
    objectToExplore.accessibleObjects (objects: &accessible)
    for managedObject in accessible {
      if !reachableObjectSet.contains (managedObject) {
        reachableObjectSet.insert (managedObject)
        reachableObjectArray.append (managedObject)
        objectsToExploreArray.append (managedObject)
      }
    }
  }
//--- Set savingIndex for each object
  var idx = 0
  for object in reachableObjectArray {
    object.savingIndex = idx
    idx += 1
  }
  return reachableObjectArray
}

//----------------------------------------------------------------------------------------------------------------------

func collectAndPrepareObjectsForDeletion (fromRoot inRootObject : EBManagedObject) {
  var reachableObjectArray = [inRootObject]
  var reachableObjectSet = Set ([inRootObject])
  var objectsToExploreArray = [inRootObject]
  while let objectToExplore = objectsToExploreArray.last {
    objectsToExploreArray.removeLast ()
    var accessible = [EBManagedObject] ()
    objectToExplore.accessibleObjects (objects: &accessible)
    for managedObject in accessible {
      if !reachableObjectSet.contains (managedObject) {
        reachableObjectSet.insert (managedObject)
        reachableObjectArray.append (managedObject)
        objectsToExploreArray.append (managedObject)
      }
    }
  }
//--- Remove relationships of all objects
  for object in reachableObjectArray {
    object.cleanUpRelationshipsAndRemoveAllObservers ()
  }
}

//----------------------------------------------------------------------------------------------------------------------

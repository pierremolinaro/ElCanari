//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BoardModel_imageForInstances (
       _ prefs_mergerColorBackground : NSColor,
       _ self_modelWidth : Int,              
       _ self_modelHeight : Int,             
       _ self_frontTracksBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayFrontTracks : Bool,
       _ prefs_mergerColorFrontTracks : NSColor,
       _ self_backTracksBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayBackTracks : Bool,
       _ prefs_mergerColorBackTracks : NSColor,
       _ self_internalBoardsLimitsBezierPaths : BezierPathArray,
       _ self_boardLimitsBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayInternalBoardsLimits : Bool,
       _ prefs_mergerColorInternalBoardsLimits : NSColor,
       _ self_frontPadsBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayFrontPads : Bool,
       _ prefs_mergerColorFrontPads : NSColor,
       _ self_backPadsBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayBackPads : Bool,
       _ prefs_mergerColorBackPads : NSColor,
       _ self_viasBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayVias : Bool,
       _ prefs_mergerColorVias : NSColor,    
       _ self_holesBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayHoles : Bool,
       _ prefs_mergerColorHoles : NSColor,   
       _ self_frontLegendLinesBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayFrontLegendLines : Bool,
       _ prefs_mergerColorFrontLegendLines : NSColor,
       _ self_backLegendLinesBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayBackLegendLines : Bool,
       _ prefs_mergerColorBackLegendLines : NSColor,
       _ self_frontLegendTextsBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayFrontLegendTexts : Bool,
       _ prefs_mergerColorFrontLegendTexts : NSColor,
       _ self_frontLayoutTextsBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayFrontLayoutTexts : Bool,
       _ prefs_mergerColorFrontLayoutTexts : NSColor,
       _ self_backLegendTextsBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayBackLegendTexts : Bool,
       _ prefs_mergerColorBackLegendTexts : NSColor,
       _ self_backLayoutTextsBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayBackLayoutTexts : Bool,
       _ prefs_mergerColorBackLayoutTexts : NSColor,
       _ self_backComponentNamesBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayBackComponentNames : Bool,
       _ prefs_mergerColorBackComponentNames : NSColor,
       _ self_frontComponentNamesBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayFrontComponentNames : Bool,
       _ prefs_mergerColorFrontComponentNames : NSColor,
       _ self_frontComponentValuesBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayFrontComponentValues : Bool,
       _ prefs_mergerColorFrontComponentValues : NSColor,
       _ self_backComponentValuesBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayBackComponentValues : Bool,
       _ prefs_mergerColorBackComponentValues : NSColor,
       _ self_frontPackagesBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayFrontPackages : Bool,
       _ prefs_mergerColorFrontPackages : NSColor,
       _ self_backPackagesBezierPaths : BezierPathArray,
       _ prefs_mergerBoardViewDisplayBackPackages : Bool,
       _ prefs_mergerColorBackPackages : NSColor
) -> EBShape {
//--- START OF USER ZONE 2
  var shapes = EBShape ()
//--- Background
  let backRect = NSRect (x:0.0, y:0.0, width: canariUnitToCocoa(self_modelWidth), height: canariUnitToCocoa(self_modelHeight))
  shapes.add (filled: [EBBezierPath (rect:backRect)], prefs_mergerColorBackground)
//--- Back Legend Lines
  if (prefs_mergerBoardViewDisplayBackLegendLines) {
    shapes.add (stroke: self_backLegendLinesBezierPaths.array, prefs_mergerColorBackLegendLines)
  }
//--- Back Component Values
  if (prefs_mergerBoardViewDisplayBackComponentValues) {
    shapes.add (stroke: self_backComponentValuesBezierPaths.array, prefs_mergerColorBackComponentValues)
  }
//--- Back Component Names
  if (prefs_mergerBoardViewDisplayBackComponentNames) {
    shapes.add (stroke: self_backComponentNamesBezierPaths.array, prefs_mergerColorBackComponentNames)
  }
//--- Back Legend Texts
  if (prefs_mergerBoardViewDisplayBackLegendTexts) {
    shapes.add (stroke: self_backLegendTextsBezierPaths.array, prefs_mergerColorBackLegendTexts)
  }
//--- Back Packages
  if (prefs_mergerBoardViewDisplayBackPackages) {
    shapes.add (stroke: self_backPackagesBezierPaths.array, prefs_mergerColorBackPackages)
  }
//--- Back Layout Texts
  if (prefs_mergerBoardViewDisplayBackLayoutTexts) {
    shapes.add (stroke: self_backLayoutTextsBezierPaths.array, prefs_mergerColorBackLayoutTexts)
  }
//--- Back tracks
  if prefs_mergerBoardViewDisplayBackTracks {
    shapes.add (stroke: self_backTracksBezierPaths.array, prefs_mergerColorBackTracks)
  }
//--- Back pads
  if (prefs_mergerBoardViewDisplayBackPads) {
    shapes.add (filled: self_backPadsBezierPaths.array, prefs_mergerColorBackPads)
  }
//--- Front tracks
  if prefs_mergerBoardViewDisplayFrontTracks {
    shapes.add (stroke: self_frontTracksBezierPaths.array, prefs_mergerColorFrontTracks)
  }
//--- Front layout texts
  if (prefs_mergerBoardViewDisplayFrontLayoutTexts) {
    shapes.add (stroke: self_frontLayoutTextsBezierPaths.array, prefs_mergerColorFrontLayoutTexts)
  }
//--- Front Legend Lines
  if (prefs_mergerBoardViewDisplayFrontLegendLines) {
    shapes.add (stroke: self_frontLegendLinesBezierPaths.array, prefs_mergerColorFrontLegendLines)
  }
//--- Front Legend texts
  if (prefs_mergerBoardViewDisplayFrontLegendTexts) {
    shapes.add (stroke: self_frontLegendTextsBezierPaths.array, prefs_mergerColorFrontLegendTexts)
  }
//--- Front Packages
  if (prefs_mergerBoardViewDisplayFrontPackages) {
    shapes.add (stroke: self_frontPackagesBezierPaths.array, prefs_mergerColorFrontPackages)
  }
//--- Front Component Names
  if (prefs_mergerBoardViewDisplayFrontComponentNames) {
    shapes.add (stroke: self_frontComponentNamesBezierPaths.array, prefs_mergerColorFrontComponentNames)
  }
//--- Front Component Values
  if (prefs_mergerBoardViewDisplayFrontComponentValues) {
    shapes.add (stroke: self_frontComponentValuesBezierPaths.array, prefs_mergerColorFrontComponentValues)
  }
//--- Front pads
  if (prefs_mergerBoardViewDisplayFrontPads) {
    shapes.add (filled: self_frontPadsBezierPaths.array, prefs_mergerColorFrontPads)
  }
//--- Vias
  if (prefs_mergerBoardViewDisplayVias) {
    shapes.add (filled: self_viasBezierPaths.array, prefs_mergerColorVias)
  }
//--- Board limits tracks
  if prefs_mergerBoardViewDisplayInternalBoardsLimits {
    shapes.add (stroke: self_internalBoardsLimitsBezierPaths.array, prefs_mergerColorInternalBoardsLimits)
    shapes.add (stroke: self_boardLimitsBezierPaths.array, prefs_mergerColorInternalBoardsLimits)
  }
//--- Holes
  if (prefs_mergerBoardViewDisplayHoles) {
    shapes.add (stroke: self_holesBezierPaths.array, prefs_mergerColorHoles)
  }
//---
  return shapes
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

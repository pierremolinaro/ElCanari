//
//  ElCanari
//
//  Created by Pierre Molinaro on 03/07/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   ARRANGE WITHOUT OVERLAPPING
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension MergerDocument {

  //····················································································································

  func arrangeUpNoOverlap () {
    let boardHeight = self.rootObject.boardHeight!
  //--- Selected set
    let selectedSet = self.mBoardInstanceController.selectedSet
  //--- Non selected set
    let nonSelectedSet = Set (self.rootObject.boardInstances_property.propval).subtracting (selectedSet)
  //---
    var deltaY = boardHeight
    for selectedInstance in selectedSet {
      let instanceRect = getBoardRect (selectedInstance)
      var testRect = CanariBoardRect (
        left:instanceRect.left,
        bottom:instanceRect.top,
        width:instanceRect.width,
        height:boardHeight - instanceRect.top
      )
      for nonSelectedInstance in nonSelectedSet {
        let intersection = testRect.intersection (getBoardRect (nonSelectedInstance))
        if !intersection.isEmpty () {
          testRect = CanariBoardRect (left: testRect.left, bottom: testRect.bottom, width: testRect.width, height: intersection.bottom - testRect.bottom)
        }
      }
      if testRect.isEmpty () {
        deltaY = 0
      }else{
        deltaY = min (deltaY, testRect.height)
      }
    }
    if deltaY > 0 {
      for selectedInstance in selectedSet {
        selectedInstance.y += deltaY
      }
    }
  }

  //····················································································································

  func arrangeDownNoOverlap () {
    let boardHeight = self.rootObject.boardHeight!
  //--- Selected set
    let selectedSet = self.mBoardInstanceController.selectedSet
  //--- Non selected set
    let nonSelectedSet = Set (self.rootObject.boardInstances_property.propval).subtracting (selectedSet)
  //---
    var deltaY = -boardHeight
    for selectedInstance in selectedSet {
      let instanceRect = getBoardRect (selectedInstance)
      var testRect = CanariBoardRect (
        left:instanceRect.left,
        bottom:0,
        width:instanceRect.width,
        height:instanceRect.bottom
      )
      NSLog ("testRect.top \(testRect.top)")
      for nonSelectedInstance in nonSelectedSet {
        let intersection = testRect.intersection (getBoardRect (nonSelectedInstance))
        if !intersection.isEmpty () {
          testRect = CanariBoardRect (
            left: instanceRect.left,
            bottom: intersection.top,
            width: instanceRect.width,
            height: instanceRect.bottom - intersection.top
          )
          NSLog ("intersection, testRect.top \(testRect.top)")
        }
      }
      if testRect.isEmpty () {
        deltaY = 0
      }else{
        deltaY = max (deltaY, -testRect.height)
      }
      NSLog ("deltaY \(deltaY)")
    }
    if deltaY < 0 {
      for selectedInstance in selectedSet {
        selectedInstance.y += deltaY
      }
    }
  }

  //····················································································································

  func arrangeRightNoOverlap () {
  }

  //····················································································································

  func arrangeLeftNoOverlap () {
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   ARRANGE WITHOUT OVERLAPPING
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension MergerDocument {

  //····················································································································

  func arrangeUpWithOverlap () {
  }

  //····················································································································

  func arrangeDownWithOverlap () {
  }

  //····················································································································

  func arrangeRightWithOverlap () {
  }

  //····················································································································

  func arrangeLeftWithOverlap () {
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   ARRANGE WITH OVERLAPPING
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension MergerDocument {

  //····················································································································

  func arrangeVerticaly () {
    let boards = self.rootObject.boardInstances_property.propval
    let sortedBoards = boards.sorted (by: { $0.y < $1.y })
    var idx = 0
    while idx < sortedBoards.count {
      let board = sortedBoards [idx]
      var newY = 0
      let boardRect = getBoardRect (board)
      let leftRect = CanariBoardRect (left:board.x, bottom:0, width:boardRect.left, height:board.y)
      var idy = idx + 1
      while idy < sortedBoards.count {
        let testedBoard = sortedBoards [idy]
        let testedBoardRect = getBoardRect (testedBoard)
        let intersection = leftRect.intersection (testedBoardRect)
        if !intersection.isEmpty () {
          newY = max (newY, intersection.bottom + intersection.height)
        }
        idy += 1
      }
      board.y = newY
      idx += 1
    }
  //--- For boards that intersect, push them up
    idx = 0
    while idx < sortedBoards.count {
      let board = sortedBoards [idx]
      let boardRect = getBoardRect (board)
      var idy = idx + 1
      while idy < sortedBoards.count {
        let testedBoard = sortedBoards [idy]
        let testedBoardRect = getBoardRect (testedBoard)
        let intersection = boardRect.intersection (testedBoardRect)
        if !intersection.isEmpty () {
          pushBoardUp (sortedBoards, boardRect, idy, boardRect.top)
        }
        idy += 1
      }
      idx += 1
    }
  }

  //····················································································································

  func arrangeHorizontally () {
  //--- Push boards on left
    let boards = self.rootObject.boardInstances_property.propval
    let sortedBoards = boards.sorted (by: { $0.x < $1.x })
    var idx = 0
    while idx < sortedBoards.count {
      let board = sortedBoards [idx]
      var newX = 0
      let boardRect = getBoardRect (board)
      let leftRect = CanariBoardRect (left:0, bottom:board.y, width:board.x, height:boardRect.height)
      var idy = idx + 1
      while idy < sortedBoards.count {
        let testedBoard = sortedBoards [idy]
        let testedBoardRect = getBoardRect (testedBoard)
        let intersection = leftRect.intersection (testedBoardRect)
        if !intersection.isEmpty () {
          newX = max (newX, intersection.left + intersection.width)
        }
        idy += 1
      }
      board.x = newX
      idx += 1
    }
  //--- For boards that intersect, push them on right
    idx = 0
    while idx < sortedBoards.count {
      let board = sortedBoards [idx]
      let boardRect = getBoardRect (board)
      var idy = idx + 1
      while idy < sortedBoards.count {
        let testedBoard = sortedBoards [idy]
        let testedBoardRect = getBoardRect (testedBoard)
        let intersection = boardRect.intersection (testedBoardRect)
        if !intersection.isEmpty () {
          pushBoardRight (sortedBoards, boardRect, idy, boardRect.left + boardRect.width)
        }
        idy += 1
      }
      idx += 1
    }
  }

  //····················································································································

  fileprivate func pushBoardRight (_ sortedBoards : [MergerBoardInstance],
                                   _ inBoardRect : CanariBoardRect,
                                   _ inIndex : Int,
                                   _ inNewX : Int) {
  //--- Push other boards ?
    var idy = inIndex + 1
    while idy < sortedBoards.count {
      let testedBoard = sortedBoards [idy]
      let testedBoardRect = getBoardRect (testedBoard)
      let intersection = inBoardRect.intersection (testedBoardRect)
      if !intersection.isEmpty () {
        pushBoardRight (sortedBoards, testedBoardRect, idy, inBoardRect.left + inBoardRect.width)
      }
      idy += 1
    }
  //--- Set new X
    sortedBoards [inIndex].x = inNewX
  }

  //····················································································································

  fileprivate func pushBoardUp (_ sortedBoards : [MergerBoardInstance],
                                _ inBoardRect : CanariBoardRect,
                                _ inIndex : Int,
                                _ inNewY : Int) {
  //--- Push other boards ?
    var idy = inIndex + 1
    while idy < sortedBoards.count {
      let testedBoard = sortedBoards [idy]
      let testedBoardRect = getBoardRect (testedBoard)
      let intersection = inBoardRect.intersection (testedBoardRect)
      if !intersection.isEmpty () {
        pushBoardUp (sortedBoards, testedBoardRect, idy, inBoardRect.top)
      }
      idy += 1
    }
  //--- Set new Y
    sortedBoards [inIndex].y = inNewY
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   ARRANGE WITH OVERLAPPING
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension MergerDocument {

  //····················································································································

  func arrangeVerticalyWithOverlap () {
    let boards = self.rootObject.boardInstances_property.propval
    let sortedBoards = boards.sorted (by: { $0.y < $1.y })
    for board in sortedBoards {
      var newY = 0
      let boardRect = getBoardRect (board)
      let boardLimit = getBoardLimit (board)
      let leftRect = CanariBoardRect (left:board.x, bottom:0, width:boardRect.left, height:board.y)
      for testedBoard in boards {
        if testedBoard !== board {
          let testedBoardLimit = getBoardLimit (testedBoard)
          let inset = min (boardLimit, testedBoardLimit)
          let testedBoardRect = getBoardRect (testedBoard).inset (byX:inset, byY: inset)
          let intersection = leftRect.intersection (testedBoardRect)
          if !intersection.isEmpty () {
            newY = max (newY, intersection.bottom + intersection.height - inset)
          }
        }
      }
      board.y = newY
    }
  //--- For boards that intersect, push them up
    var idx = 0
    while idx < sortedBoards.count {
      let board = sortedBoards [idx]
      let boardRect = getBoardRect (board)
      let boardLimit = getBoardLimit (board)
      var idy = idx + 1
      while idy < sortedBoards.count {
        let testedBoard = sortedBoards [idy]
        let testedBoardLimit = getBoardLimit (testedBoard)
        let inset = min (boardLimit, testedBoardLimit)
        let testedBoardRect = getBoardRect (testedBoard).inset (byX:inset, byY: inset)
        let intersection = boardRect.intersection (testedBoardRect)
        if !intersection.isEmpty () {
          let newY = boardRect.bottom + boardRect.height - inset
          pushBoardUpWithOverlap (sortedBoards, boardRect, boardLimit, idy, newY)
        }
        idy += 1
      }
      idx += 1
    }
  }

  //····················································································································

  fileprivate func pushBoardUpWithOverlap (_ sortedBoards : [MergerBoardInstance],
                                           _ inBoardRect : CanariBoardRect,
                                           _ inBoardLimit : Int,
                                           _ inIndex : Int,
                                           _ inNewY : Int) {
  //--- Push other boards ?
    var idy = inIndex + 1
    while idy < sortedBoards.count {
      let testedBoard = sortedBoards [idy]
      let testedBoardLimit = getBoardLimit (testedBoard)
      let inset = min (inBoardLimit, testedBoardLimit)
      let testedBoardRect = getBoardRect (testedBoard).inset (byX:inset, byY: inset)
      let intersection = inBoardRect.intersection (testedBoardRect)
      if !intersection.isEmpty () {
        let newY = inBoardRect.bottom + inBoardRect.height - inset
        pushBoardUpWithOverlap (sortedBoards, testedBoardRect, testedBoardLimit, idy, newY)
      }
      idy += 1
    }
  //--- Set new X
    sortedBoards [inIndex].y = inNewY
  }

  //····················································································································

  func arrangeHorizontallyWithOverlap () {
  //--- Push boards on left
    let boards = self.rootObject.boardInstances_property.propval
    let sortedBoards = boards.sorted (by: { $0.x < $1.x })
    for board in sortedBoards {
      var newX = 0
      let boardRect = getBoardRect (board)
      let boardLimit = getBoardLimit (board)
      let leftRect = CanariBoardRect (left:0, bottom:board.y, width:board.x, height:boardRect.height)
      for testedBoard in boards {
        if testedBoard !== board {
          let testedBoardLimit = getBoardLimit (testedBoard)
          let inset = min (boardLimit, testedBoardLimit)
          let testedBoardRect = getBoardRect (testedBoard).inset (byX:inset, byY: inset)
          let intersection = leftRect.intersection (testedBoardRect)
          if !intersection.isEmpty () {
            newX = max (newX, intersection.left + intersection.width - inset)
          }
        }
      }
      board.x = newX
    }
  //--- For boards that intersect, push them on right
    var idx = 0
    while idx < sortedBoards.count {
      let board = sortedBoards [idx]
      let boardLimit = getBoardLimit (board)
      let boardRect = getBoardRect (board)
      var idy = idx + 1
      while idy < sortedBoards.count {
        let testedBoard = sortedBoards [idy]
        let testedBoardLimit = getBoardLimit (testedBoard)
        let inset = min (boardLimit, testedBoardLimit)
        let testedBoardRect = getBoardRect (testedBoard).inset (byX:inset, byY: inset)
        let intersection = boardRect.intersection (testedBoardRect)
        if !intersection.isEmpty () {
          let newX = boardRect.left + boardRect.width - inset
          pushBoardRightWithOverlap (sortedBoards, boardRect, testedBoardLimit, idy, newX)
        }
        idy += 1
      }
      idx += 1
    }
  }

  //····················································································································

  fileprivate func pushBoardRightWithOverlap (_ sortedBoards : [MergerBoardInstance],
                                              _ inBoardRect : CanariBoardRect,
                                              _ inBoardLimit : Int,
                                              _ inIndex : Int,
                                              _ inNewX : Int) {
  //--- Push other boards ?
    var idy = inIndex + 1
    while idy < sortedBoards.count {
      let testedBoard = sortedBoards [idy]
      let testedBoardLimit = getBoardLimit (testedBoard)
      let inset = min (inBoardLimit, testedBoardLimit)
      let testedBoardRect = getBoardRect (testedBoard).inset (byX:inset, byY: inset)
      let intersection = inBoardRect.intersection (testedBoardRect)
      if !intersection.isEmpty () {
        let newX = inBoardRect.left + inBoardRect.width - inset
        pushBoardRightWithOverlap (sortedBoards, testedBoardRect, testedBoardLimit, idy, newX)
      }
      idy += 1
    }
  //--- Set new X
    sortedBoards [inIndex].x = inNewX
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   UTILITIES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func getBoardRect (_ board : MergerBoardInstance) -> CanariBoardRect {
  return board.instanceRect!
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func getBoardLimit (_ board : MergerBoardInstance) -> Int {
  return board.boardLimitWidth!
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

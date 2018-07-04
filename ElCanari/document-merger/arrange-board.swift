//
//  magnetization.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 03/07/2018.
//
//
import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   ARRANGE WITHOUT OVERLAPPING
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension PMMergerDocument {

  //····················································································································

  func arrangeVerticaly () {
    let boards = self.rootObject.boardInstances_property.propval
    let sortedBoards = boards.sorted (by: { $0.y < $1.y })
    for board in sortedBoards {
      var newY = 0
      let boardRect = getBoardRect (board)
      let leftRect = CanariBoardRect (x:board.x, y:0, width:boardRect.x, height:board.y)
      for testedBoard in boards {
        if testedBoard !== board {
          switch testedBoard.instanceRect {
          case .single (let r) :
            let intersection = leftRect.intersection (r)
            if !intersection.isEmpty () {
              newY = max (newY, intersection.y + intersection.height)
            }
          default :
            break
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
      var idy = idx + 1
      while idy < sortedBoards.count {
        let testedBoard = sortedBoards [idy]
        switch testedBoard.instanceRect {
        case .single (let testedBoardRect) :
          let intersection = boardRect.intersection (testedBoardRect)
          if !intersection.isEmpty () {
            pushBoardUp (sortedBoards, boardRect, idy, boardRect.y + boardRect.height)
          }
        default :
          break
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
    for board in sortedBoards {
      var newX = 0
      let boardRect = getBoardRect (board)
      let leftRect = CanariBoardRect (x:0, y:board.y, width:board.x, height:boardRect.height)
      for testedBoard in boards {
        if testedBoard !== board {
          let testedBoardRect = getBoardRect (testedBoard)
          let intersection = leftRect.intersection (testedBoardRect)
          if !intersection.isEmpty () {
            newX = max (newX, intersection.x + intersection.width)
          }
        }
      }
      board.x = newX
    }
  //--- For boards that intersect, push them on right
    var idx = 0
    while idx < sortedBoards.count {
      let board = sortedBoards [idx]
      let boardRect = getBoardRect (board)
      var idy = idx + 1
      while idy < sortedBoards.count {
        let testedBoard = sortedBoards [idy]
        let testedBoardRect = getBoardRect (testedBoard)
        let intersection = boardRect.intersection (testedBoardRect)
        if !intersection.isEmpty () {
          pushBoardRight (sortedBoards, boardRect, idy, boardRect.x + boardRect.width)
        }
        idy += 1
      }
      idx += 1
    }
  }

  //····················································································································

  fileprivate func pushBoardRight (_ sortedBoards : [MergerBoardInstanceEntity],
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
        pushBoardRight (sortedBoards, testedBoardRect, idy, inBoardRect.x + inBoardRect.width)
      }
      idy += 1
    }
  //--- Set new X
    sortedBoards [inIndex].x = inNewX
  }

  //····················································································································

  fileprivate func pushBoardUp (_ sortedBoards : [MergerBoardInstanceEntity],
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
        pushBoardUp (sortedBoards, testedBoardRect, idy, inBoardRect.y + inBoardRect.height)
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

extension PMMergerDocument {

  //····················································································································

  func arrangeVerticalyWithOverlap () {
    let boards = self.rootObject.boardInstances_property.propval
    let sortedBoards = boards.sorted (by: { $0.y < $1.y })
    for board in sortedBoards {
      var newY = 0
      let boardRect = getBoardRect (board)
      let boardLimit = getBoardLimit (board)
      let leftRect = CanariBoardRect (x:board.x, y:0, width:boardRect.x, height:board.y)
      for testedBoard in boards {
        if testedBoard !== board {
          let testedBoardLimit = getBoardLimit (testedBoard)
          let inset = min (boardLimit, testedBoardLimit)
          let testedBoardRect = getBoardRect (testedBoard).inset (byX:inset, byY: inset)
          let intersection = leftRect.intersection (testedBoardRect)
          if !intersection.isEmpty () {
            newY = max (newY, intersection.y + intersection.height - inset)
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
          let newY = boardRect.y + boardRect.height - inset
          pushBoardUpWithOverlap (sortedBoards, boardRect, boardLimit, idy, newY)
        }
        idy += 1
      }
      idx += 1
    }
  }

  //····················································································································

  fileprivate func pushBoardUpWithOverlap (_ sortedBoards : [MergerBoardInstanceEntity],
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
        let newY = inBoardRect.y + inBoardRect.height - inset
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
      let leftRect = CanariBoardRect (x:0, y:board.y, width:board.x, height:boardRect.height)
      for testedBoard in boards {
        if testedBoard !== board {
          let testedBoardLimit = getBoardLimit (testedBoard)
          let inset = min (boardLimit, testedBoardLimit)
          let testedBoardRect = getBoardRect (testedBoard).inset (byX:inset, byY: inset)
          let intersection = leftRect.intersection (testedBoardRect)
          if !intersection.isEmpty () {
            newX = max (newX, intersection.x + intersection.width - inset)
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
          let newX = boardRect.x + boardRect.width - inset
          pushBoardRightWithOverlap (sortedBoards, boardRect, testedBoardLimit, idy, newX)
        }
        idy += 1
      }
      idx += 1
    }
  }

  //····················································································································

  fileprivate func pushBoardRightWithOverlap (_ sortedBoards : [MergerBoardInstanceEntity],
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
        let newX = inBoardRect.x + inBoardRect.width - inset
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

fileprivate func getBoardRect (_ board : MergerBoardInstanceEntity) -> CanariBoardRect {
  let result : CanariBoardRect
  switch board.instanceRect {
  case .single (let r) :
    result = r
  default :
    result = CanariBoardRect ()
  }
  return result
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate func getBoardLimit (_ board : MergerBoardInstanceEntity) -> Int {
  let result : Int
  switch board.boardLimitWidth {
  case .single (let r) :
    result = r
  default :
    result = 0
  }
  return result
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

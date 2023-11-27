import Foundation

enum Move {
  case rock
  case paper
  case scissors
}

enum RoundResult {
  case win
  case draw
  case loss
}

struct RockPaperScissors {

  static func determineRoundResult(opponentMove: Move, myMove: Move) -> RoundResult {
    if opponentMove == myMove {
      return .draw
    } else if opponentMove == .rock && myMove == .paper {
      return .win
    } else if opponentMove == .paper && myMove == .scissors {
      return .win
    } else if opponentMove == .scissors && myMove == .rock {
      return .win
    } else {
      return .loss
    }
  }

  static func scoreForRoundResult(result: RoundResult) -> Int {
    if result == .win {
      return 6
    } else if result == .draw {
      return 3
    } else {
      return 0
    }
  }

  static func scoreForMove(move: Move) -> Int {
    if move == .rock {
      return 1
    } else if move == .paper {
      return 2
    } else {
      return 3
    }
  }

  static func getMoveFromLetter(letter: String) -> Move {
    if letter == "A" || letter == "X" {
      return .rock
    } else if letter == "B" || letter == "Y" {
      return .paper
    } else {
      return .scissors
    }
  }

  static func solvePartOne() throws -> Int {
    let filePath = "./2022/RockPaperScissorsInput.txt"
    let chunks = try String(contentsOfFile: filePath).split(separator: NEW_LINE)

    var totalScore: Int = 0
    for chunk in chunks {
      let splitChunk = chunk.split(separator: " ")
      if splitChunk.count >= 2 {
        let opponentMove = getMoveFromLetter(letter: String(splitChunk[0]))
        let myMove = getMoveFromLetter(letter: String(splitChunk[1]))
        let result = determineRoundResult(opponentMove: opponentMove, myMove: myMove)
        totalScore += scoreForRoundResult(result: result)
        totalScore += scoreForMove(move: myMove)
      }
    }
    return totalScore
  }

}

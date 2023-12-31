import Collections
import Foundation

let NEW_LINE = "\n"
let EMPTY_LINE = "\n\n"

struct CalorieCounting {

  static func solvePartOne() throws -> Int {
    let filePath = "./2022/CalorieCountingInput.txt"
    let chunks = try String(contentsOfFile: filePath).split(separator: EMPTY_LINE)

    var maxCalories: Int = 0
    chunks.forEach { chunk in
      let totalCalories = chunk.split(separator: NEW_LINE).reduce(0) { $0 + (Int($1) ?? 0) }
      maxCalories = totalCalories > maxCalories ? totalCalories : maxCalories
    }
    return maxCalories
  }

  static func solvePartTwo() throws -> Int {
    let filePath = "./2022/CalorieCountingInput.txt"
    let chunks = try String(contentsOfFile: filePath).split(separator: EMPTY_LINE)

    var caloriesHeap = Heap<Int>()
    chunks.forEach { chunk in
      let totalCalories = chunk.split(separator: NEW_LINE).reduce(0) { $0 + (Int($1) ?? 0) }
      caloriesHeap.insert(totalCalories)
    }

    return (0..<3).reduce(0) { sum, _ in
      sum + (caloriesHeap.popMax() ?? 0)
    }
  }

}

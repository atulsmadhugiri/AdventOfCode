import Foundation

do {
  try print(CalorieCounting.solvePartOne())
  try print(CalorieCounting.solvePartTwo())
  try print(RockPaperScissors.solvePartOne())
} catch {
  print("Error: \(error.localizedDescription)")
}

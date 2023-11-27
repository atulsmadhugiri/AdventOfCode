import Foundation

do {
  try print(CalorieCounting.solvePartOne())
  try print(CalorieCounting.solvePartTwo())
  try print(RockPaperScissors.solvePartOne())
  try print(RockPaperScissors.solvePartTwo())
} catch {
  print("Error: \(error.localizedDescription)")
}

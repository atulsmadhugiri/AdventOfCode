import Foundation

do {
  try print(CalorieCounting.solvePartOne())
  try print(CalorieCounting.solvePartTwo())
} catch {
  print("Error: \(error.localizedDescription)")
}

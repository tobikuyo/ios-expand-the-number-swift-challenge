import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    let numberString = String(number)
    var digitArray = numberString.compactMap({ $0.wholeNumberValue })
    
    switch digitArray.count {
    case 3:
        digitArray[0] *= 100
        digitArray[1] *= 10
    case 4:
        digitArray[0] *= 1000
        digitArray[1] *= 100
        digitArray[2] *= 10
    default:
        digitArray
    }
    
    return digitArray
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]

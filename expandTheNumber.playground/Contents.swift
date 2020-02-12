import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    let numberString = String(number)
    var digitArray = numberString.compactMap({ $0.wholeNumberValue })
    
    switch digitArray.count {
    case 3:
        let first = digitArray[0] * 100
        let second = digitArray[1] * 10
        
        digitArray[0] = first
        digitArray[1] = second
    case 4:
        let first = digitArray[0] * 1000
        let second = digitArray[1] * 100
        let third = digitArray[2] * 10
        
        digitArray[0] = first
        digitArray[1] = second
        digitArray[2] = third
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

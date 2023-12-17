import Foundation

func getDigits(_ x: Int) -> [Int] {
    
    return String(describing: x).compactMap {
        Int(String($0))
    }
    
}

func isPalindrome(_ x: Int) -> Bool {
    
    var countIsPalindrome = false
    
    if x < 0 {
        return countIsPalindrome
    }
    
    let originalArray = getDigits(x)
    var reversedArray: [Int] = []
    
    for arrayReversedElement in originalArray.reversed() {
        reversedArray.append(arrayReversedElement)
    }
    
    countIsPalindrome = originalArray == reversedArray
    
    return countIsPalindrome
    
}


// Test cases
print(isPalindrome(1221))
print(isPalindrome(-1221))
print(isPalindrome(1234321))

import Foundation

func romanToInt(_ s: String) -> Int {
   
    let mainString = Array(s)
    var finalValue: Int = 0
    var finalResult: Int = 0
    
    for index in 0..<s.count {
        
        if mainString[index] == "I" {
            finalValue = 1
        } else if mainString[index] == "V" {
            finalValue = 5
        } else if mainString[index] == "X" {
            finalValue = 10
        } else if mainString[index] == "L" {
            finalValue = 50
        } else if mainString[index] == "C" {
            finalValue = 100
        } else if mainString[index] == "D" {
            finalValue = 500
        } else if mainString[index] == "M" {
            finalValue = 1000
        }
        
        if index + 1 < mainString.count {
            
            if mainString[index] == "I" && (mainString[index + 1] == "V" || mainString[index + 1] == "X" ) {
                finalValue *= -1
            } else if mainString[index] == "X" && (mainString[index + 1] == "L" || mainString[index + 1] == "C" ) {
                finalValue *= -1
            } else if mainString[index] == "C" && (mainString[index + 1] == "D" || mainString[index + 1] == "M" ) {
                finalValue *= -1
            }
            
        }
        
        finalResult += finalValue
    }
    
    return finalResult
    
}

// "MDCCCLXXXIV"
// 1000 + 500 + 100 + 100 + 100 + 50 + 10 + 10 + 10 + !!!4!!!
print(romanToInt("MDCCCLXXXIV"))

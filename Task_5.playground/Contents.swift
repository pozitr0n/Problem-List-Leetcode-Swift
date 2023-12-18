import Foundation

func intToRoman(_ num: Int) -> String {
  
    let conversion: [(intNumber: Int, romanNumber: String)] = [(1000, "M"),
                                                                (900, "CM"),
                                                                (500, "D"),
                                                                (400, "CD"),
                                                                (100, "C"),
                                                                (90, "XC"),
                                                                (50, "L"),
                                                                (40, "XL"),
                                                                (10, "X"),
                                                                (9, "IX"),
                                                                (5, "V"),
                                                                (4, "IV"),
                                                                (1, "I")
    ]
    
    var romanFinalString = ""
    var remainder = 0
    
    for entry in conversion {
        
        let quotient = (num - remainder) / entry.intNumber
        print(quotient)
        
        remainder += quotient * entry.intNumber
        print(remainder)
        
        romanFinalString += String(repeating: entry.romanNumber, count: quotient)
        print(romanFinalString)
        
    }
    
    return romanFinalString
    
}

print(intToRoman(1994))

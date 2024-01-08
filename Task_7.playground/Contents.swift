import UIKit
import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
 
    var finalString: String = ""
    var conditionIsTrue: Bool = true
    var count: Int = 0
    var minCount: Int = 0
    
    if let min = strs.min(by: {$1.count > $0.count}) {
        minCount = min.count
    }
    
    while conditionIsTrue && count <= minCount - 1 {
        
        for elemString in strs {
            
            let index = elemString.index(elemString.startIndex, offsetBy: count)
            
            if finalString.count != count + 1 {
                finalString.append(elemString[index])
            } else {
                
                let lastCharacter = finalString.last!
                
                if lastCharacter != elemString[index] {
                    finalString.remove(at: finalString.index(before: finalString.endIndex))
                    conditionIsTrue = false
                    break
                }
                
            }
            
        }
        
        count += 1
        
    }
    
    if !conditionIsTrue && finalString.isEmpty {
        finalString = ""
    }
    
    return finalString
    
}

let strs = ["flowe","flowersdfs","flowerccvxcvx","flowersesdfsdfo", "flowerrueourtoeir"]
print(longestCommonPrefix(strs))

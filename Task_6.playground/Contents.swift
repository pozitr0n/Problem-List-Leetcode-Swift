import Foundation

let charactersMap: [Character:Character] = [
    "}": "{",
    ")": "(",
    "]": "["
]

func isValid(_ s: String) -> Bool {
    
    // checking the input string for validity
    let allowedChars = Set("()[]{}")
    
    if !allowedChars.isSuperset(of: s) {
        return false
    }
    
    var mainStack = [Character]()
    for currentCharacter in s {
        
        let curr = charactersMap[currentCharacter]
       
        if curr == nil {
            mainStack.append(currentCharacter)
        } else {
            if mainStack.popLast() != curr {
                return false
            }
        }
        
        print(mainStack.count)
        
    }
    
    return mainStack.count == 0
    
}

print(isValid("([])"))

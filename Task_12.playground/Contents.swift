import UIKit
import Foundation

class Solution {
    
    func majorityElement(_ nums: [Int]) -> Int {
        
        // array for counting
        // value:count
        var dictionaryForCounts = [Int : Int]()
        
        // counting the values
        for currentElement in nums {
            dictionaryForCounts[currentElement] = (dictionaryForCounts[currentElement] ?? 0) + 1
        }
        
        // testing
        print(dictionaryForCounts)
        
        // searching needed element in the dictionary
        guard let key = dictionaryForCounts.max(by: { $0.1 < $1.1 })?.key else {
            return 0
        }
        
        return key
        
    }
    
}

let testArray = [4, 4, 4, 3, 3, 5, 3, 4, 4, 6, 6, 5, 5, 2, 5, 5, 5, 9, 10]
print(Solution().majorityElement(testArray))

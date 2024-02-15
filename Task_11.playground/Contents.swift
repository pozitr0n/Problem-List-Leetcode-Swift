import UIKit
import Foundation

class Solution {
    
    func strStr(_ haystack: String, _ needle: String) -> Int {
     
        if let range = haystack.range(of: needle) {
            
            let startPos = haystack.distance(from: haystack.startIndex, to: range.lowerBound)
            return startPos
            
        }
        
        return -1
        
    }
    
}

// General test
// Input:
let haystack = "sadbutsad"
let needle = "sad"
print(Solution().strStr(haystack, needle))

// Input:
let haystack1 = "leetcode"
let needle1 = "leeto"
print(Solution().strStr(haystack1, needle1))

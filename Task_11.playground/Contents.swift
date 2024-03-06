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

// General tests of the task
//=========================//

// Input:
let haystack = "sadbutsad"
let needle = "sad"
print(Solution().strStr(haystack, needle))

// Input:
let haystack1 = "leetcode"
let needle1 = "leeto"
print(Solution().strStr(haystack1, needle1))

// Input:
let haystack2 = "meettothe"
let needle2 = "the"
print(Solution().strStr(haystack2, needle2))

// Input:
let haystack3 = "iloveswiftsomuch"
let needle3 = "love"
print(Solution().strStr(haystack3, needle3))

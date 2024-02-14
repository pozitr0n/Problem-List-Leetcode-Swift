import UIKit
import Foundation

// Custom Judge:

// The judge will test your solution with the following code:
//
// int[] nums = [...]; // Input array
// int[] expectedNums = [...]; // The expected answer with correct length
// int k = removeDuplicates(nums); // Calls your implementation
// assert k == expectedNums.length;
// for (int i = 0; i < k; i++) {
//     assert nums[i] == expectedNums[i];
// }
//
// If all assertions pass, then your solution will be accepted.

class Solution {
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
       
        var bufferArray = [Int]()
        var addedArray = Set<Int>()
        
        for elem in nums {
            
            if !addedArray.contains(elem) {
                
                bufferArray.append(elem)
                addedArray.insert(elem)
                
            }
            
        }
        
        nums = bufferArray
        return bufferArray.count
        
    }
    
}

// General test
var testArray: Array<Int> = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
print(Solution().removeDuplicates(&testArray))

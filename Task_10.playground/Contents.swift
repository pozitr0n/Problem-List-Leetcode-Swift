import UIKit
import Foundation

// int[] nums = [...]; // Input array
// int val = ...; // Value to remove
// int[] expectedNums = [...]; // The expected answer with correct length.
//                            // It is sorted with no values equaling val.
//
// int k = removeElement(nums, val); // Calls your implementation
//
// assert k == expectedNums.length;
// sort(nums, 0, k); // Sort the first k elements of nums
// for (int i = 0; i < actualLength; i++) {
//     assert nums[i] == expectedNums[i];
// }

class Solution {
    
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {

        let newArray = nums.filter {$0 != val}
        nums = newArray
        
        return nums.count
        
    }
    
}

// General test
var nums = [0, 1, 2, 2, 3, 0, 4, 2]
var val = 2
print(Solution().removeElement(&nums, val))

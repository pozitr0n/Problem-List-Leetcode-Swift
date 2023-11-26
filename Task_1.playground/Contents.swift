import UIKit
import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var returnArray: [Int] = []
    
    for i in 0...nums.count - 2 {
     
        for j in i + 1...nums.count - 1 {
            
            if target == nums[i] + nums[j] {
                
                returnArray.append(i);
                returnArray.append(j);
                
            }
            
        }
        
    }
                
    return returnArray
            
}

let nums1 = [2, 7, 11, 15]
let tagret1 = 9
print(twoSum(nums1, tagret1))

let nums2 = [3, 2, 4]
let tagret2 = 6
print(twoSum(nums2, tagret2))

let nums3 = [3, 3]
let tagret3 = 6
print(twoSum(nums3, tagret3))

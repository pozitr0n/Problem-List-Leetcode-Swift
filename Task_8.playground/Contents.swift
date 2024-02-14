import UIKit
import Foundation

// Parent ListNode public class
public class ListNode {
    
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0;
        self.next = nil;
    }
    
    public init(_ val: Int) {
        self.val = val;
        self.next = nil;
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val;
        self.next = next;
    }
    
}

// Solution class
class Solution {
    
    // Merging method of the Solution class
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        // Step 1: Create array for elements and for sorting in final
        var bufferArray = [Int]()
        
        // Step 2: Get all the values from all the lists and add all of them into buffer array
        if list1 == nil && list2 == nil {
            return nil
        }
        
        if var list1 = list1 {
            
            while list1.next != nil {
                
                bufferArray.append(list1.val)
                list1 = list1.next!
                
            }
            
            // the last value
            bufferArray.append(list1.val)
            
        }
        
        if var list2 = list2 {
            
            while list2.next != nil {
                
                bufferArray.append(list2.val)
                list2 = list2.next!
                
            }
            
            // the last value
            bufferArray.append(list2.val)
            
        }
        
        // Step 3: Sorting
        let bufferArraySorted = bufferArray.sorted()
        
        // Step 4: Create final ListNode()
        var listNodeFinal: [ListNode] = []
        
        for sortedElement in bufferArraySorted {
            listNodeFinal.append(ListNode(sortedElement, nil))
        }
        
        while listNodeFinal.count != 1 {
            
            let lastItem = listNodeFinal[listNodeFinal.count - 1]
            listNodeFinal[(listNodeFinal.count) - 2].next = lastItem
            
            listNodeFinal.remove(at: listNodeFinal.count - 1)
            
        }
        
        return listNodeFinal[0]
        
    }
    
}

// Test calls for testing task and created implementation

// Test list 1
var list1 = ListNode(1, ListNode(2, ListNode(4)))

// Test list 2
var list2 = ListNode(1, ListNode(3, ListNode(4)))

// final test
let testMainList = Solution().mergeTwoLists(list1, list2)

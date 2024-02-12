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
    
        return ListNode()
        
    }
    
}

// Test calls for testing task and created implementation

// Test list 1
var list1 = ListNode(1)
list1.next = ListNode(2)
list1.next = ListNode(4)

// Test list 2
var list2 = ListNode(1)
list2.next = ListNode(3)
list2.next = ListNode(4)


import UIKit
import Foundation
import UIKit

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

class Solution {
    
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    
        return ListNode()
        
    }
    
}

var list1 = ListNode(1)
list1.next = ListNode(2)
list1.next = ListNode(4)

var list2 = ListNode(1)
list2.next = ListNode(3)
list2.next = ListNode(4)


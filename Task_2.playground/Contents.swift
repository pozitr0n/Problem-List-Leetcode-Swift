import UIKit
import Foundation

public class ListNode {
    
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
    
}

class Solution {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
        if l1 == nil && l2 == nil {
            return nil
        }
        
        var ll1 = l1
        var ll2 = l2
        
        let listHead = ListNode(0)
        var point = listHead
        var carry = 0
        
        while (ll1 != nil) || (ll2 != nil) || carry != 0 {
           
            let total = valueFromNode(ll1) + valueFromNode(ll2) + carry
            print("total=\(total)")
            
            point.val = total % 10
            print("total % 10=\(point.val)")
            
            carry = total / 10
            print("carry=\(carry)")
            
            ll1 = nextNode(ll1)
            ll2 = nextNode(ll2)
            
            if ll1 != nil || ll2 != nil || carry != 0 {
                point.next = ListNode(0)
                point = point.next!
            }
            
        }
        
        return listHead
        
    }
    
    private func valueFromNode(_ node: ListNode?) -> Int {
        
        if node == nil {
            return 0
        } else {
            return node!.val
        }
        
    }
    
    private func nextNode(_ node: ListNode?) -> ListNode? {
       
        if node != nil {
            return node!.next
        } else {
            return nil
        }
        
    }
    
}

var test3 = ListNode(3)
var test2 = ListNode(4, test3)
var test1 = ListNode(2, test2)

var test23 = ListNode(4)
var test22 = ListNode(6, test23)
var test21 = ListNode(5, test22)

print(Solution().addTwoNumbers(test1, test21)?.val)
print(Solution().addTwoNumbers(test1, test21)?.next?.val)
print(Solution().addTwoNumbers(test1, test21)?.next?.next?.val)

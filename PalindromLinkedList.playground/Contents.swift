/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

//
//Given the head of a singly linked list, return true if it is a palindrome.
//
//
//
//Example 1:
//
//
//Input: head = [1,2,2,1]
//Output: true
//Example 2:
//
//
//Input: head = [1,2]
//Output: false


class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
              if head == nil {
            return false
        }
        
        var straightNode: ListNode? = head
        
        var middle = self.middleNode(head)
        var reversed = self.reverseList(middle)
    
        while reversed != nil {
            if straightNode!.val != reversed!.val {
                return false
            }
            
            straightNode = straightNode?.next
            reversed = reversed?.next
        }
        
        return true
    }
    
    func middleNode(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        
        var slow = head
        var fast = head
        
        while fast != nil && fast?.next != nil {
            slow = slow!.next
            fast = fast?.next?.next
        }
        
        return slow
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        var previous: ListNode? = nil
        var current: ListNode? = head
        
        while current != nil {
            let nextTmp = current?.next
            current?.next = previous
            previous = current
            current = nextTmp
        }
        
        return previous
    }
}



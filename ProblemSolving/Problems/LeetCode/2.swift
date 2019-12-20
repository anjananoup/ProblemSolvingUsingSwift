//
//  2.swift
//  ProblemSolving
//
//  Created by Anjan on 12/20/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class Leet2: Solution {
    func executeMain() {
        let one = Leet2.ListNode(3)
        one.next = Leet2.ListNode(7)
//        one.next?.next = Leet2.ListNode(3)
        
        let two = Leet2.ListNode(9)
        two.next = Leet2.ListNode(2)
//        two.next?.next = Leet2.ListNode(4)
        
        let res = Solution().addTwoNumbers(one, two)
        print(res)
    }
    
     // Definition for singly-linked list.
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }
     
    class Solution {
        func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            var res: ListNode?
            var link1 = l1
            var link2 = l2
            var rem = 0
            var temp = 0
            while link1 != nil || link2 != nil {
                temp = (link1?.val ?? 0) + (link2?.val ?? 0) + rem
                link1?.val = temp % 10
                link2?.val = temp % 10
                rem = temp / 10
                if rem > 0 && (link1?.next == nil || link2?.next == nil) {
                    if link1?.next == nil {
                        link1?.next = ListNode(rem)
                    } else if link2?.next == nil {
                        link2?.next = ListNode(rem)
                    }
                    rem = 0
                }
                res = (link1 != nil ? l1 : l2)
                
                //reset
                link1 = link1?.next
                link2 = link2?.next
            }
            return res
        }
        
    }
}

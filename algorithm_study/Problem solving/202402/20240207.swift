//
//  20240207.swift
//  algorithm_study
//
//  Created by JW Moon on 2/7/24.
//

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}
//
//class Solution {
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        var node1 = l1
//        var node2 = l2
//
//        var head: ListNode = ListNode(0)
//        let beforeHead = head
//
//        var carry = 0
//
//        while node1 != nil || node2 != nil || carry != 0 {
//            if carry == 1 {  }
//            let sum = (node1?.val ?? 0) + (node2?.val ?? 0) + carry
//            carry = sum >= 10 ? 1 : 0
//            let next = ListNode(sum % 10)
//            head.next = next
//
//            // now은 1칸 앞으로 이동 (거꾸로)
//            head = head.next!
//
//            // node들은 1칸 뒤로 이동
//            node1 = node1?.next
//            node2 = node2?.next
//        }
//
//
//
//        return beforeHead.next
//    }
//}

//
//  20240222.swift
//  algorithm_study
//
//  Created by JW Moon on 2/22/24.
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
//    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
//
//        let ans = head
//
//        var i = 0
//        var beforeLeft: ListNode? = ListNode(0, head)
//
//
//        while i != left - 1 {
//            beforeLeft = beforeLeft?.next
//            i += 1
//        }
//
//        var subHead = beforeLeft?.next
//        i += 1
//
//        var subTail = subHead
//
//        while i != right {
//            subTail = subTail?.next
//            i += 1
//        }
//
//        let afterRight = subTail?.next
//
//        i = left
//
//        var now = subHead, prev: ListNode? = nil
//
//        while i != right {
//            let next = now?.next
//            now?.next = prev
//            prev = now
//            now = next
//            i += 1
//        }
//
//        beforeLeft?.next = subTail
//        subHead?.next = afterRight
//
//        return ans
//
//    }
//}

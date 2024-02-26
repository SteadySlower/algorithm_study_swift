//
//  20240226.swift
//  algorithm_study
//
//  Created by JW Moon on 2/26/24.
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
//        while i != right + 1 {
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
//
//let input = [1,2,3,4,5]
//
//let beforeHead = ListNode(0)
//var now: ListNode? = beforeHead
//
//for num in input {
//    let node = ListNode(num)
//    now?.next = node
//    now = now?.next
//}
//
//let ans = Solution().reverseBetween(beforeHead.next, 2, 4)
//
//var n = ans
//
//while n != nil {
//    print(n!.val, separator: ", ")
//    n = n?.next
//}

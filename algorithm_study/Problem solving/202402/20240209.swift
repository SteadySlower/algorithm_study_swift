//
//  20240209.swift
//  algorithm_study
//
//  Created by JW Moon on 2/9/24.
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
//    func swapPairs(_ head: ListNode?) -> ListNode? {
//
//        if head?.next == nil { return head }
//
//        var before: ListNode? = nil
//        var pair1 = head
//        var pair2 = head?.next
//
//        let ans = pair2
//
//        while pair1 != nil, pair2 != nil {
//            let after = pair2?.next
//
//
//            before?.next = pair2
//            pair2?.next = pair1
//            pair1?.next = after
//
//            before = pair1
//            pair1 = pair1?.next
//            pair2 = pair1?.next
//        }
//
//        return ans
//    }
//}

//
//  20230130.swift
//  algorithm_study
//
//  Created by JW Moon on 1/30/24.
//

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}
//
//
//class Solution {
//    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
//        func moveNodeToAns(list: inout ListNode?) {
//            now?.next = list
//            now = now?.next
//            list = list?.next
//        }
//
//        var list1 = list1
//        var list2 = list2
//        var now: ListNode? = nil
//        var head: ListNode? = nil
//
//        let first1 = list1?.val ?? 101
//        let first2 = list2?.val ?? 101
//
//        if first1 < first2 {
//            now = list1
//            head = list1
//            list1 = list1?.next
//        } else {
//            now = list2
//            head = list2
//            list2 = list2?.next
//        }
//
//        while let val1 = list1?.val, let val2 = list2?.val {
//            if val1 < val2 {
//                moveNodeToAns(list: &list1)
//            } else {
//                moveNodeToAns(list: &list2)
//            }
//        }
//
//        now?.next = list1 == nil ? list2 : list1
//
//        return head
//    }
//}

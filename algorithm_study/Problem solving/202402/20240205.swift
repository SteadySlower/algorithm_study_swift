//
//  20240205.swift
//  algorithm_study
//
//  Created by JW Moon on 2/5/24.
//

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}

//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        if head == nil { return nil }
//
//        var head = head
//        var array = [Int]()
//
//        while head != nil {
//            array.append(head!.val)
//            head = head?.next
//        }
//
//        array = array.reversed()
//        var newList = [ListNode]()
//
//        for (i, v) in array.enumerated() {
//            let node = ListNode(v)
//            newList.append(node)
//            if i > 0 {
//                newList[i - 1].next = node
//            }
//        }
//
//        return newList[0]
//    }
//}

//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        var node = head, prev: ListNode? = nil
//
//        while node != nil {
//            let next = node?.next
//            node?.next = prev
//            prev = node
//            node = next
//        }
//
//        return prev
//    }
//}

/*
 1 2 3
 2 1 3
 */

//
//  20240213.swift
//  algorithm_study
//
//  Created by JW Moon on 2/13/24.
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
//        if head != nil, head?.next != nil {
//            // 현재 head와 swap할 대상
//            let toSwap = head?.next
//            // 현재 head의 next는 swap할 대상의 next를 head로 하는 링크드리스트(= 리스트')를 스왑한 결과
//            head?.next = swapPairs(toSwap?.next)
//            // head와 swap의 위치변경
//            toSwap?.next = head
//
//            // toSwap되어서 head가 바뀜
//            return toSwap
//        }
//
//        // head가 더 이상 존재하기
//        return head
//    }
//}

//class Solution {
//    func swapPairs(_ head: ListNode?) -> ListNode? {
//        // 링크드리스트에 node가 없거나 node가 1개만 있는 경우
//        if head?.next == nil { return head }
//
//        // 현재 swap할 node 2개의 이전에 위치한 node
//        var before: ListNode? = nil
//        // swap할 대상 node 2개
//        var pair1 = head
//        var pair2 = head?.next
//
//        // 2번째 node가 새로운 head가 되므로 참조를 미리 저장해둔다.
//        let ans = pair2
//
//        while pair1 != nil, pair2 != nil {
//            // 현재 swap할 node 2개의 뒤에 있는 node
//            let after = pair2?.next
//
//            // 1. before의 next에 pair2
//            before?.next = pair2
//            // 2. pair2의 next에 pair1
//            pair2?.next = pair1
//            // 3. pair 2의 next에 after
//            pair1?.next = after
//
//            // 다음 swap할 대상으로 pair 이동
//            before = pair1
//            pair1 = pair1?.next
//            pair2 = pair1?.next
//        }
//
//        return ans
//    }
//}

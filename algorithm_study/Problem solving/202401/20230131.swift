//
//  20230131.swift
//  algorithm_study
//
//  Created by JW Moon on 1/31/24.
//

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}


//class Solution {
//    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
//        // 노드를 새로운 링크드 리스트로 옮기는 함수
//            // reference를 그대로 가져와야 하니 때문에 inout을 사용한다.
//        func moveNodeToAns(list: inout ListNode?) {
//            now?.next = list
//            now = now?.next
//            list = list?.next
//        }
//
//        var list1 = list1
//        var list2 = list2
//
//        // 새로운 링크드리스트
//            // head를 따로 저장해두어야 한다. (나중에 거슬러 올라올 수 없기 때문에)
//        var now: ListNode? = nil
//        var head: ListNode? = nil
//
//        // 새로운 리스트의 head를 정하는 과정
//            // l1와 l2의 현재 head의 val 중에 낮은 값
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
//        // l1, l2의 리스트 중 어느 하나의 리스트를 완전 탐색할 때까지 작은 node들 부터 새 리스트에 연결한다.
//        while let val1 = list1?.val, let val2 = list2?.val {
//            if val1 < val2 {
//                moveNodeToAns(list: &list1)
//            } else {
//                moveNodeToAns(list: &list2)
//            }
//        }
//
//        // 남은 node들을 연결한다.
//        now?.next = list1 == nil ? list2 : list1
//
//        return head
//    }
//}

//class Solution {
//    // 최종적으로 merge된 링크드리스트의 head를 리턴하는 재귀함수
//    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        // l1에 비었으면 l2를 연결, l2가 비었으면 l1을 연결
//        if l1 == nil { return l2 }
//        if l2 == nil { return l1 }
//
//        // l1의 현재 node가 l2의 현재 node 보다 작으면?
//        if l1!.val < l2!.val {
//            // l1의 현재 node가 head가 되고 뒤에 l1의 나머지 부분과 l2를 merge한 링크드리스트를 붙이면 됨
//            l1!.next = mergeTwoLists(l1!.next, l2)
//            return l1 // 그리고 그 붙인 링크드리스트의 head를 리턴
//        // 반대의 경우는?
//        } else {
//            // l2의 현재 node가 head가 되고 뒤 에 l2의 나머지 부분과 l1을 merge한 링크드리스트를 붙이면 됨
//            l2!.next = mergeTwoLists(l2!.next, l1) // 그리고 그 붙인 링크드리스트의 head를 리턴
//            return l2
//        }
//    }
//}

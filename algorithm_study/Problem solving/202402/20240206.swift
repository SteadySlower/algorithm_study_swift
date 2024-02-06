//
//  20240206.swift
//  algorithm_study
//
//  Created by JW Moon on 2/6/24.
//

//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        // node: 현재 node
//        // prev: 현재보다 앞에 있는 node
//        var node = head, prev: ListNode? = nil
//
//        // 1칸씩 앞으로 이동하면서 prev를 node.next에 연결하고
//        // prev에 node를 prev에 node.next를 할당한다.
//        while node != nil {
//            let next = node?.next
//            node?.next = prev
//            prev = node
//            node = next
//        }
//
//        // node == nil이 되면 (마지막 node를 지남)
//        // prev (= 기존 링크드리스트의 마지막 node)가 뒤집힌 링크드리스트의 head가 된다.
//
//        return prev
//    }
//}

//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        // node와 prev를 받아서 node의 next를 prev로 바꾸어주는 함수
//        func reverse(_ node: ListNode?, _ prev: ListNode?) -> ListNode? {
//            // node == nil (list의 마지막에 도달하면) prev를 리턴
//            if node == nil { return prev }
//            let next = node?.next
//            // prev를 node의 next에 할당한다
//            node?.next = prev
//            // 기존의 next를 node자리에, 기존의 node를 prev 자리에 넣어서 다시 실행한다.
//            return reverse(next, node)
//        }
//        return reverse(head, nil)
//    }
//}

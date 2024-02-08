//
//  20240208.swift
//  algorithm_study
//
//  Created by JW Moon on 2/8/24.
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
//        // 나중에 답을 리턴하기 위한 가상의 node (head 앞에 있는 node)
//        let beforeHead: ListNode? = ListNode(0)
//        // 새 list의 현재 node
//        var node = beforeHead
//
//        // 합이 10이 넘으면 다음자리로 올리는 작업을 담당하는 변수
//        var carry = 0
//
//        while node1 != nil || node2 != nil || carry != 0 {
//            // 현재 node의 val을 정하기 위해서 모든 값을 더한다.
//            let sum = (node1?.val ?? 0) + (node2?.val ?? 0) + carry
//
//            // sum을 10으로 나눈 몫과 나머지
//            let (q, r) = sum.quotientAndRemainder(dividingBy: 10)
//            carry = q // carry에 몫
//            let next = ListNode(r) // 다음 node의 val에 나머지를 할당
//            node?.next = next // 현재 node에 다음 node 연결
//
//            // 현재 node 1칸 이동
//            node = node?.next
//
//            // l1, l2의 node 1칸 이동
//            node1 = node1?.next
//            node2 = node2?.next
//        }
//
//        // beforeHead는 무조건 현재 head를 next로 가지고 있으므로 force-unwrapping을 사용해도 안전함
//            // 문제의 조건에서 l1과 l2는 non-empty라고 제시되어 있음.
//        return beforeHead?.next!
//    }
//}
//
//
//
//let result = 11.quotientAndRemainder(dividingBy: 10)
//print(result.quotient)
//print(result.remainder)

/*
 2 4 3
 5 6 4
 
 7 -> 0 -> 8
 
 */

//
//  20230317.swift
//  algorithm_study
//
//  Created by JW Moon on 3/17/24.
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
//        // 순서를 바꾼 결과물의 head를 리턴하기 위해서 따로 변수로 저장한다.
//        let ans = head
//
//        // left 보다 한칸 왼쪽에 있는 node를 찾는다.
//        var i = 1
//        var beforeLeft: ListNode? = ListNode(0, head)
//        while i != left {
//            beforeLeft = beforeLeft?.next
//            i += 1
//        }
//
//        // 순서를 뒤집을 SubList의 왼쪽 끝 node (-> 뒤집으면 오른쪽 끝이 됨)
//        let leftNode = beforeLeft?.next
//
//        // 뒤집을 SubList의 오른쪽 끝을 찾는다. (-> 뒤집으면 왼쪽 끝이 됨)
//        var rightNode = leftNode
//        while i != right {
//            rightNode = rightNode?.next
//            i += 1
//        }
//
//        // right보다 한칸 오른쪽에 있는 node
//        let afterRight = rightNode?.next
//
//        // now와 prev를 사용해서 SubList를 뒤집는다.
//        var now = leftNode, prev: ListNode? = nil
//        for _ in 0..<(right - left + 1) {
//            let next = now?.next
//            now?.next = prev
//            prev = now
//            now = next
//        }
//
//        // 뒤집힌 SubList를 왼쪽 끝과 오른쪽 끝에 연결한다.
//        beforeLeft?.next = rightNode
//        leftNode?.next = afterRight
//
//        // left가 1이면 head의 순서가 바뀌어 있으므로
//        // 순서가 바뀐 리스트의 head가 된 rightNode을 리턴한다.
//        return left != 1 ? ans : rightNode
//    }
//}
//
//func printSolution(input: [Int], left: Int, right: Int) {
//    let beforeHead = ListNode(0)
//    var now: ListNode? = beforeHead
//
//    for num in input {
//        let node = ListNode(num)
//        now?.next = node
//        now = now?.next
//    }
//
//    let ans = Solution().reverseBetween(beforeHead.next, left, right)
//
//    var n = ans
//
//    while n != nil {
//        print(n!.val, terminator: ", ")
//        n = n?.next
//    }
//}
//
//
//printSolution(input: [3,5], left: 1, right: 2)

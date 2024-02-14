//
//  20240214.swift
//  algorithm_study
//
//  Created by JW Moon on 2/14/24.
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
//    func oddEvenList(_ head: ListNode?) -> ListNode? {
//        // 각각 홀수 node, 짝수 node로 이루어진 별도의 링크드리스트를 만든다.
//        var odd = head // 홀수 node로만 이루어진 링크드리스트의 head
//        var even = head?.next // 짝수 node로만 이루어진 링크드리스트의 head
//
//        // odd 리스트에 뒤에 연결하기 위해서 even의 head는 따로 저장
//        let evenHead = even
//
//        while true {
//            // odd 리스트 뒤에 홀수 번째 node (even의 next) 연결
//            odd?.next = even?.next
//            // even 리스트 뒤에 짝수 번째 node (evendml next, next) 연결
//            even?.next = even?.next?.next
//
//            // 더 이상 odd의 next -> 즉 홀수 node가 없다면 break
//            if odd?.next == nil { break }
//
//            // 아니라면 다음 홀수, 짝수 node로 이동
//            odd = odd?.next
//            even = even?.next
//        }
//
//        // odd 리스트에 even 리스트를 연결
//        odd?.next = evenHead
//
//        return head
//    }
//}

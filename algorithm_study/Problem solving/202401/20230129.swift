//
//  20230129.swift
//  algorithm_study
//
//  Created by JW Moon on 1/29/24.
//

// [7,1,5,3,6,4]
// [-6, 4, -2, 3, -2]

//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        var minPrice = prices[0] // 현재까지 최저가
//        var profit = 0 // 현재까지 최대 이익 (음수이면 0을 리턴해야 하므로 초기값 0)
//
//        for price in prices {
//            profit = max(profit, price - minPrice) // 최대 이익 갱신
//            minPrice = min(minPrice, price) // 최저가 갱신
//        }
//
//        return profit
//    }
//}
//
//print(Solution().maxProfit([7,1,5,3,6,4]))


// // Definition for singly-linked list.
//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
// }
//
//// Array를 이용한 풀이
////class Solution {
////    func isPalindrome(_ head: ListNode?) -> Bool {
////        var array = [Int]()
////        var next = head
////
////        while let n = next {
////            array.append(n.val)
////            next = n.next
////        }
////
////        for i in 0..<(array.count / 2) {
////            if array[i] != array[array.count - i - 1] {
////                return false
////            }
////        }
////
////        return true
////    }
////}
//
//// Runner 기법을 활용한 풀이
//class Solution {
//    func isPalindrome(_ head: ListNode?) -> Bool {
//        // reverse: 현재 링크드리스트를 거꾸로 뒤집은 링크드리스트의 head
//        var reverse: ListNode? = nil
//        // slow는 1칸씩 이동하는 포인터, fast는 2칸씩 이동하는 포인터
//        var slow = head, fast = head
//
//        // fast가 끝까지 이동할 때까지
//        while fast != nil && fast?.next != nil {
//            // fast는 2칸 이동
//            fast = fast?.next?.next
//            // 거꾸로 리스트의 다음 head의 next = 거꾸로 리스트의 현재 head
//            let nextOfReverse = reverse
//            reverse = slow // 거꾸로 리스트의 현재 head를 slow로 교체 (역으로 1칸 감)
//            reverse?.next = nextOfReverse // head가 한칸 이동했으므로 과거의 head가 현재 head의 next가 됨
//            slow = slow?.next // slow 1칸 이동
//        }
//
//        // fast가 nil이 아닌 경우 = 링크드리스트의 node 수가 홀수인 경우
//            // 이렇게 되면 현재 slow의 위치는 링크드리스트의 정중앙
//            // 근데 정중앙 값은 plaindrome을 판별하는데 영향을 끼치면 안되므로 slow 1칸 이동
//        if fast != nil {
//            slow = slow?.next
//        }
//
//        // slow의 현재 위치: 정중앙 바로 다음 위치
//        // reverse의 현재 위치: 정중앙 바로 이전 위치
//        // slow의 진행방향: 정방향
//        // reverse의 진행방향: 역방향
//        // 따라서 slow와 reverse를 진행하면서 비교해나간다.
//        while reverse != nil, reverse?.val == slow?.val {
//            slow = slow?.next
//            reverse = reverse?.next
//        }
//
//        // palindrome이라서 reverse가 끝까지 이동했으면 true, 중간에 while문 끊겼다면 false
//        return reverse == nil
//    }
//}

/*
 1 - 2 - 2 - 1
 rev: 2 - 1
 */

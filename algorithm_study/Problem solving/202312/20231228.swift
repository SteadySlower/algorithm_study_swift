//
//  20231228.swift
//  algorithm_study
//
//  Created by JW Moon on 12/28/23.
//

//// 처음에 완전 탐색으로 하려다가 망함
//
//struct Queue {
//    var index = 0
//    var data = [[String]]()
//
//    var isEmpty: Bool {
//        index == data.count
//    }
//
//    mutating func push(_ s: [String]) {
//        data.append(s)
//    }
//
//    mutating func pop() -> [String] {
//        defer {
//            index += 1
//        }
//        return data[index]
//    }
//}
//
//func checkIfPanlindrome(_ str: [String]) -> Bool {
//    var s = 0
//    var e = str.count - 1
//
//    while s < e {
//        if str[s] != str[e] {
//            return false
//        }
//        s += 1
//        e -= 1
//    }
//
//    return true
//}

//class Solution {
//    func longestPalindrome(_ s: String) -> String {
//
//        func bfs(_ s: [String]) -> String {
//            var queue = Queue()
//            queue.push(s)
//
//            while !queue.isEmpty {
//                let now = queue.pop()
//                if checkIfPanlindrome(now) {
//                    return now.joined()
//                }
//                if now.count > 1 {
//                    queue.push(Array(now.dropFirst()))
//                    queue.push(Array(now.dropLast()))
//                }
//            }
//
//            return ""
//        }
//
//        return bfs(s.map { String($0) })
//    }
//}

// palindrome의 성질 = palindrome에 앞뒤로 같은 문자를 붙이면 palindrome이 된다.
// 👉 현재 palindrome에 앞뒤에 같은 문자가 있는지 확인한다

// s.count이거 O(n)이었음
// array.count는 O(1)임

//class Solution {
//    func longestPalindrome(_ s: String) -> String {
//
//        // [Character]로 형변환
//        let sArray = Array(s)
//
//        // 팰린드럼을 찾는 함수
//        func findPalindrome(start: Int, end: Int) -> (Int, Int) {
//            // 시작 포인터와 끝 포인터
//            var start = start
//            var end = end
//            // 시작 포인터와 끝 포인터가 같으면 각각 -1, +1 해서 추가 탐색
//            while start >= 0
//                    && end < sArray.count
//                    && sArray[start] == sArray[end]
//            {
//                start -= 1
//                end += 1
//            }
//
//            // while문이 sArray[start] != sArray[end]일 때 종료되므로 한단계 되돌린다.
//            return (start + 1, end - 1)
//        }
//
//        // 중간결과는 포인터들만 저장한다.
//        var longestIndices = (0, 0)
//
//        // 길이가 1인 펠린드럼에서 시작해서 펠린드럼을 찾는 경우
//        for i in 0..<sArray.count {
//            let palindrome = findPalindrome(start: i, end: i)
//            // 기존 길이보다 긴 경우에만 갱신
//            if palindrome.1 - palindrome.0 > longestIndices.1 - longestIndices.0 {
//                longestIndices = palindrome
//            }
//        }
//
//        // 길이가 2인 펠린드럼에서 시작해서 펠린드럼을 찾는 경우
//        for i in 0..<(sArray.count - 1) {
//            // 길이가 2인 부분문자열이 펠린드럼이 아니면 continue
//            guard sArray[i] == sArray[i + 1] else { continue }
//            let palindrome = findPalindrome(start: i, end: i + 1)
//            if palindrome.1 - palindrome.0 > longestIndices.1 - longestIndices.0 {
//                longestIndices = palindrome
//            }
//        }
//
//        // String으로 변환해서 리턴
//        // [Character]의 SubSequence로 String 만들기
//        return String(sArray[longestIndices.0...longestIndices.1])
//    }
//
//}
//
//class Solution2 {
//    func longestPalindrome(_ s: String) -> String {
//        guard !s.isEmpty else { return "" }
//        var longestIndex = (0,0)
//        let text = Array(s)
//        var j = 0
//        for i in 0..<text.count {
//            var pal = checkPalindrome(center: (i, i), text: text)
//            if let pal = pal, pal.1 - pal.0 > longestIndex.1 - longestIndex.0 {
//                longestIndex = pal
//            }
//            j = i + 1
//            if (j < text.count) {
//                var pal2 = checkPalindrome(center: (i, j), text: text)
//                if let pal2 = pal2, pal2.1 - pal2.0 > longestIndex.1 - longestIndex.0 {
//                    longestIndex = pal2
//                }
//            }
//        }
//        return String(s[s.index(s.startIndex, offsetBy: longestIndex.0)...s.index(s.startIndex, offsetBy: longestIndex.1)])
//    }
//
//    func checkPalindrome(center: (Int, Int), text: [Character]) -> (Int, Int)? {
//        var left = center.0
//        var right = center.1
//        guard text[left] == text[right] else { return nil }
//        while (left >= 0 && right<text.count && (text[left]) == (text[right])) {
//            left -= 1
//            right += 1
//        }
//        return (left+1, right-1)
//    }
//
//}
//
//
//print(Solution().longestPalindrome("babad"))

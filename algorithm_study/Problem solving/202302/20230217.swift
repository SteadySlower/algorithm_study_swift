//
//  20230217.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/02/17.
//

//func solution(_ numbers:[Int]) -> [Int] {
//
//    // 아직 뒷큰수를 구하지 못한 index를 넣어두는 스택
//    var stack = [0]
//
//    // 현재 뒷큰수가 될 수 있는 인덱스
//    var index = 1
//
//    // ans[index] = numbers[index]의 뒷큰수
//    var ans = Array(repeating: -1, count: numbers.count)
//
//    // numbers의 모든 index를 순회
//    while index < numbers.count {
//        // 현재 index가 stack.last에 있는 index이 뒷큰수가 될 수 있는 경우
//        while !stack.isEmpty && numbers[stack.last!] < numbers[index] {
//            // stack.last를 pop하고 뒷큰수를 기록함
//            ans[stack.popLast()!] = numbers[index]
//        }
//
//        // 현재 index가 더 이상 stack.last의 뒷큰수가 될 수 없는 경우
//        stack.append(index) // 현재 index의 뒷큰수를 구하기 위해서 stack에 넣고
//        index += 1 // index를 1 늘린다
//    }
//
//    return ans
//}

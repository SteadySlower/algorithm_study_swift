//
//  20230121.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/21.
//

//func solution(_ topping:[Int]) -> Int {
//
//    // 철수가 0 ~ i까지 케이크에서 먹은 토핑의 종류
//    var bro1 = Array(repeating: 0, count: topping.count)
//    var set1 = Set<Int>()
//
//    // 동생이 (i - 1) ~ i까지 케이크에서 먹은 토핑의 종류
//    var bro2 = Array(repeating: 0, count: topping.count)
//    var set2 = Set<Int>()
//
//    // 철수가 먹은 토핑의 종류 구하기
//    for i in 0..<topping.count {
//        set1.insert(topping[i]) //👉 철수가 지금까지 먹은 토핑의 종류
//        bro1[i] = set1.count
//    }
//
//    // 동생이 먹은 토핑의 종류 구하기
//    for i in stride(from: topping.count - 1, to: -1, by: -1) {
//        set2.insert(topping[i]) //👉 동생이 지금까지 먹은 토핑의 종류
//        bro2[i] = set2.count
//    }
//
//    var ans = 0
//
//    // 철수가 0 ~ i까지의 케이크를 먹었다면 동생은 i + 1 ~ topping.count - 1의 케이크를 먹는다
//        // 두 구간을 비교해서 토핑의 갯수가 동일하다면 공평하게 자를 경우
//    for i in 0..<(topping.count - 1) {
//        if bro1[i] == bro2[i + 1] { ans += 1 }
//    }
//
//    return ans
//}
//
//print(solution([1, 2, 1, 3, 1, 4, 1, 2]))

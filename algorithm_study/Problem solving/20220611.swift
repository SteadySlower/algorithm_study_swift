//
//  20220611.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/11.
//

// 오큰수

// 입력 받기
//let N = Int(readLine()!)!
//let a = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//// 오큰수가 아직 구해지지 않은 값들을 stack에 넣는다.
//var stack = [0] //👉 0번 index의 숫자는 누구의 오큰수도 될 수 없으므로 미리 stack에 넣어둔다.
////⭐️ 실제 값이 아니라 index를 stack에 넣어야 하는 이유
//    // 오큰수를 순서래도 출력해야한다.
//    // 즉 Ai의 오큰수라는 정보가 아니라 i번째 오큰수라는 것을 저장해야한다.
//
//// 현재 인덱스
//var i = 1
//
//// index의 오큰수를 찾아서 저장하는 배열 (오큰수가 없으면 -1을 출력하므로 기본적으로 -1로 세팅)
//var result = Array(repeating: -1, count: N)
//
//// 반복문
//while i < N { //👉 1 ~ N - 1의 인덱스 내에서
//
//    // stack이 아직 비지 않음 (= 왼쪽에 아직 오큰수를 없는 수가 남아있음) &&
//    // a[stack.last!]보다 a[index] 더 큼 (= a[index]이 a[stack.last!]의 오큰수)
//    while !stack.isEmpty && a[i] > a[stack.last!] {
//        result[stack.popLast()!] = a[i] // 오큰수를 구했으니까 기록하고 pop한다.
//    }
//
//    // stack이 비었거나 (= 이미 오큰 수를 다 찾았다.)
//    // a[stack에 있는 수들]이 현재 a[i]의 값보다 크다 (= 더 이상 a[i]의 값은 오큰수가 될 수 없음)
//    stack.append(i) //👉 현재 index의 오큰수를 구하기 위해서 push한다.
//    i += 1
//}
////⭐️ 반복문을 도는 동안 stack 안은 오름차순으로 정렬된다.
//    // stack에 있는 a[i]보다 작은 것들은 다 pop해 버리고 더 a[i]보다 큰 수를 만났을 때 push되기 때문에
//
//print(result.map { String($0) }.joined(separator: " "))

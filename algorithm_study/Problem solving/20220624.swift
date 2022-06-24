//
//  20220624.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/24.
//

//// 재귀함수를 이용해서 구현하기
//func f(_ n: Int) -> Int {
//    // cache에 초기값 넣어주기
//    if n == 1 || n == 2 {
//        cache[n] = n
//    }
//
//    // 저장된 값이 없다면 점화식으로 계산한다.
//    if cache[n] < 0 {
//        cache[n] = (f(n - 2) + f(n - 1)) % 10007
//        //❗️ Int 범위 벗어나는 것을 방지하기 위해 나누는 수는 미리 나누어서 cache에 저장
//    }
//    //👉 이렇게 하면 재귀함수가 f(1)까지 내려가서 역으로 f(n)까지 구하면서 올라옴
//
//    return cache[n]
//}
//
//print(f(n))

//// 2 * n 타일링
//let n = Int(readLine()!)!
//
//var cache = Array(repeating: -1, count: n + 1)
//
//for i in 1...n {
//    // 초기 값 넣기
//    if i == 1 || i == 2 {
//        cache[i] = i
//        continue
//    }
//
//    // 점화식 적용
//    cache[i] = (cache[i - 2] + cache[i - 1]) % 10007
//}
//
//print(cache[n])

//// 설탕 배달
//
//let N = Int(readLine()!)!
//
//var five = N / 5
//
//while true {
//    if five < 0 { print(-1); break }
//    let remainder = (N - five * 5) % 3
//
//    if remainder == 0 {
//        let three = (N - five * 5) / 3
//        print(five + three)
//        break
//    } else {
//        five -= 1
//    }
//}

//// 1, 2, 3 더하기
//
//var cache = Array(repeating: -1, count: 11)
//
//func f(_ n: Int) -> Int {
//    // 1, 2, 3일 때 초기값
//    if n == 1 || n == 2 {
//        cache[n] = n
//    }
//    if n == 3 {
//        cache[n] = 4
//    }
//
//    // 점화식
//    if cache[n] < 0 {
//        cache[n] = f(n - 3) + f(n - 2) + f(n - 1)
//    }
//
//    return cache[n]
//}
//
//// 입력 받기
//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//    let n = Int(readLine()!)!
//    print(f(n))
//    //👉 여기서 f를 계속 실행해도 처음부터 다시 구하는 것이 아니라 cache에 저장된 것을 사용하기에 문제 없음
//}

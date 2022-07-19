//
//  20220719.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/17.
//

//// 토너먼트
//
//// 다음에 몇번을 받는지 구하는 함수
//    //👉 같은 번호를 받으면 이번에 대결한다는 뜻
//func next(_ n: Int) -> Int {
//    (n + 1) / 2
//}
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//var a = input[1], b = input[2]
//
//// 현재 라운드
//var round = 1
//
//// 반복문 통해서 구하기
//    //⭐️ 토너먼트이기 때문에 붙지 않는 경우는 없다! (-1 출력 구현 안해도 됨)
//while true {
//    if next(a) == next(b) {
//        print(round)
//        break
//    }
//
//    a = next(a)
//    b = next(b)
//    round += 1
//}

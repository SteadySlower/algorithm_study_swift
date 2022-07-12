//
//  20220712.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/12.
//

//import Foundation
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let (N, new, P) = (input[0], input[1], input[2])
//var scores = [Int]()
//
//if N > 0 {
//    scores = readLine()!.split(separator: " ").map { Int(String($0))! }
////🚫 예외 1: N이 0일 때 -> 입력을 받지 말고 바로 1등으로 올린다.
//} else {
//    print(1)
//    exit(0)
//}
//
////🚫 예외 2: N == P (랭킹리스트가 꽉참) && 새로운 점수가 랭킹의 가장 적은 점수보다 낮음 -> 랭킹에 진입 불가
//if N == P && new <= scores.last! {
//    print(-1)
//    exit(0)
//}
//
//// 자기보다 높은 점수를 가진 랭킹을 센다.
//var cnt = 0
//
//for score in scores {
//    if score > new {
//        cnt += 1
//    }
//}
//
//// 등수를 출력한다.
//print(cnt + 1)

//let names = readLine()!.split(separator: "-")
//var string = ""
//for name in names {
//    string += String(name.first!)
//}
//print(string)

//let N = Int(readLine()!)!
//// 오름차순 정렬
//let A = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: <)
//// 내림차순 정렬
//let B = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)
//
//// S 구해서 출력하기
//var S = 0
//for i in 0..<N {
//    S += A[i] * B[i]
//}
//print(S)

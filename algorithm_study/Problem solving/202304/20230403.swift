//
//  20230403.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/03.
//

// 일단 dfs로 하면 콜스택 초과, 시간 초과

// 아래 자릿 수들을 보고 더하는게 빠른지 빼는게 빠른지
/*
 예를 들면 2554의 경우 2000를 빼거나 3000을 빼거나 둘 중에 하나임
 그러면 아래 수를 보고 구하는 것임 554는 2를 빼면 554, 3을 빼면 -446이 되는데
 446의 절댓값이 더 낮으므로 3을 뺌
 
 그러면 이제 -446에서 시작함, 음수이므로 더할 차례
 400을 더하거나 500을 더하면 되는데 마찬가지로 각각 -46, 54로 절댓값이 낮은 쪽인 400 더하기
 그러면 -46가 됨
 
 다시 -46에서 시작
 이제 40을 더하거나 50을 더하는데 결과가 각각 -6, 4이므로 50을 더하는 것을 택함
 
 마지막으로 4가 남았으므로 4를 뺌
 
 결과적으로 3번 + 4번 + 5번 + 4번 = 16
 */

//import Foundation
//
//func firstNum(of i: Int) -> Int {
//    String(i).map { Int(String($0))! }[0]
//}
//
//func length(of i: Int) -> Int {
//    String(abs(i)).count
//}
//
//func solution(_ storey:Int) -> Int {
//
//
//    return storey
//}
//
//print(solution(16))

//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

/*
 0 ~ 1 👉 처음의 범위를 0부터 시작으로 잡으면 이해가 쉽다.
 2 ~ 7 = + 6
 8 ~ 19 = + 12
 20 ~ 37 = + 18
 */

let n = Int(readLine()!)!

var min = 0
var max = 1
var distance = 1

while true {
    if n >= min && n <= max {
        print(distance)
        break
    } else {
        min = max + 1 //👉 다음 단계의 시작은 전 단계 max의 + 1
        max += 6 * distance // 👉 다음 단계의 마지막은 전 단계의 마지막 + 6 * distance (한 단계 확장할 수록 육각형의 각 변이 1만큼 길어짐)
        distance += 1
    }
}

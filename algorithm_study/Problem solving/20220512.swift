//
//  20220512.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/12.
//

//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let A = input[0]
//let B = input[1]
//let C = input[2]
//
//let profit = C - B
//
//if profit <= 0 {
//    print(-1)
//} else {
//    print(A / profit + 1)
//}

//let weight = Int(readLine()!)!
//
//var five = weight / 5
//
//while true {
//    if (weight - five * 5) % 3 == 0 {
//        print(five + (weight - five * 5) / 3)
//        break
//    }
//    five -= 1
//    if five < 0 {
//        print(-1)
//        break
//    }
//}

//let weight = Int(readLine()!)!
//
//var three = 0
//
//while true {
//    if (weight - 3 * three) % 5 == 0 {
//        print(three + (weight - 3 * three) / 5)
//        break
//    }
//    three += 1
//    if weight - 3 * three < 0 {
//        print(-1)
//        break
//    }
//}

/*
 0 ~ 1 👉 처음의 범위를 0부터 시작으로 잡으면 이해가 쉽다.
 2 ~ 7 = + 6
 8 ~ 19 = + 12
 20 ~ 37 = + 18
 */

//let n = Int(readLine()!)!
//
//var min = 0
//var max = 1
//var distance = 1
//
//while true {
//    if n >= min && n <= max {
//        print(distance)
//        break
//    } else {
//        min = max + 1 //👉 다음 단계의 시작은 전 단계 max의 + 1
//        max += 6 * distance // 👉 다음 단계의 마지막은 전 단계의 마지막 + 6 * distance (한 단계 확장할 수록 육각형의 각 변이 1만큼 길어짐)
//        distance += 1
//    }
//}

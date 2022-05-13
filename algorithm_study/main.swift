//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

/*
 하루 밤에 A - B 미터만큼 올라간다.
 중요한 것은 마지막 하루를 어떻게 처리하느냐는 것이다!
 */

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let A = input[0]
let B = input[1]
let V = input[2]

var days = (V - A) / (A - B)
let rem = (V - A) % (A - B)

if rem == 0 {
    print(days + 1)
} else {
    print(days + 2)
}

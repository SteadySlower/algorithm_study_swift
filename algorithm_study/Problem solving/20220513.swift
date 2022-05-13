//
//  20220513.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/13.
//


/*
 각층 분수 갯수 : 1 2 3 4 5
    1층 0 ~ 1
    2층 2 ~ 3
    3층 4 ~ 6
    4층 11 ~ 14
 
    ((n - 1) * n) / 2 < X <= (n * (n + 1)) / 2
 */

//let X = Int(readLine()!)!
//
//// X의 분모 구하기
//var n = 0
//
//repeat {
//    n += 1
//} while !(X > ((n - 1) * n) / 2 && X <= (n * (n + 1)) / 2)
//
//
//// X의 분자 구하기
//let i = X - ((n - 1) * n) / 2
//
//// 홀수, 짝수번째 줄에 따라 분수 모양 다르게 하기
//
//if n % 2 == 0 {
//    print("\(i)/\(n - i + 1)")
//} else {
//    print("\(n - i + 1)/\(i)")
//}


//
//  20221007.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/07.
//

/*
 
 1 2 -> 1
 3 4 -> 2
 5 6 -> 3
 
 홀수는 +1 해서 / 2
 짝수는 그냥 / 2
 
 */

//func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
//    // 현재 라운드에서 승리한다면 부여받는 번호
//    func next(_ i: Int) -> Int {
//        if i % 2 == 0 {
//            return i / 2
//        } else {
//            return (i + 1) / 2
//        }
//    }
//
//    var round = 1
//
//    var a = a
//    var b = b
//
//    // 계속 이긴다고 가정하고 다음 번호룰 부여
//        //👉 a와 b가 번호가 같다 = 같은 라운드에서 대결한다.
//    while a != b {
//        a = next(a)
//        b = next(b)
//        round += 1
//    }
//
//    return round - 1
//}

/*
 4! / 4! + 3! / 2! + 2! / 2!
 
*/

//func solution(_ n:Int) -> Int {
//    func factorial(_ n: Int) -> Int {
//        if n <= 1 {
//            return 1
//        } else {
//            return (n * factorial(n - 1))
//        }
//    }
//
//    func numOfCase(_ one: Int, _ two: Int) -> Int {
//        factorial(one + two) / (factorial(one) * factorial(two))
//    }
//
//    var one = n
//    var two = 0
//    var ans = 0
//
//    while one >= 0 {
//        ans += numOfCase(one, two) % 1234567
//        one -= 2
//        two += 1
//    }
//
//    return ans
//}

//func solution(_ n:Int) -> Int {
//    var cache = Array(repeating: 0, count: n + 1)
//
//    func dp(_ n: Int) -> Int {
//        if n <= 1 {
//            return 1
//        }
//
//        if cache[n] == 0 {
//            cache[n] = dp(n - 1) + dp(n - 2)
//        }
//
//        return cache[n] % 1234567
//    }
//
//    return dp(n)
//}

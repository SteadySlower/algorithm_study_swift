//
//  20220718.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/17.
//

// 크로스 워드 만들기

//// String을 Array로 바꾸어서 반복문을 돌 수 있도록 한다.
//let stringArrays = readLine()!.split(separator: " ").map { Array($0) }
//let string1 = stringArrays[0]
//let string2 = stringArrays[1]
//
//// 각각 겹치는 글자가 만나는 부분을 찾는다.
//var string1Joint = 0
//var string2Joint = 0
//outerLoop: for i in 0..<string1.count {
//    for j in 0..<string2.count {
//        if string1[i] == string2[j] {
//            string1Joint = i
//            string2Joint = j
//            break outerLoop
//        }
//    }
//}
//
//// 출력한다
//    // 겹치는 글자가 있는 행에 string1을 출력하고
//    // 겹치는 글자가 있는 열에 string2를 출력한다
//for i in 0..<string2.count {
//    for j in 0..<string1.count {
//        if i == string2Joint {
//            print(string1[j], terminator: "")
//        } else if j == string1Joint {
//            print(string2[i], terminator: "")
//        } else {
//            print(".", terminator: "")
//        }
//    }
//    print()
//}

//// String을 Array로 바꾸어서 반복문을 돌 수 있도록 한다.
//let stringArrays = readLine()!.split(separator: " ").map { Array($0) }
//let stringA = stringArrays[0]
//let stringB = stringArrays[1]
//
//// 각각 겹치는 글자가 만나는 부분을 찾는다.
//var row = 0
//var column = 0
//outerLoop: for j in 0..<stringA.count { //⭐️ A에서 가장 먼저 등장하는 것이 기준이므로 A 먼저 탐색
//    for i in 0..<stringB.count {
//        if stringA[j] == stringB[i] {
//            row = i
//            column = j
//            break outerLoop //👉 먼저 나온 것이 기준이므로 찾으면 break
//        }
//    }
//}
//
//// 출력한다
//    // 겹치는 글자가 있는 행에 string1을 출력하고
//    // 겹치는 글자가 있는 열에 string2를 출력한다.
//for i in 0..<stringB.count {
//    for j in 0..<stringA.count {
//        if i == row {
//            print(stringA[j], terminator: "")
//        } else if j == column {
//            print(stringB[i], terminator: "")
//        } else {
//            print(".", terminator: "")
//        }
//    }
//    print()
//}

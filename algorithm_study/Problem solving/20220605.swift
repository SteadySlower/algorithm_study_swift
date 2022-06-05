//
//  20220605.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/05.
//

//// 이름을 저장할 Set을 선언
//var set = Set<String>()
//
//let N = Int(readLine()!)!
//
//for _ in 0..<N {
//    let input = readLine()!.split(separator: " ").map { String($0) }
//    if input[1] == "enter" { // enter면 insert
//        set.insert(input[0]) //👉 O(1)
//    } else { // leave면 remove
//        set.remove(input[0]) //👉 O(1)
//    }
//}
//
////⭐️ Set을 정렬하면 Array로 바뀝니다. (sorted 메소드의 리턴 값이 Array이기 때문)
//set.sorted(by: >).forEach { name in
//    print(name)
//}

//// 이름을 저장할 Dictionary를 선언
//var dict = [String : Bool]()
//
//let N = Int(readLine()!)!
//
//for _ in 0..<N {
//    let input = readLine()!.split(separator: " ").map { String($0) }
//    if input[1] == "enter" {
//        dict[input[0]] = true //👉 O(1)
//    } else {
//        dict[input[0]] = nil //👉 value에 nil을 할당하면 데이터가 삭제됨 = O(1)
//    }
//}
//
////⭐️ Dictionary의 keys 속성을 활용하면 key만 배열로 가져올 수 있음
//dict.keys.sorted(by: >).forEach { name in
//    print(name)
//}

// 판매 실적을 저장하기 위한 Dictionary
//var sales = [String: Int]()
//
//let N = Int(readLine()!)!
//
//for _ in 0..<N {
//    let book = readLine()!
//    if sales.keys.contains(book) { //👉 keys에 해당 key가 있는지 확인하는 메소드 O(1)
//        sales[book]! += 1
//    } else {
//        sales[book] = 1
//    }
//}
//
//var bestSellers = [String]()
//let bestSale = sales.values.max()! //👉 keys와 마찬가지로 values도 따로 모아서 볼 수 있음.
//
//for book in sales { //👉 dictionary도 반복문의 대상이 될 수 있음
//    if book.value == bestSale { //👉 .value로 value에 접근
//        bestSellers.append(book.key) //👉 .key로 key에 접근
//    }
//}
//
//print(bestSellers.sorted()[0])

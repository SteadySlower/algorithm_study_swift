//
//  20220805.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/05.
//

//// 우리집엔 도서관이 있어
//
//// 입력 받기
//let N = Int(readLine()!)!
//var books = [Int]()
//for _ in 0..<N {
//    books.append(Int(readLine()!)!)
//}
//
//// 위의 책들을 탐색하기 편하게 뒤집기
//books.reverse()
//
//// 가장 아래에 있어야 하는 책인 N보다 위에 N - 1이 있으면 정렬할 필요가 없음
//var noSortBook = N - 1
//
//// 가장 아래에 있어야 하는 책인 N의 위치
//let bookPosition = books.firstIndex(of: N)!
//
//// 정렬해야만 하는 책의 권수 (일단 N 빼고 전부 정렬해야 한다고 치고)
//var booksToSort = N - 1
//
//// 가장 아래에 있어야 하는 책 N보다 위해 정렬할 필요가 없는 책 찾기
//for i in (bookPosition + 1)..<N {
//    if books[i] == noSortBook { //👉 정렬할 필요가 없는 책이라면 (N - 1)
//        noSortBook = books[i] - 1 //👉 다음 정렬할 필요가 없는 책 (N - 1위에 N - 2)
//        booksToSort -= 1 //👉 정렬해야만 하는 책의 권수
//    }
//}
//
//print(booksToSort)

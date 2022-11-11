//
//  20221111.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/11.
//

//// 출력할 때 원래 String로 필요로 하므로 tuple에 같이 저장
//typealias HeadNumber = (s: String, h: String, n: Int)
//
//func solution(_ files:[String]) -> [String] {
//    // 주어진 문자열을 Head와 Number로 나누기
//    func parse(of f: String) -> HeadNumber {
//        let fArray = f.map { $0 }
//        var head = ""
//        var tail = ""
//        var tailStartIndex = 0
//
//        // 숫자가 나오지 않을 때까지가 Head
//        for i in 0..<fArray.count {
//            // 숫자가 나오면 숫자가 시작되는 index 저장하고 break
//            if fArray[i].isNumber { tailStartIndex = i; break }
//            head += String(fArray[i])
//        }
//
//        // 첫 번째 숫자부터 연속된 숫자가 Number
//        for i in tailStartIndex..<fArray.count {
//            // 숫자가 아닐 때 break
//            if !fArray[i].isNumber { break }
//            tail += String(fArray[i])
//        }
//
//        return (f, head.uppercased(), Int(tail)!)
//    }
//
//    // 정렬 메소드
//    func sort(_ f1: HeadNumber, _ f2: HeadNumber) -> Bool {
//        // head가 다르면 head 기준으로 정렬
//        if f1.h != f2.h {
//            return f1.h < f2.h
//        // head가 동일하면 number 기준으로 정렬
//        } else {
//            return f1.n < f2.n
//        }
//    }
//
//    // 파싱하고 정렬하고 다시 원본으로 바꾸어서 리턴
//    return files.map { parse(of: $0) }.sorted(by: { sort($0, $1) }).map { $0.s }
//}
//
//print(solution(["img12.png", "img10.png", "img02.png", "img1.png", "IMG01.GIF", "img2.JPG"]))
//print(solution(["F-5 Freedom Fighter", "B-50 Superfortress", "A-10 Thunderbolt II", "F-14 Tomcat"]))

//// 출력할 때 원래 String로 필요로 하므로 tuple에 같이 저장
//typealias HeadNumber = (s: String, h: String, n: Int)
//
//func solution(_ files:[String]) -> [String] {
//    // 주어진 문자열을 Head와 Number로 나누기
//    func parse(of f: String) -> HeadNumber {
//        let head = f.prefix { !$0.isNumber }
//        let number = f.drop { !$0.isNumber }.prefix { $0.isNumber }
//        return (f, String(head).uppercased(), Int(number)!)
//    }
//
//    // 정렬 메소드
//    func sort(_ f1: HeadNumber, _ f2: HeadNumber) -> Bool {
//        // head가 다르면 head 기준으로 정렬
//        if f1.h != f2.h {
//            return f1.h < f2.h
//        // head가 동일하면 number 기준으로 정렬
//        } else {
//            return f1.n < f2.n
//        }
//    }
//
//    // 파싱하고 정렬하고 다시 원본으로 바꾸어서 리턴
//    return files.map { parse(of: $0) }.sorted(by: { sort($0, $1) }).map { $0.s }
//}
//
//print(solution(["img12.png", "img10.png", "img02.png", "img1.png", "IMG01.GIF", "img2.JPG"]))
//print(solution(["F-5 Freedom Fighter", "B-50 Superfortress", "A-10 Thunderbolt II", "F-14 Tomcat"]))

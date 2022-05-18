//
//  20220518.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/18.
//

//var caseNum = 0
//
//while true {
//    caseNum += 1
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let L = input[0]
//    let P = input[1]
//    let V = input[2]
//    
//    // 0 0 0이 들어오면 break
//    guard L + P + V != 0 else { break }
//    
//    // 휴가 기간 V 동안 연속된 P일이 몇번이나 들어갈 수 있는지
//        // 여기에 L을 곱해서 캠핑을 할 수 있는 날을 일단 구한다.
//    var days = (V / P) * L
//    
//    // 연속된 P일이 지나고 남은 날
//    let rem = V % P
//    
//    if rem <= L { //👉 그 기간이 L보다 짧으면
//        days += rem //👉 남은 날만큼 캠핑하고
//    } else  { //👉 그 기간이 L보다 길면
//        days += L //👉 최대 L만큼만 캠핑할 수 있으므로 L만 더한다.
//    }
//    
//    print("Case \(caseNum): \(days)")
//}

//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let x = input[0], y = input[1], w = input[2], h = input[3]
//print(min(x, y, w - x, h - y))
//
//let now = (x: input[0], y: input[1])
//let end = (x: input[2], y: input[3])
//
//let distances = [
//    now.x,
//    now.y,
//    end.x - now.x,
//    end.y - now.y
//]
//
//print(distances.min()!)

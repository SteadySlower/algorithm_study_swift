//
//  20220905.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/05.
//

//func solution(_ tickets:[[String]]) -> [String] {
//    
//    // 알파벳 순으로 이동하기 위해서 ticket의 목적지를 알파벳 순으로 정렬한다.
//    let tickets = tickets.sorted(by: { $0[1] < $1[1] })
//        //👉 argument와 동일한 이름의 변수를 선언할 수 있다.
//    
//    // 티켓 사용 여부
//    var used = Array(repeating: false, count: tickets.count)
//    
//    // 출발지를 미리 넣어둔다.
//    var result = ["ICN"]
//    
//    //dfs 구현
//    func dfs(_ from: String) {
//       
//        // 모든 ticket을 순환하면서
//        for i in 0..<tickets.count {
//            // 현재 공항에서 출발할 수 있는 티켓이고 아직 사용안함
//            if tickets[i][0] == from && used[i] == false {
//                used[i] = true
//                result.append(tickets[i][1])
//                dfs(tickets[i][1])
//                
//                // 중간에 이미 모든 티켓을 사용했으면 더 이상 탐색이 필요 없음 (back tracking)
//                if result.count == tickets.count + 1 {
//                    return
//                }
//                
//                used[i] = false
//                _ = result.removeLast()
//            }
//        }
//    }
//    
//    dfs("ICN")
//    
//    return result
//}

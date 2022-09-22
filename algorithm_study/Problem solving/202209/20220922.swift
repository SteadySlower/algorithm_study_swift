//
//  20220922.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/22.
//

//import Foundation
//
//// 입장 or 퇴장을 uid와 함께 저장하기 위한 enum
//enum Event {
//    case enter(uid: String)
//    case leave(uid: String)
//}
//
//func solution(_ record:[String]) -> [String] {
//
//    // nickname을 저장하기 위한 hash table
//    var dict = [String:String]()
//    // enter와 leave를 순서대로 저장하는 배열
//    var events = [Event]()
//    // 리턴할 문자열들을 담는 배열
//    var messages = [String]()
//
//    for r in record {
//        // 띄어 쓰기 기준으로 명령어를 array로 바꾼다.
//        let commend = r.split(separator: " ").map { String($0) }
//
//        // 입장과 퇴장은 uid와 함께 Event 배열에 저장하고
//        if commend[0] == "Enter" {
//            let uid = commend[1]
//            events.append(.enter(uid: uid))
//            dict[uid] = commend[2] //👉 enter의 경우 nickname도 같이 저장한다.
//        } else if commend[0] == "Leave" {
//            events.append(.leave(uid: commend[1]))
//        // change의 경우 dict에 새로운 닉네임을 업데이트한다.
//        } else {
//            dict[commend[1]] = commend[2]
//        }
//    }
//
//    // 입장, 퇴장을 순서대로 메시지를 작성하는데 닉네임은 uid를 통해 dict에서 찾는다.
//    for event in events {
//        switch event {
//        case .enter(let uid):
//            messages.append("\(dict[uid]!)님이 들어왔습니다.")
//        case .leave(let uid):
//            messages.append("\(dict[uid]!)님이 나갔습니다.")
//        }
//    }
//
//    return messages
//}

//print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))

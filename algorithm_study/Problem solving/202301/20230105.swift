//
//  20230105.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/05.
//

//import Foundation
//
//// #이 붙은 음들을 일반 알파벳으로 바꾸어 준다.
//func removeSharp(_ notes: String) -> String {
//    var notes = notes
//
//    let dict = [
//        "C#": "H",
//        "D#": "I",
//        "F#": "J",
//        "G#": "K",
//        "A#": "L",
//    ]
//
//    for key in dict.keys {
//        notes = notes.replacingOccurrences(of: key, with: dict[key]!)
//    }
//
//    return notes
//}
//
//// 음악 구조체
//struct Music {
//    private let start: String
//    private let end: String
//    let name: String
//    private let notes: [String]
//
//    // initializer
//    init(_ s: String) {
//        // ","를 기준ㅇ로 나눈다.
//        let a = s.split(separator: ",").map { String($0) }
//        self.start = a[0]
//        self.end = a[1]
//        self.name = a[2]
//        // note는 #을 제거한다.
//        self.notes = removeSharp(a[3]).map { String($0) }
//    }
//
//    // 음악 재생시간이 길이
//    var runtime: Int {
//        // ":"를 기준으로 시간-분을 나누고 분단위로 계산
//        let startMS = start.split(separator: ":").map { Int($0)! }
//        let endMS = end.split(separator: ":").map { Int($0)! }
//        let s = startMS[0] * 60 + startMS[1]
//        let e = endMS[0] * 60 + endMS[1]
//        return e - s
//    }
//
//    // 재생된 note
//    var playedNotes: String {
//        let length = notes.count
//        var played = [String]()
//        for i in 0..<runtime {
//            let now = i % length //👉 i가 note의 길이를 넘어가면 다시 0으로
//            played.append(notes[now])
//        }
//        // string으로 합쳐서 리턴
//        return played.reduce("", +)
//    }
//}
//
//func solution(_ m:String, _ musicinfos:[String]) -> String {
//
//    // musicinfos를 [Music]으로 파싱
//    let musicArray = musicinfos.map { Music($0) }
//    // 주어진 m에 #제거
//    let m = removeSharp(m)
//
//    var result = [Music]()
//
//    // music의 playedNotes가 m을 포함하면 result에 포함
//    for music in musicArray {
//        if music.playedNotes.contains(m) {
//            result.append(music)
//        }
//    }
//
//    // result가 비었다면 "(None)"을 리턴
//    // 아니라면 result를 runtime(재생시간) 순으로 정렬하고 첫 Music의 name을 리턴
//    return result.isEmpty ? "(None)" : result.sorted(by: { $0.runtime > $1.runtime })[0].name
//}
//
//print(solution("ABCDEFG", ["12:00,12:14,HELLO,CDEFGAB", "13:00,13:05,WORLD,ABCDEF"]))
//print(solution("CC#BCC#BCC#BCC#B", ["03:00,03:30,FOO,CC#B", "04:00,04:08,BAR,CC#BCC#BCC#B"]))
//print(solution("ABC", ["12:00,12:14,HELLO,C#DEFGAB", "13:00,13:05,WORLD,ABCDEF"]))

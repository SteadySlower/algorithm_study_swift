//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

// 회의실

/*
 ❓ 한 회의실에서 최대한 많은 회의를 진행하기 위해서는 어떻게 해야할까?
 1. 진행해야 하는 회의 = 일찍 시작해서 일찍 끝나는 회의
 1. 기본적으로 일찍 끝나는 순서대로 회의를 진행해야한다.
    👉 일찍 끝나야 다음 회의가 또 들어갈 수 있으므로
 2. 끝나는 시간이 동일하다면 일찍 시작하는 회의 순서대로 진행한다.
    👉 사실 일반적인 경우 이 정렬은 큰 의미가 없지만 (어차피 끝나는 시간은 같으므로)
    👉 회의가 시작하자마자 끝나는 경우 (시작시간 = 끝시간)에는 끝나는 시간이 늘어나지 않고 회의를 +1할 수 있으므로 시작 순으로 정렬되어 있어야 한다.
 💡결론적으로 일찍 끝나는 순서대로 회의를 정렬하되 끝나는 시간이 같다면 일찍 시작하는 회의가 우선이 되어야 한다.
 */

typealias Meeting = (s: Int, e: Int)

let N = Int(readLine()!)!

var meetings = [Meeting]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    meetings.append((s: input[0], e: input[1]))
}

// 회의 정렬하기
meetings.sort { a, b in //💡 true면 a가 먼저, false면 b가 먼저
    if a.e == b.e { //👉 종료시간이 같다면
        return a.s < b.s // 시작 시간 순서대로
    } else {
        return a.e < b.e //👉 기본적으로 종료가 빠른 순서대로
    }
}

// 현재 진행 중인 회의가 끝나는 시간
var endTime = 0
// 진행할 수 있는 최대 회의의 갯수
var cnt = 0


for meeting in meetings {
    if meeting.s >= endTime { //👉 다음 회의를 진행할 수 있다면?
        cnt += 1 // 회의 갯수 추가
        endTime = meeting.e // 추가한 회의의 종료시간으로 갱신
    }
}

print(cnt)

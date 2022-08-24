//
//  20220824.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/24.
//

//import Foundation
//
//extension Character {
//    // 해당 문자를 만들기 위해서 조작해야 하는 up 또는 down 버튼의 최소 조작횟수
//    var updown: Int {
//        let up = Int(self.asciiValue!) - Int(Character("A").asciiValue!)
//        let down = Int(Character("Z").asciiValue!) - Int(self.asciiValue!) + 1
//        return up < down ? up : down
//    }
//}
//
//func solution(_ name:String) -> Int {
//    // 모든 문자를 updown 조작 회수로 바꾼다
//    let updownArray = Array(name).map { $0.updown }
//
//    // 문자를 변경하는 조작 횟수 (모든 updown 횟수를 더한다.)
//    let totalUpdown = updownArray.reduce(0, +)
//
//    // 좌우 조작의 기본값은 그냥 첫 글자에서 마지막 A가 아닌 글자까지 일직선으로 (right 버튼만 사용해서) 이동하는 경우
//        // 만약에 name[0]을 제외한 모든 글자가 0이라면 값은 0이 된다.
//    var leftright = updownArray.lastIndex { $0 != 0 } ?? 0
//
//    //✅ 좌우조작을 할 때 돌아가는 케이스에 대한 예외 처리 (= 맨처음에서 좌로 이동해서 맨뒤로 가는 케이스)
//        // 어떤 두 글자 사이에 A가 많이 있으면 차라리 돌아가는게 낫다.
//            // left: 돌아가는 왼쪽 끝
//            // right: 돌아가는 오른쪽 끝
//    //⭐️ 반복문을 통해서 최적의 left 지점과 right 지점을 찾는 것!
//    for left in 0..<name.count {
//        var right = left + 1
//
//        // left를 통해 0 (= A)는 건너뛰면서 right를 찾는다.
//        while right < name.count && updownArray[right] == 0 {
//            right += 1
//        }
//
//        // left 지점부터 들렀다가 돌아가는 경우와 right 지점부터 들렀다가 돌아가는 경우의 이동 횟수를 구한다.
//        let leftFirst = left * 2 + (name.count - right)
//        let rightFirst = (name.count - right) * 2 + left
//
//        // 기존의 좌우 조작의 기본 값과 비교해서 최솟값을 찾는다.
//        leftright = min(leftright, leftFirst)
//        leftright = min(leftright, rightFirst)
//    }
//
//    return totalUpdown + leftright
//}

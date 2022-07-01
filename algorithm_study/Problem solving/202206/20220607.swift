//
//  20220607.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/07.
//

// 요세푸스 문제

/*
 # 써야할 자료구조 = queue
     : 원을 나타내는 자료구조는 없으므로 원을 일자로 펴서 표현해야 합니다.
     : 한 사람이 제거되면 제거된 사람이 첫 번째 사람이 되어서 k번째 사람을 제거합니다.
     : 따라서 앞에서 pop하고 뒤에 push하는 방식으로 k번째 사람을 구하므로 queue 자료형을 사용합니다.

 # 문제 풀이 아이디어
     : 1 ~ n의 queue를 만들어 원을 표현합니다.
     : k번째 사람을 제거하는 것을 queue에서 queue.push(queue.pop())을 k - 1번 수행하고 pop하는 것으로 구현

 # 의사코드
     1. 인풋을 받아서 1 ~ n의 queue를 만든다.
     2. while문을 사용해서 dq의 길이가 0 보다 큰 동안 실행합니다.
         2-1. queue에서 pop한 것을 다시 queue에 push하는 것을 k - 1번 실행합니다.
         2-2. 그리고 pop한 것을 빈 Array에 저장해둡니다.
     3. 배열을 양식에 맞게 순서대로 출력합니다.

 # 시간복잡도
     : while 반복문 내부의 코드를 총 n번 실행됩니다.
     : 그 내부에 있는 반복문은 k번 실행됩니다. (queue 연산은 O(1))
     : O(n**2)이 예상됩니다. n이 최대 5000이므로 시간 내에 해결이 가능합니다.
 */

//// 큐 구현
//struct Queue {
//    var data = [Int]()
//    var index = 0
//
//    var count: Int {
//        return data.count - index
//    }
//
//    mutating func push(_ n: Int) {
//        data.append(n)
//    }
//
//    mutating func pop() -> Int {
//        defer {
//            index += 1
//        }
//        return data[index]
//    }
//}
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], K = input[1]
//var queue = Queue()
//
//(1...N).forEach { i in
//    queue.push(i)
//}
//
//// 결과 저장 배열
//var result = [Int]()
//
//// K번째 제거 = (K - 1번 push&pop) + pop
//while queue.count != 0 {
//    for _ in 0..<(K - 1) {
//        queue.push(queue.pop())
//    }
//    result.append(queue.pop())
//}
//
//// [String]를 joined로 출력하기
//print("<" + result.map { String($0) }.joined(separator: ", ") + ">")


//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], K = input[1]
//
//// 원 Array 만들기
//var circle = [Int]()
//for i in 1...N {
//    circle.append(i)
//}
//
//// 결과 저장 배열
//var result = [Int]()
//
//// 제거 대상의 index
//var toRemove = K - 1
//
//// toRemove에 있는 element를 제거하고
//// 다음 toRemove를 구할 때 K - 1을 더하고 현재 원의 길이로 나누어 준다. (한바퀴 돌면 제자리)
//while true { //👉 O(n)
//    result.append(circle.remove(at: toRemove)) // 👉 O(n)
//    if circle.isEmpty { break }
//    toRemove = (toRemove + (K - 1)) % circle.count
//}
//
//print("<" + result.map { String($0) }.joined(separator: ", ") + ">")

// 풍선 터뜨리기

/*
 # 써야할 자료구조 = deque
     : 원 & 회전을 구현하기 위해서는 Deque를 시용하는 것이 좋다.
     : 왼쪽으로 가는 연산의 경우 popRight -> pushleft로 구현할 수 있습니다.

 # 문제 풀이 아이디어
     : 풍선의 번호들을 deque로 받습니다.
     : 풍선의 맨 처음 위치를 기억해야 하니까 enumerated를 활용해서 (원래 풍선 순서, 쪽지숫자)의 튜플로 받습니다.
     : popleft로 풍선 터뜨립니다. (일단 터뜨리고 나서 숫자를 센다고 했으므로)
     : 풍선 안에 있는 번호에 맞게 회전합니다.
     : dq의 길이가 0일 때까지 반복합니다.

 # 의사코드
     1. 인풋을 받습니다.
     2. while문으로 반복합니다.
         2-1. 일단 popleft해서 터뜨리고 풍선 위치는 배열에 저장합니다.
         2-2. 쪽지 숫자만큼 반복문 실행
             2-2-1. 양수의 경우 (n - 1)회 popLeft -> pushRight
             2-2-2. 음수의 경우 abs(n)회 popRight -> pushLeft
     3. joined을 활용해서 배열을 양식에 맞게 출력합니다.

 # 시간복잡도
     : while 반복문이 n번 반복됩니다.
     : 내부에서 풍선 위치 이동을 최대 n번 반복합니다. (dq 연산은 O(1))
     : O(n**2)이고 n이 1000이므로 시간 내에 풀이가 가능합니다.
 */

//struct Deque<T> {
//    var input = [T]()
//    var output = [T]()
//
//    var count: Int {
//        return input.count + output.count
//    }
//
//    mutating func pushLeft(_ n: T) {
//        output.append(n)
//    }
//
//    mutating func pushRight(_ n: T) {
//        input.append(n)
//    }
//
//    mutating func popLeft() -> T {
//        if output.isEmpty {
//            output = input.reversed()
//            input.removeAll()
//        }
//        return output.popLast()!
//    }
//
//    mutating func popRight() -> T {
//        if input.isEmpty {
//            input = output.reversed()
//            output.removeAll()
//        }
//        return input.popLast()!
//    }
//}
//
//// Balloon의 typealias 선언
//typealias Balloon = (index: Int, next: Int)
//
//// 입력 받기
//let N = Int(readLine()!)!
//var input = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//// 큐 선언
//var balloons = Deque<Balloon>()
//
//// enumerated를 활용해서 풍선의 원래 위치 + 쪽지에 적힌 값을 튜플로 저장
//for (index, next) in input.enumerated() {
//    balloons.pushRight((index: index + 1, next: next))
//}
//
//// 터진 풍선을 순서대로 담을 배열
//var result = [Int]()
//
//// 터진 풍선을 저장할 변수
//var balloon: Balloon
//
//// 풍선 터뜨리기
//while true {
//    balloon = balloons.popLeft() //👉 deque의 맨앞에 있는 풍선을 터뜨린다.
//    result.append(balloon.index) //👉 결과에 저장
//    if balloons.count == 0 { break } //👉 queue가 비었으면 break
//
//    //✅ 터뜨려야 할 풍선을 deque의 맨 앞으로 이동한다.
//    if balloon.next > 0 {
//        for _ in 0..<(balloon.next - 1) {
//            balloons.pushRight(balloons.popLeft())
//        }
//    } else {
//        for _ in 0..<abs(balloon.next) { //👉 터뜨릴 풍선을 deque의 맨앞까지 옮기기 위해서는 양수보다 1번 더 반복!
//            balloons.pushLeft(balloons.popRight())
//        }
//    }
//}
//
//// 결과 출력
//print(result.map { String($0) }.joined(separator: " "))

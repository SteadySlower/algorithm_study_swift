//
//  20220610.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/10.
//

//// 갯수 입력 받기
//let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = nums[0], M = nums[1]
//
//// Dictionary 활용
//var dict = [String : Int]()
//
//// 듣지 못한 사람 저장 -> O(1)
//for _ in 0..<N {
//    dict[readLine()!] = 0
//}
//
//// 보지 못한 사람 저장
//    // 듣지 못한 사람에 있는지 확인 -> O(1)
//    // 있다면 저장
//for _ in 0..<M {
//    let name = readLine()!
//    if dict[name] != nil {
//        dict[name] = 1
//    }
//}
//
//// 결과 추출
//    // value 확인 -> O(1)
//    // array에 append -> O(1)
//var result = [String]()
//for key in dict.keys {
//    if dict[key] == 1 {
//        result.append(key)
//    }
//}
//
//// 결과 출력
//print(result.count)
//result.sorted().forEach { name in //👉 배열 정렬 -> O(nlogn)
//    print(name)
//}

//// 갯수 입력 받기
//let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = nums[0], M = nums[1]
//
//// 집합 선언
//var s1 = Set<String>()
//var s2 = Set<String>()
//
//// 이름 입력 받아서 set에 저장
//for _ in 0..<N {
//    s1.insert(readLine()!)
//}
//
//for _ in 0..<M {
//    s2.insert(readLine()!)
//}
//
//// 교집합 구하기
//var result = s1.intersection(s2)
//
//// 정렬해서 출력
//print(result.count)
//for name in result.sorted() {
//    print(name)
//}

//var s1 = Set<String>()
//var s2 = Set<String>()
//
//// 합집합
//var union = s1.union(s2) //👉 새로운 변수에 할당
//s1.formUnion(s2) //👉 s1에 합집합 재할당
//
//// 교집합
//var intersection = s1.intersection(s2) //👉 새로운 변수에 할당
//s1.formIntersection(s2) //👉 s1에 교집합 재할당
//
//// 차집합
//var subtraction = s1.subtracting(s2)  //👉 새로운 변수에 할당
//s1.subtract(s2) //👉 s1에 차집합 재할당
//
//// 대칭차 (합집합 - 교집합)
//var symmetricDifference = s1.symmetricDifference(s2) //👉 새로운 변수에 할당
//s1.formSymmetricDifference(s2) //👉 s1에 대칭차 재할당

// 닫는 괄호가 나올 때마다 레이저인지 파이프인지 판단하면 된다.
    // 레이저인 경우 지금까지의 존재하는 파이프 갯수만큼 조각에 + n
    // 파이프인 경우 + 1

//// index로 접근해야하기 때문에 Array로 바꾼다.
//let input = readLine()!.map { $0 }
//
//// 파이프 갯수와 최종 조각의 갯수 저장
//var pipes = 0
//var result = 0
//
//for i in 0..<input.count {
//    //1. 레이저의 시작점
//    if input[i] == "(" && input[i + 1] == ")" { //🚫 "("로 끝나지 않으므로 index out of range를 걱정하지 않아도 된다.
//        continue // 레이저 시작에서는 할 일이 없음
//    //2. 파이프의 시작점
//    } else if input[i] == "(" && input[i + 1] != ")" {
//        pipes += 1 // 파이프 1개 추가
//    //3. 레이저의 끝점
//    } else if input[i] == ")" && input[i - 1] == "("  { //🚫 ")"로 시작하지 않으므로 index out of range를 걱정하지 않아도 된다.
//        result += pipes // 파이프 갯수만큼 조각이 생긴다.
//    //4. 파이프의 끝점
//    } else {
//        pipes -= 1 // 파이프 하나가 끝이므로 제거
//        result += 1 // 파이프 조각 1개 추가
//    }
//}
//
//print(result)

//let input = readLine()!.map { $0 }
//var stack = [Character]()
//var result = 0
//
//for i in 0..<input.count {
//    if input[i] == "(" { // 여는 괄호일 때 push
//        stack.append(input[i])
//    } else { // 닫는 괄호일 때
//        stack.removeLast() // pop하고
//        if input[i - 1] == "(" { // 레이저일 때 stack 길이 (= 현재 파이프 갯수) 만큼 +
//            result += stack.count
//        } else {
//            result += 1 // 파이프라면 꼭다리 + 1
//        }
//    }
//}
//
//print(result)

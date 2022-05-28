//
//  20220527.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/28.
//

////✅ 숫자 야구에 유효한 숫자인지 검증하는 extension (중복 숫자 없음 + 0 없음)
//extension Int {
//    func checkIfValid() -> Bool {
//        let array = String(self).map { Int(String($0))! }
//        let noZero = array.contains(0) ? false : true //👉 0이 없는지
//        let noOverlap = Set(array).count != array.count ? false : true //👉 겹치는 숫자가 없는지
//        return noZero && noOverlap //👉 두 개다 true일 때만 true를 반환
//    }
//}
//
////✅ a, b를 비교해서 strike, ball을 얻는 함수
//func getAns(a: Int, b: Int) -> (Int, Int) {
//    let aArray = String(a).map { Int(String($0))! }
//    let bArray = String(b).map { Int(String($0))! }
//    var strike = 0
//    var ball = 0
//    
//    for i in 0..<3 { //👉 자릿수를 모두 순회하면서
//        guard aArray.contains(bArray[i]) else { continue } //👉 b의 숫자가 a에 있는지 확인
//        if i == aArray.firstIndex(of: bArray[i]) { //👉 자릿수까지 같으면 strike
//            strike += 1
//        } else { //👉 자릿수는 다르면 ball
//            ball += 1
//        }
//    }
//    
//    return (strike, ball)
//}
//
////✅ 어떤 숫자 n이 민혁-영수의 물음-대답과 일치하는 지 확인하는 함수
//func checkIfResult(n: Int) -> Bool {
//    for i in 0..<N { //👉 모든 물음-대답을 순회하면서
//        let ans = getAns(a: n, b: questions[i])
//        if ans != ansArray[i] { //👉 하나라도 대답이 동일하지 않으면 false
//            return false
//        }
//    }
//    return true //👉 모두 동일하면 true
//}
//
////✅ 입력 받기
//let N = Int(readLine()!)!
//var questions = [Int]()
//var ansArray = [(Int, Int)]()
//
//for _ in 0..<N {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    questions.append(input[0])
//    ansArray.append((input[1], input[2]))
//}
//
////✅ 가능한 경우의 수를 넣어두는 배열
//var result = [Int]()
//
//// 가능한 모든 3자리 정수를 순회
//for n in 123...987 {
//    guard n.checkIfValid() == true else { continue } //👉 숫자야구에 유효한 숫자이고
//    if checkIfResult(n: n) { //👉 모든 물음 - 대답에 일치하면
//        result.append(n) //👉 경우의 수 배열에 넣음
//    }
//}
//
//print(result.count)

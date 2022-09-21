//func solution(_ s:String) -> [Int] {
//    // s를 변환해야 하므로 변수로 재선언
//    var s = s
//
//    // 0의 갯수와 이진변환의 횟수를 세는 변수
//    var tryCnt = 0
//    var zeroCnt = 0
//
//    // "1"이 될 때까지 반복
//    while s != "1" {
//        // 0의 갯수를 세고
//        let zero = s.filter{ $0 == "0" }.count
//        zeroCnt += zero
//
//        // 1의 갯수를 2진법으로 바꾸기
//        s = String(s.count - zero, radix: 2)
//        tryCnt += 1
//    }
//
//    return [tryCnt, zeroCnt]
//}
//print(String(100, radix: 2))
//print(solution("110010101001"))

//func solution(_ s:String) -> String {
//    // 결과를 저장할 문자열
//    var result = ""
//    // 해당 글자가 공백 이후 첫 글자인지
//    var isFirst = true
//
//    for c in s {
//        // 공백인 경우: 그냥 추가하되 isFirst를 true로
//        if c == " " {
//            result += String(c)
//            isFirst = true
//            continue
//        }
//
//        // 첫 글자인 경우
//        if isFirst {
//            // 문자인 경우: 대문자로 만들고 isFirst는 false로
//            if c.isLetter {
//                result += String(c.uppercased())
//                isFirst = false
//            // 문자가 아닌 경우 (= 숫자인 경우): 그냥 추가하고 isFirst는 false로
//            } else {
//                result += String(c)
//                isFirst = false
//            }
//        // 첫 글자가 아닌 경우: 문자만 나오므로 소문자로 바꾸어 추가
//        } else {
//            result += String(c.lowercased())
//        }
//    }
//
//    return result
//}
//
//print(solution("3people    unFollowed me"))
//
//  20221103.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/03.
//

/*
 fees
 [180, 5000, 10, 600]
 
 records
 ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"]
 */

//// "HH:MM"으로 되어 있는 시간을 Int형태로 바꾸어주는 함수
//func stringToTime(_ s: String) -> Int {
//    let arr = s.split(separator: ":").map { Int($0)! }
//    let h = arr[0], m = arr[1]
//    return h * 60 + m
//}
//
//// Record 구조체
//struct Records {
//    let time: Int
//    let number: Int
//    let isIn: Bool
//
//    init(_ s: String) {
//        let arr = s.split(separator: " ").map { String($0) }
//        self.time = stringToTime(arr[0])
//        self.number = Int(arr[1])!
//        self.isIn = arr[2] == "IN" ? true : false
//    }
//}
//
//func solution(_ fees:[Int], _ records:[String]) -> [Int] {
//    // 주차장에 머무른 시간으로 요금을 구하는 함수
//    func getFee(_ totalTime: Int) -> Int {
//        // 기본 시간보다 짧게 머무른 경우 기본요금만 리턴
//        let additionalTime = totalTime - baseTime
//        if additionalTime <= 0 { return baseFee }
//
//        // 추가시간이 몇 단위인지 구하기
//            //👉 Swift에서 Int의 나눗셈 연산은 무조건 내림을 하므로 올림을 하기 위해서는 나머지가 0이 아닌 경우에 1을 더한다.
//        let unit = additionalTime % unitTime == 0 ? additionalTime / unitTime : additionalTime / unitTime + 1
//
//        // 기본요금 + 단위 * 단위 요금
//        return baseFee + unit * unitFee
//    }
//
//    let baseTime = fees[0], baseFee = fees[1], unitTime = fees[2], unitFee = fees[3]
//    // 하루의 마지막날의 시간
//    let endOfDay = stringToTime("23:59")
//    let records = records.map { Records($0) }
//
//    // 자동차가 입차된 시간을 저장하는 Dict
//    var inTime = [Int:Int]()
//    // 자동차가 주차장에 머문 시간을 저장하는 Dict
//    var totalTime = [Int:Int]()
//
//    // 전체 기록을 순회하면서
//    for record in records {
//        // 입차한 경우 입차 시간을 기록
//        if record.isIn {
//            inTime[record.number] = record.time
//        // 출차인 경우 입차 기록을 통해서 머문 시간을 계산해서 totalTime에 더하고
//        } else {
//            totalTime[record.number, default: 0] += record.time - inTime[record.number]!
//            inTime[record.number] = nil //👉 출차했으므로 입차 시간은 nil로 하기
//        }
//    }
//
//    // 아직 입차시간이 존재하는 차들 (= 입차 후 출차 안한 차)
//        // 하루의 마지막 시간을 기준으로 머문 시간 계산
//    for number in inTime.keys {
//        totalTime[number, default: 0] += endOfDay - inTime[number]!
//    }
//
//    var ans = [Int]()
//
//    // 차번호 대로 정렬해서 요금 구해서 정답 배열에 넣기
//    for number in totalTime.keys.sorted(by: <) {
//        ans.append(getFee(totalTime[number]!))
//    }
//
//    return ans
//}

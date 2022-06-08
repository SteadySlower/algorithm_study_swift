//
//  20220608.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/08.
//

// 에디터

//import Foundation
//
//final class FileIO {
//    private let buffer: Data
//    private var index: Int = 0
//
//    init(fileHandle: FileHandle = FileHandle.standardInput) {
//        self.buffer = try! fileHandle.readToEnd()! // 인덱스 범위 넘어가는 것 방지
//    }
//
//    @inline(__always) private func read() -> UInt8 {
//        defer {
//            index += 1
//        }
//        guard index < buffer.count else { return 0 }
//
//        return buffer[index]
//    }
//
//    @inline(__always) func readInt() -> Int {
//        var sum = 0
//        var now = read()
//        var isPositive = true
//
//        while now == 10
//                || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
//        while now >= 48, now <= 57 {
//            sum = sum * 10 + Int(now-48)
//            now = read()
//        }
//
//        return sum * (isPositive ? 1:-1)
//    }
//
//
//    @inline(__always) func readString() -> String {
//            var str = ""
//            var now = read()
//
//            while now == 10
//                    || now == 32 { now = read() } // 공백과 줄바꿈 무시
//
//            while now != 10
//                    && now != 32 && now != 0 {
//                str += String(bytes: [now], encoding: .ascii)!
//                now = read()
//            }
//
//            return str
//        }
//  }
//
////let fileIO = FileIO()
//
//var left = readLine()!
//var right = ""
//let N = Int(readLine()!)!
//
//for _ in 0..<N {
//    let command = readLine()!
//    if command == "L" {
//        if !left.isEmpty {
//            right.append(left.popLast()!)
//        }
//    } else if command == "D" {
//        if !right.isEmpty {
//            left.append(right.popLast()!)
//        }
//    } else if command == "B" {
//        if !left.isEmpty {
//            left.removeLast()
//        }
//    } else {
//        left.append(command.last!)
//    }
//}
//
//print(left + right.reversed())

//// 에디터
//
//// 커서의 좌측, 우측에 있는 문자를 저장할 stack을 선언 (Array 활용)
//var left = readLine()!
//var right = ""
//
//let N = Int(readLine()!)!
//
//// 각 명령어마다 수행할 동작을 정의
////✅ 커서 왼쪽으로 이동
//func moveLeft() {
//    guard !left.isEmpty else { return } // 왼쪽에 더 이상 문자가 없으면 무시
//    right.append(left.popLast()!) // 오른쪽으로 문자 하나 이동
//    
//}
//
////✅ 커서 오른쪽으로 이동
//func moveRight() { //
//    guard !right.isEmpty else { return } // 오른쪽에 문자 없으면 무시
//    left.append(right.popLast()!) // 왼쪽으로 문자 하나 이동
//}
//
////✅ 삭제
//func delete() {
//    guard !left.isEmpty else { return } // 왼쪽에 문자 없으면 무시
//    _ = left.popLast()! // 왼쪽에서 문자 하나 제거
//}
//
////✅ 문자 입력
//func insert(_ s: Character) {
//    left.append(s) //👉 왼쪽에 문자 입력
//}
//
//// 명령어 받기
//for _ in 0..<N {
//    let command = readLine()!
//    switch command {
//    case "L":
//        moveLeft()
//        continue
//    case "D":
//        moveRight()
//        continue
//    case "B":
//        delete()
//        continue
//    default:
//        insert(command.last!)
//    }
//}
//
//// stack 두 개 합치기 (오른쪽 문자열은 거꾸로)
//print(left + right.reversed())

//// 빠른 A + B
//
//import Foundation
//
//
//final class FileIO {
//    private let buffer:[UInt8]
//    private var index: Int = 0
//
//    init(fileHandle: FileHandle = FileHandle.standardInput) {
//
//        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
//    }
//
//    @inline(__always) private func read() -> UInt8 {
//        defer { index += 1 }
//
//        return buffer[index]
//    }
//
//    @inline(__always) func readInt() -> Int {
//        var sum = 0
//        var now = read()
//        var isPositive = true
//
//        while now == 10
//                || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
//        while now >= 48, now <= 57 {
//            sum = sum * 10 + Int(now-48)
//            now = read()
//        }
//
//        return sum * (isPositive ? 1:-1)
//    }
//
//    @inline(__always) func readString() -> String {
//        var now = read()
//
//        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        let beginIndex = index-1
//
//        while now != 10,
//              now != 32,
//              now != 0 { now = read() }
//
//        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
//    }
//
//    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
//        var now = read()
//
//        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        let beginIndex = index-1
//
//        while now != 10,
//              now != 32,
//              now != 0 { now = read() }
//
//        return Array(buffer[beginIndex..<(index-1)])
//    }
//}
//
//let fileIO = FileIO()
//
//let T = fileIO.readInt()
//
//for _ in 0..<T {
//    let A = fileIO.readInt()
//    let B = fileIO.readInt()
//    print(A + B)
//}

//// 빠른 A + B
//
//import Foundation
//
//
//final class FileIO {
//    private let buffer:[UInt8]
//        // 입력을 byte의 배열로 바꾸어서 저장
//    private var index: Int = 0
//        // 현재 읽어야 할 byte의 위치를 저장
//
//    //❓ FileHandle 객체 = 파일 (소켓, 파이프)의 데이터에 접근할 수 있게 해준다.
//        // FileHandle 객체를 만든다는 것은 특정 file descriptor의 소유권을 가진다는 뜻이다.
//            // file descriptor: 리눅스 혹은 유닉스 운영체제에서 프로세스가 특정 파일에 접근할 때 사용하는 추상적인 값 (일종의 포인터) -> 운영체제에 의해서 관리된다.
//        // FileHandle.standardInput은 표준입력 (키보드 입력: file descriptor 0번)에 대한 인스턴스를 만든 것
//            // 이 코드는 command-line에서 실행되므로 표준입력이 키보드입력으로 정해져있다. (프로세스 마다 표준은 다름)
//            // 키보드 입력이 파일인 이유는 유닉스 계열의 운영체제에서 하드웨어를 파일로 추상화해서 사용하기 때문
//    init(fileHandle: FileHandle = FileHandle.standardInput) {
//        self.buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)]
//        // 현재 파일(= 커맨드 라인 입력)을 끝까지 한방에 읽어와서 buffer에 저장한다.
//        //⭐️ 마지막에 0을 추가해서 buffer의 끝 부분임을 알림
//    }
//
//    //❓ 인라인 함수
//        // 함수를 사용할 때는 호출 -> 실행의 두 가지 단계를 따르는데 (함수는 메모리에 다른 곳에 저장했다가 호출함)
//        // 실행이 아주 빠른 함수의 경우 호출에 걸리는 시간이 오히려 오래 걸릴 수 있다.
//        // 따라서 컴파일을 할 때 함수의 코드를 바로 호출할 자리에 삽입한다. (호출 필요 없이 바로 실행)
//    
//    //✅ 1 btye를 읽어오는 함수
//    @inline(__always) private func read() -> UInt8 {
//        defer { index += 1 } //👉 읽고 나서 index 추가
//
//        return buffer[index]
//    }
//    
//    //✅ 연속된 byte값 Int로 변환해서 읽어오는 함수
//    @inline(__always) func readInt() -> Int {
//        var sum = 0 //👉 결과를 저장할 곳
//        var now = read() //👉 지금 index의 byte 값
//        var isPositive = true //👉 부호를 저장할 곳
//
//        while now == 10
//                || now == 32 { now = read() } //👉 공백과 줄바꿈 무시 (다음 byte 읽기)
//        if now == 45 { isPositive.toggle(); now = read() } // "-"가 나오면 음수 처리
//        
//        //⭐️ 0 ~ 9에 해당하는 byte값일때만
//        while now >= 48, now <= 57 {
//            sum = sum * 10 + Int(now-48) //👉 현재까지의 합 * 10하고 다음 숫자 더하기 (자릿수 적용)
//            now = read() //👉 다음 byte 읽기
//        }
//
//        return sum * (isPositive ? 1:-1) //👉 부호까지 계산해서 반환하기
//    }
//
//    //✅ String으로 일어오는 함수
//    @inline(__always) func readString() -> String {
//        var now = read()
//
//        while now == 10 || now == 32 { now = read() } //👉 공백과 줄바꿈 무시 (다음 byte 읽기)
//        
//        //⭐️ 공백이나 줄바꿈이 아니라면 그 index를 기록 (문자열의 시작점)
//            // -1을 해주는 이유는 index 값은 앞으로 읽을 다음 byte를 가리키고 있으므로.
//        let beginIndex = index-1
//        
//        //⭐️ 공백(32) 혹은 줄바꿈(10) 혹은 파일의 끝(0)이 나오기 전까지 read
//        while now != 10,
//              now != 32,
//              now != 0 { now = read() }
//        
//        //⭐️ 공백(32) 혹은 줄바꿈(10) 혹은 파일의 끝(0)이 나와서 while문을 벗어나면
//            // 시작 index부터 문자열의 index까지 Array를 잘라서 String으로 타입 변환해서 리턴
//        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
//    }
//
//    //✅ 연속된 byte값 읽어오기
//    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
//        var now = read()
//
//        while now == 10 || now == 32 { now = read() }
//        let beginIndex = index-1
//
//        while now != 10,
//              now != 32,
//              now != 0 { now = read() }
//
//        return Array(buffer[beginIndex..<(index-1)])
//    }
//}
//
//let fileIO = FileIO()
//
//let T = fileIO.readInt()
//
//for _ in 0..<T {
//    let A = fileIO.readInt()
//    let B = fileIO.readInt()
//    print(A + B)
//}

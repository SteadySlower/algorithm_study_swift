//// 최소힙 구현
//import Foundation
//
//struct MinHeap<T: Comparable> {
//    var heap: [T] = []
//
//    var isEmpty: Bool {
//        return heap.count <= 1 ? true : false
//    }
//
//
//    init() {}
//
//    init(_ element: T) {
//        heap.append(element)
//        heap.append(element)
//    }
//
//    mutating func insert(_ element: T) {
//
//        if heap.isEmpty {
//            heap.append(element)
//            heap.append(element)
//            return
//        }
//
//        heap.append(element)
//
//        func isMoveUp(_ insertIndex: Int) -> Bool {
//            if insertIndex <= 1 {
//                return false
//            }
//
//            let parentIndex = insertIndex / 2
//            return heap[insertIndex] < heap[parentIndex] ? true : false
//        }
//
//        var insertIndex = heap.count - 1
//
//        while isMoveUp(insertIndex) {
//            let parentIndex = insertIndex / 2
//            heap.swapAt(insertIndex, parentIndex)
//            insertIndex = parentIndex
//        }
//    }
//
//
//    enum moveDownDirection { case left, right, none }
//
//
//    mutating func pop() -> T? {
//
//        if heap.count <= 1 {
//            return nil
//        }
//
//        let returnData = heap[1]
//        heap.swapAt(1, heap.count - 1)
//        heap.removeLast()
//
//        func moveDown(_ poppedIndex: Int) -> moveDownDirection {
//
//            let leftChildIndex = poppedIndex * 2
//            let rightChildIndex = leftChildIndex + 1
//
//            if leftChildIndex >= heap.count {
//                return .none
//            }
//
//            if rightChildIndex >= heap.count {
//                return heap[leftChildIndex] < heap[poppedIndex] ? .left : .none
//            }
//
//            if (heap[leftChildIndex] > heap[poppedIndex]) && (heap[rightChildIndex] > heap[poppedIndex]) {
//                return .none
//            }
//
//            if (heap[leftChildIndex] < heap[poppedIndex]) && (heap[rightChildIndex] < heap[poppedIndex]) {
//                return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
//            }
//
//            if (heap[leftChildIndex] < heap[poppedIndex]) || (heap[rightChildIndex] < heap[poppedIndex]) {
//                return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
//            }
//
//            return .none
//        }
//
//        var poppedIndex = 1
//        while true {
//            switch moveDown(poppedIndex) {
//            case .none:
//                return returnData
//            case .left:
//                let leftChildIndex = poppedIndex * 2
//                heap.swapAt(poppedIndex, leftChildIndex)
//                poppedIndex = leftChildIndex
//            case .right:
//                let rightChildIndex = (poppedIndex * 2) + 1
//                heap.swapAt(poppedIndex, rightChildIndex)
//                poppedIndex = rightChildIndex
//            }
//        }
//    }
//}
//
//// 오퍼레이션 타입 정의
//enum Operation {
//    case insert(value: Int)
//    case minPop
//    case maxPop
//}
//
//// 문자열을 Operation 인스턴스로 바꾸어주는 함수
//func parseOperation(_ string: String) -> Operation {
//    let array = string.split(separator: " ")
//    switch array[0] {
//    case "I": return .insert(value: Int(array[1])!)
//    case "D":
//        if array[1] == "1" { return .maxPop }
//        else { return .minPop }
//    default: fatalError()
//    }
//}
//
//func solution(_ operations:[String]) -> [Int] {
//    // 최댓값을 pop하는 방법
//    func popMax() -> Int? {
//        // 힙이 비었다면 nil을 리턴
//        guard !heap.isEmpty else { return nil }
//
//        // 전부 빼서 마지막만 return 하기
//        var temp = [Int]()
//        while !heap.isEmpty {
//            temp.append(heap.pop()!)
//        }
//        let max = temp.popLast()!
//        while !temp.isEmpty {
//            heap.insert(temp.popLast()!)
//        }
//        return max
//    }
//
//    // 문자열로 들어온 명령어 파싱
//    let parsed = operations.map { parseOperation($0) }
//
//    // 힙 선언
//    var heap = MinHeap<Int>()
//
//    // 명령어 실행
//    for oper in parsed {
//        switch oper {
//        case .insert(value: let value):
//            heap.insert(value)
//        case .minPop:
//            _ = heap.pop()
//        case .maxPop:
//            _ = popMax()
//        }
//    }
//
//    // 실행 마친 후 최소값과 최대값 구하기
//    let min = heap.pop() ?? 0
//    let max = popMax() ?? 0
//
//    return [max, min]
//}

//print(solution(["I 16", "I -5643", "D -1", "D 1", "D 1", "I 123", "D -1"]))
//print(solution(["I -45", "I 653", "D 1", "I -642", "I 45", "I 97", "D 1", "D -1", "I 333"]))

//// 최소힙 구현
//import Foundation
//
//struct MinHeap<T: Comparable> {
//    var heap: [T] = []
//
//    var isEmpty: Bool {
//        return heap.count <= 1 ? true : false
//    }
//
//
//    init() {}
//
//    init(_ element: T) {
//        heap.append(element)
//        heap.append(element)
//    }
//
//    mutating func insert(_ element: T) {
//
//        if heap.isEmpty {
//            heap.append(element)
//            heap.append(element)
//            return
//        }
//
//        heap.append(element)
//
//        func isMoveUp(_ insertIndex: Int) -> Bool {
//            if insertIndex <= 1 {
//                return false
//            }
//
//            let parentIndex = insertIndex / 2
//            return heap[insertIndex] < heap[parentIndex] ? true : false
//        }
//
//        var insertIndex = heap.count - 1
//
//        while isMoveUp(insertIndex) {
//            let parentIndex = insertIndex / 2
//            heap.swapAt(insertIndex, parentIndex)
//            insertIndex = parentIndex
//        }
//    }
//
//
//    enum moveDownDirection { case left, right, none }
//
//
//    mutating func pop() -> T? {
//
//        if heap.count <= 1 {
//            return nil
//        }
//
//        let returnData = heap[1]
//        heap.swapAt(1, heap.count - 1)
//        heap.removeLast()
//
//        func moveDown(_ poppedIndex: Int) -> moveDownDirection {
//
//            let leftChildIndex = poppedIndex * 2
//            let rightChildIndex = leftChildIndex + 1
//
//            if leftChildIndex >= heap.count {
//                return .none
//            }
//
//            if rightChildIndex >= heap.count {
//                return heap[leftChildIndex] < heap[poppedIndex] ? .left : .none
//            }
//
//            if (heap[leftChildIndex] > heap[poppedIndex]) && (heap[rightChildIndex] > heap[poppedIndex]) {
//                return .none
//            }
//
//            if (heap[leftChildIndex] < heap[poppedIndex]) && (heap[rightChildIndex] < heap[poppedIndex]) {
//                return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
//            }
//
//            if (heap[leftChildIndex] < heap[poppedIndex]) || (heap[rightChildIndex] < heap[poppedIndex]) {
//                return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
//            }
//
//            return .none
//        }
//
//        var poppedIndex = 1
//        while true {
//            switch moveDown(poppedIndex) {
//            case .none:
//                return returnData
//            case .left:
//                let leftChildIndex = poppedIndex * 2
//                heap.swapAt(poppedIndex, leftChildIndex)
//                poppedIndex = leftChildIndex
//            case .right:
//                let rightChildIndex = (poppedIndex * 2) + 1
//                heap.swapAt(poppedIndex, rightChildIndex)
//                poppedIndex = rightChildIndex
//            }
//        }
//    }
//}
//
//// 오퍼레이션 타입 정의
//enum Operation {
//    case insert(value: Int)
//    case minPop
//    case maxPop
//}
//
//// 현재 heap 타입 정의 (최소힙인지 최대힙인지)
//enum HeapMode {
//    case min, max
//}
//
//// 문자열을 Operation 인스턴스로 바꾸어주는 함수
//func parseOperation(_ string: String) -> Operation {
//    let array = string.split(separator: " ")
//    switch array[0] {
//    case "I": return .insert(value: Int(array[1])!)
//    case "D":
//        if array[1] == "1" { return .maxPop }
//        else { return .minPop }
//    default: fatalError()
//    }
//}
//
//func solution(_ operations:[String]) -> [Int] {
//    // 최댓값을 pop하는 방법
//    func popMax() -> Int? {
//        // 힙이 비었다면 nil을 리턴
//        guard !heap.isEmpty else { return nil }
//
//        // 현재 힙이 최대힙이라면 바로 pop한 값 리턴
//        if heapMode == .max {
//            return -heap.pop()! //👉 최대힙은 리턴할 때 부호 반대로!
//        // 현재 힙이 최소힙이라면 전부 꺼내서 부호 반대로 다시 push (최대힙으로 만들기)
//        } else {
//            var temp = [Int]()
//            while !heap.isEmpty {
//                temp.append(heap.pop()!)
//            }
//            while !temp.isEmpty {
//                heap.insert(-temp.popLast()!)
//            }
//            heapMode = .max //👉 힙 모드 바꾸기
//            return -heap.pop()!
//        }
//    }
//
//    // 최소값 리턴하기
//    func popMin() -> Int? {
//        // 마찬가지로 빈 heap이면 nil 리턴
//        guard !heap.isEmpty else { return nil }
//
//        // 최소힙인 경우 바로 리턴
//        if heapMode == .min {
//            return heap.pop()
//        // 최대힙인 경우 다 꺼내서 부호 반대로 다시 push (최소힙 만들기)
//        } else {
//            var temp = [Int]()
//            while !heap.isEmpty {
//                temp.append(heap.pop()!)
//            }
//            while !temp.isEmpty {
//                heap.insert(-temp.popLast()!)
//            }
//            heapMode = .min //👉 힙 모드 바꾸기
//            return heap.pop()
//        }
//    }
//
//    // 문자열로 들어온 명령어 파싱
//    let parsed = operations.map { parseOperation($0) }
//
//    // 힙 선언
//    var heap = MinHeap<Int>()
//    var heapMode: HeapMode = .min
//
//    // 명령어 실행
//    for oper in parsed {
//        switch oper {
//        case .insert(value: let value):
//            heap.insert(value)
//        case .minPop:
//            _ = popMin()
//        case .maxPop:
//            _ = popMax()
//        }
//    }
//
//    // 실행 마친 후 최소값과 최대값 구하기
//    let min = popMin() ?? 0
//    let max = popMax() ?? 0
//
//    return [max, min]
//}
//
////print(solution(["I 16", "I -5643", "D -1", "D 1", "D 1", "I 123", "D -1"]))
//print(solution(["I -45", "I 653", "D 1", "I -642", "I 45", "I 97", "D 1", "D -1", "I 333"]))
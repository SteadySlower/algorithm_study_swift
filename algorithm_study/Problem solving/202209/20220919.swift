//// 힙 구현
//
//// 최소힙 구현
//import Foundation
//
//struct MinHeap {
//    var heap: [[Int]] = []
//
//    var isEmpty: Bool {
//        return heap.count <= 1 ? true : false
//    }
//    
//    
//    init() {}
//
//    init(_ element: [Int]) {
//        heap.append(element)
//        heap.append(element)
//    }
//    
//    mutating func insert(_ element: [Int]) {
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
//            return heap[insertIndex][1] < heap[parentIndex][1] ? true : false
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
//    mutating func pop() -> [Int]? {
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
//                return heap[leftChildIndex][1] < heap[poppedIndex][1] ? .left : .none
//            }
//            
//            if (heap[leftChildIndex][1] > heap[poppedIndex][1]) && (heap[rightChildIndex][1] > heap[poppedIndex][1]) {
//                return .none
//            }
//            
//            if (heap[leftChildIndex][1] < heap[poppedIndex][1]) && (heap[rightChildIndex][1] < heap[poppedIndex][1]) {
//                return heap[leftChildIndex][1] < heap[rightChildIndex][1] ? .left : .right
//            }
//            
//            if (heap[leftChildIndex][1] < heap[poppedIndex][1]) || (heap[rightChildIndex][1] < heap[poppedIndex][1]) {
//                return heap[leftChildIndex][1] < heap[rightChildIndex][1] ? .left : .right
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
//// array의 sorting은 1번에 O(nlogn)
//// heap의 insert와 pop은 1번에 O(logn)
//
//func solution(_ jobs:[[Int]]) -> Int {
//   
//    // 작업을 시작 시간 역순으로 정렬 (마지막 element를 pop 해야지 O(1)이므로)
//    var sortedJobs = jobs.sorted { $0[0] > $1[0] }
//    // 현재 지난 시간
//    var time = 0
//    // 최소힙
//    var heap = MinHeap()
//    // 각 작업의 요청 ~ 끝 시간의 합
//    var cost = 0
//    
//    // 힙이 비어 있거나 (대기중인 작업 없음) or 정렬된 작업이 빈 경우 (요청할 작업 없음) 반복문 종료
//    while !(heap.isEmpty && sortedJobs.isEmpty) {
//        // 요청 대기 중인 작업 중에서 요청 시간이 현재 시간 이하인 작업들을 push
//        while !sortedJobs.isEmpty && sortedJobs.last![0] <= time {
//            heap.insert(sortedJobs.popLast()!)
//        }
//
//        // 만약에 힙이 비었다면 (대기 중인 작업이 없는 경우 = 아직 요청 시간이 안되서 요청할 작업이 요청이 안된 경우)
//        if heap.isEmpty {
//            // 가장 이른 요청 시간까지 시간을 맞춘다.
//            time = sortedJobs.last![0]
//            continue
//        }
//        
//        // 현재 작업
//        var now = heap.pop()!
//        
//        // 현재 작업에 걸리는 시간만큼 시간을 더하고
//        time += now[1]
//        // 요청 ~ 끝 시간을 cost에 더한다.
//        cost += time - now[0]
//        
//    }
//    
//    // 요청 ~ 끝의 평균값을 리턴한다.
//    return cost / jobs.count
//}

//print(solution([[1, 9], [0, 3], [2, 6]]))
//print(solution([[0, 3], [4, 9], [4, 6]]))
//print(solution([[24, 10], [28, 39], [43, 20], [37, 5], [47, 22], [20, 47], [15, 34], [15, 2], [35, 43], [26, 1]]))
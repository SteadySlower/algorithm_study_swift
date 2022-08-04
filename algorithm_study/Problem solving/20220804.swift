//
//  20220804.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/04.
//

//// 경로 찾기
//
//// 입력 받기
//let N = Int(readLine()!)!
//var matrix = [[String]]()
//for _ in 0..<N {
//    matrix.append(readLine()!.split(separator: " ").map { String($0) })
//}
//
//// 정답을 저장하는 배열
//var check = Array(repeating: Array(repeating: "0", count: N), count: N)
//
//// dfs를 위한 방문 배열
//var visited = Array(repeating: false, count: N)
//
//// dfs 구현
//    //⭐️ start를 parameter로 받아야 하는 이유는 check에 시작점을 기준으로 표시해야 하기 때문에
//func dfs(_ start: Int, _ now: Int) {
//    for i in 0..<N {
//        // 길이 있고 아직 방문 안했으면
//        if matrix[now][i] == "1" && !visited[i] {
//            check[start][i] = "1" //👉 정답 체크하고
//            visited[i] = true //👉 방문 체크
//            dfs(start, i)
//            //⭐️ visited[i] = false 안해줘도 되는 이유
//                // 어차피 모든 start에서부터 방문하는 접점을 찾을 것이므로
//                // 방문을 초기화해서 다른 start가 아닌 다른 접점에서 i를 방문할 수 있는지 여부를 알 필요가 없다.
//        }
//    }
//}
//
//// 모든 점에서 접점에서 dfs 실행
//for i in 0..<N {
//    dfs(i, i)
//    visited = Array(repeating: false, count: N) //👉 visited는 리셋해주기
//}
//
//// 정답 출력
//for line in check {
//    print(line.joined(separator: " "))
//}

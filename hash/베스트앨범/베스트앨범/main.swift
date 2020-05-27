/*
가장 많이 재생된 노래 2개 뽑을꺼
 노래엔 고유번호가 있음(배열 인덱스값)
 
 노래 수록 기준
 1. 장르
 2. 장르 내 노래 재생수
 3. 1,2번중 고유번호 낮은순
 gen - 장르
 plays - 재생횟수
정렬 중 중간에 다른값이 같을경우 땡땡땡 해라와 같은 조건이 있으면
 그냥 sort를 하면 안되고 따로 정렬 알고리즘을 직접 구현해야 하나?
 베스트 앨범에 들어갈 노래의 고유 번호를 순서대로 return 하도록 solution 함수를 완성하세요.
*/

import Foundation

class musicInfo {
    let playCount: Int
    let index: Int
    let genre: String
    
    init(playCount: Int, index: Int, genre: String) {
        self.playCount = playCount
        self.index = index
        self.genre = genre
    }
}

func getIndex(str: String, count: Int) -> Int {
    return abs(str.hashValue) % count
}

func sum(list: [musicInfo]) -> Int {
    return list.reduce(0) { (Result, musicInfo) -> Int in
        return Result + musicInfo.playCount
    }
}

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var result: [Int] = []
//    let count = Set(genres).count
    let count = 1004
    var album: [[musicInfo]] = Array(repeating: [musicInfo](), count: count)
    
    for i in 0 ..< genres.count {
        let index = getIndex(str: genres[i], count: count)
        album[index].append(musicInfo(playCount: plays[i], index: i, genre: genres[i]))
        album[index].sort(by: { a, b in
            if a.playCount != b.playCount {
                return a.playCount > b.playCount
            }
            return a.index < b.index
        })
    }
    album = album.filter{$0.count != 0}.sorted(by: {sum(list: $0) > sum(list: $1)})
    for list in album {
        for i in 0 ..< 2 {
            if list.count > i {
                result.append(list[i].index)
            } else {
                break
            }
        }
    }
    return result
}

let testInput = [["classic", "pop", "classic", "classic", "pop", "pop", "dance"]]
let testInput2 = [[500, 600, 150, 800, 2500, 2500, 10000]]
let testOutput = [[6, 4, 5, 3, 0]]

var great = 0
for i in 0 ..< 1000 {
    let go = solution(testInput[0], testInput2[0])
    if testOutput[0] == go {
        great += 1
        print("성공: \(great)")
    } else {
        print("땡: \(go)")
        break
    }
}



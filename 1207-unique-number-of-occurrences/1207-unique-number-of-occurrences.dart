class Solution {
  bool uniqueOccurrences(List<int> arr) {
    //// 빈 이중리스트 만들기
    // List<List<int>> list = [[],[]]
    // list[0]에는 요소, list[1]에는 해당 요소가 몇 개 있는지 넣기
    // arr를 for문으로 돌기
    // 요소 하나하나를 확인: 이미 list[0]에 있는 값이면 해당값 인덱스를 찾아 list[1][index] ++; , 없으면 list[0].add(a); list[1].add(1);

    List<List<int>> list = [[],[]];

    for(int a in arr){
        if (list[0].contains(a)){
            list[1][list[0].indexOf(a)] ++;
        } else {
            list[0].add(a);
            list[1].add(1);
        }
    }
    return list[1].length == list[1].toSet().length;
  }
}
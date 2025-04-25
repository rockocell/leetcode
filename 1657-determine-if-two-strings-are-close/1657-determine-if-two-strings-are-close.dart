class Solution {
  bool closeStrings(String word1, String word2) {
    // 길이가 같은지 확인

    // 각 문자가 몇 번씩 나오는지 세기 < 맵에 담기
    // 맵 키끼리 확인해서 문자 종류가 같은지 확인
    // 맵 밸류끼리 확인해서 빈도가 같은지 확인

    if(word1.length != word2.length){return false;}
    
    Map<String, int> map1 = {};
    Map<String, int> map2 = {};

    for(String w in word1.split('')){
        // map[w]가 null 이면 만들고, 밸류는 1 설정
        // map[w]가 null 이 아니면 밸류 ++;
        if (map1[w]!=null){
            map1[w] = map1[w]! + 1;
        } else {
            map1[w] = 1;
        }
    }
    for(String w in word2.split('')){
        if (map2[w]!=null){
            map2[w] = map2[w]! + 1;
        } else {
            map2[w] = 1;
        }
    }

    if(map1.keys.toSet().difference(map2.keys.toSet()).isNotEmpty) return false;
    // 밸류는 같은 값이 있을 수도 있으니 리스트로 , 오름차순 정렬해서 비교
    List<int> list1 = map1.values.toList()..sort();
    List<int> list2 = map2.values.toList()..sort();   

    return list1.join() == list2.join();    
  }
}
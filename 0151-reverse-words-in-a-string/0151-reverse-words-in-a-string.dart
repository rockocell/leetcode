class Solution {
  String reverseWords(String s) {
    // trim으로 앞뒤공백정리
    // split으로 각각의 단어들 list화
    // split에서 공백 제거
    // 거꾸로 정렬 List.from(myList.reversed)
    
    List<String> reversedSplit = List.from(s.trim().split(' ').where((n)=> n.isNotEmpty).toList().reversed);

    // join()으로 String타입으로 변환, 출력
    return reversedSplit.join(' ');
  }
}
class Solution {
  String removeStars(String s) {
    // s의 문자 하나하나를 확인 -> *이 아니면 리스트에 담기, *이면 리스트의 마지막 요소를 제거하기
    // 리스트를 스트링으로 만들어서 리턴

    List<String> list = [];

    for(int i = 0; i < s.length ; i++){
        if(s[i] != '*') {
            list.add(s[i]);
        } else {
            list.removeLast();
        }
    }
    return list.join();
  }
}
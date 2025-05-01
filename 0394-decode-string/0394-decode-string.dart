class Solution {
  String decodeString(String s) {
  List<int> countStack = [];
  List<String> stringStack = [];
  String currentString = '';
  int k = 0;

  for (int i = 0; i < s.length; i++) {
    if (s[i].contains(RegExp(r'[0-9]'))) {
      // 숫자 처리: k를 계산 (숫자가 여러 자리일 수 있음)
      k = k * 10 + int.parse(s[i]);
    } else if (s[i] == '[') {
      // '['일 때: 현재 k와 currentString을 스택에 저장
      countStack.add(k);
      stringStack.add(currentString);
      currentString = '';
      k = 0;
    } else if (s[i] == ']') {
      // ']'일 때: 스택에서 꺼내어 반복
      int repeatTimes = countStack.removeLast();
      String decodedString = stringStack.removeLast();
      currentString = decodedString + currentString * repeatTimes;
    } else {
      // 일반 문자일 때: currentString에 추가
      currentString += s[i];
    }
  }

  return currentString;
}
}
class Solution {
  String reverseVowels(String s) {
    //반복문으로 s의 각 문자를 확인 => 모음인 경우만 List<String> list 에 넣기
    //반복문으로 s의 모음마다 list의 값 뒤에서부터 가져와서 바꾸기 

    List<String> list = [];
    String result = '';
    int count = 0;

    for(int i = 0 ; i < s.length ; i++) {
        if (s[i]=='a' || s[i]=='e' || s[i]=='i' || s[i]=='o' || s[i]=='u' || s[i]=='A' || s[i]=='E' || s[i]=='I' || s[i]=='O' || s[i]=='U') {
            list.add(s[i]);
        }
    }
    for(int i = 0 ; i < s.length ; i++) {
        if (s[i]=='a' || s[i]=='e' || s[i]=='i' || s[i]=='o' || s[i]=='u' || s[i]=='A' || s[i]=='E' || s[i]=='I' || s[i]=='O' || s[i]=='U') {
            result = result + list[list.length-1-count];
            count++;
        } else {
            result += s[i];
        }
    }
    return result;
  }
}
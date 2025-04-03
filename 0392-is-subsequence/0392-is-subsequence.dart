class Solution {
  bool isSubsequence(String s, String t) {
    // s, t를 각각 리스트화
    // s[0]부터 리스트 t에 해당 문자가 포함되어 있는지 확인
    // tList에 s[0]이 포함되어 있으면 해당 인덱스까지의 리스트 요소를 삭제, 뒷부분만 남김
    // 인덱스 값을 늘려가며 반복문으로 계속 확인
    // 한 번이라도 tList에 s[i]가 없으면 false
    /*
    List<String> sList = s.split('');
    List<String> tList = t.split('');
    bool result = true;
    
    for(String s in sList) {
        if(tList.contains(s)) {
            tList = tList.sublist(tList.indexOf(s)+1);
        } else {
            result = false;
        }
    }
    return result;
    */

    int sIndex = 0;
    int tIndex = 0;
    bool result = false;

    if (s.isEmpty) result = true;
    else {
    for(tIndex ; tIndex < t.length ; tIndex++) {
        if(!s.isEmpty && s[sIndex] == t[tIndex]) {
            sIndex ++;
            if (sIndex == s.length) {
                result = true;
                break;
            } 
        } else continue;
    }
    }
    return result;
  }
}
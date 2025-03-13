class Solution {
  bool isAnagram(String s, String t) {
    List sList = s.split('');
    List tList = t.split('');
    if(sList.length == tList.length) {
        sList.sort();
        tList.sort();
        String sStr = sList.join();
        String tStr = tList.join();
        return sStr == tStr;
    } else {
        return false;
    }
  }
}
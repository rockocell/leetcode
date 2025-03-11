class Solution {
  String findTheDifference(String s, String t) {
    int sumS = s.runes.fold(0, (a,b) => a+b);
    int sumT = t.runes.fold(0, (a,b) => a+b);
    return String.fromCharCode(sumT-sumS);
    }
  }
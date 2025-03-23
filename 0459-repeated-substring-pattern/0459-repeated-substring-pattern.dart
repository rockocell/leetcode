class Solution {
  bool repeatedSubstringPattern(String s) {
    String r = (s+s).substring(1,s.length*2-1);
    if (r.contains(s)) {return true;} else {return false;}
  }
}

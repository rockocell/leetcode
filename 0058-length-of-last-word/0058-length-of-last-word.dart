class Solution {
  int lengthOfLastWord(String s) {
    int last = s.length - 1; // last index number
  int x = 0;
  String result = s;

  for (var i = last; i > -1; i--) {
    if (result.endsWith(' ') == false) {
      x++;
      result = s.substring(0, i);
      print(result);
    } else {
      if (x == 0) {
        result = s.substring(0, i);
        print(result);
      } else {
        break;
      }
    }
  }

  return x;
  }
}
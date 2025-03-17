class Solution {
  List<int> plusOne(List<int> digits) {
    int n = digits.length;

    for (int i = n-1; i > -1; i--) {
        if (digits[i] == 9) {
            digits[i] = 0;
            } else {
            digits[i]++;
            break;
        }
    }
    var check = digits.where((c)=> c==0);
    if(check.length == n) {
        digits.insert(0,1);
    }
    return digits;
  }
}
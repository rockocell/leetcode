class Solution {
  int singleNumber(List<int> nums) {
    // for in 반복문
    int result = 0;

    for(int m in nums) {
        int count = 0;
        for(int n in nums) {
            if(count < 2 && m == n) {
                count++;
            } else continue;
        }
        if (count == 1) result = m; 
    }
    return result;
  }
}
class Solution {
  void moveZeroes(List<int> nums) {
    int len = nums.length;
    for(int n = 0 ; n < len ; n ++) {
        for(int i = n; i < len ; i++) {
            if(i != 0 && nums[i]!=0) {
                if(nums[n]==0) {
                    nums[n]=nums[i];
                    nums[i]=0;
                    break;
                } else {}
            } else {}
        }
    }
  }
}
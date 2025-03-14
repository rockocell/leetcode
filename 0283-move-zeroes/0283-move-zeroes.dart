class Solution {
  void moveZeroes(List<int> nums) {
    for(int n = 0 ; n < nums.length ; n ++) {
        for(int i = n; i < nums.length ; i++) {
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
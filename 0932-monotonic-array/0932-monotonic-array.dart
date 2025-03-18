class Solution {
  bool isMonotonic(List<int> nums) {
    bool increase = true;
    bool decrease = true;

    for(int i =0; i<nums.length-1;i++) {
        if (nums[i]<=nums[i+1]) {
            increase = true;
            continue;
        } else {
            increase = false;
            break;
        }
    }
    for(int i=0;i<nums.length-1;i++){
        if (nums[i]>=nums[i+1]) {
            decrease = true;
            continue;
        } else {
            decrease = false;
            break;
        }
    }
    return increase || decrease;
  }
}
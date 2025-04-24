class Solution {
  int longestOnes(List<int> nums, int k) {
    // 투포인터 사용
    // 
    int left = 0;
    int right = 0;
    int countZero = 0;
    int maxLength = 0;

    // countZero가 k와 같아질때까지 right로 순회, nums[right]가 0일 때마다 countZero++;
    // countZero가 k보다 커지면 left를 오른쪽으로 이동
    // nums[left]가 0이면 k--;
    // right==nums.leght-1 까지 반복.

    // 만약 countZero<k인데 right==nums.length-1 이면 return nums.length;

    for(right; right<nums.length ; right++){
        if(nums[right]==0){
            countZero++;
        }

        while(countZero>k){
            if(nums[left]==0){
                countZero --;
            }
            left++;
        }
        if(right-left+1>maxLength){maxLength=right-left+1;}

    }
    return maxLength;
  }
}
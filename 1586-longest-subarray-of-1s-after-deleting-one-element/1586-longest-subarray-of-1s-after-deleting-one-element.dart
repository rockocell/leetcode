class Solution {
  int longestSubarray(List<int> nums) {
    int right = 0;
    int left = 0;
    int zeroCount = 0;
    
    // left를 ++ 해가기
    // nums[left]가 0일 때마다 zeroCount 를 하나 늘리기
    // zeroCount가 2가 되면 right가 0을 만날 때까지 right를 ++ 해가기
    // right를 0 다음의 인덱스까지 이동시키고 다시 zeroCount를 1로 맞춰주기
    // left가 nums.length-1이 될 때까지 반복
    // 매번 right와 left사이의 거리를 재서 maxLength와 비교, 저장

    int maxLength = 0;
    while(left<nums.length){
        if(zeroCount>1){
            if(nums[right]==0){
                right++;
                zeroCount--;
            } else{
                right++;
            }
        } else{
            if(nums[left]==0){
                zeroCount ++;
            }
            if(zeroCount<2 && left-right > maxLength){
                maxLength = left - right;
            }
            left++;
        }
    }
    return maxLength;
  }
}
class Solution {
  int pivotIndex(List<int> nums) {
    // 전체 합 구하기
    // 케이스 1의 경우 전체 합 28, 양 옆 11, 가운데 6
    // 케이스 3의 경우 전체 합 2, 가운데 2, 양 옆 0
    // (index n-1 까지의 합) = {(전체합) - (인덱스n번째값)}/2 인 경우 n 리턴
    // 0<n<nums.length-1
    // 인덱스 0과 인덱스 nums.length-1일 때는 따로 계산

    int result = -1;

    int total = 0;
    for(int num in nums) {
        total += num;
    }

    if (total - nums[0] == 0) return 0;

    for(int i = 1 ; i < nums.length-1 ; i ++){
        int left = 0;
        for (int j = 0; j < i ; j ++) {
            left += nums[j];
        }
        if (left == (total-nums[i])/2) {result = i; break;}
        else if (total - nums.last == 0) {result = nums.length-1;}
    }

    return result;
  }
}
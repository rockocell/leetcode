class Solution {
  int largestPerimeter(List<int> nums) {
    // nums를 크기순으로 정렬하기
    // nums[i], nums[i+1], nums[i+2] 가 삼각형 조건 만족하는지 확인 -> 0 <= i <= nums.length-3
    // nums[i] < nums[i+1]+nums[i+2] 만 만족하면 됨
    // 만족하면 바로 세 값의 합 리턴, 만족하지 않으면 다음 요소 확인, 끝까지 만족하는 요소 3가지 없으면 0 리턴

    nums = nums..sort((a, b) => b.compareTo(a));
    print(nums);
    int result = 0;

    for (int j = 0; j <= nums.length - 3; j++) {
      if (nums[j] < nums[j + 1] + nums[j + 2]) {
        result = nums[j] + nums[j + 1] + nums[j + 2];
        break;
      } else
        continue;
    }

    return result;
  }
}

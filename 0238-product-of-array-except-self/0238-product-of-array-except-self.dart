class Solution {
  List<int> productExceptSelf(List<int> nums) {
    // List<int> result = [];
    // for(int i = 0 ; i < nums.length ; i++){
    //     // nums[i]를 잠시 1로 취급하기
    //     // 전체 nums의 요소를 곱해서 결과 리스트에 넣기
    //     int origin = nums[i];
    //     nums[i] = 1;
    //     int product = 1;
    //     for(int j = 0; j < nums.length ; j ++){
    //         product = product*nums[j];
    //     }
    //     result.add(product);
    //     nums[i] = origin;
    // }
    // return result;


//     - **왼쪽 곱 계산**:
//     - 배열을 왼쪽에서 오른쪽으로 순회하면서, `nums[i]`를 제외한 `i` 위치 이전의 모든 요소들의 곱을 계산하여 `result`에 저장합니다. `leftProduct` 변수를 통해 왼쪽에서부터 누적 곱을 추적합니다.
// - **오른쪽 곱 계산**:
//     - 배열을 오른쪽에서 왼쪽으로 순회하며, `nums[i]`를 제외한 `i` 위치 이후의 모든 요소들의 곱을 `result`에 곱합니다. `rightProduct` 변수를 사용해 오른쪽에서부터 누적 곱을 계산합니다.

    List<int> result = [];

    int left = 1;
    for(int i = 0 ; i < nums.length ; i++){
        result.add(left);
        left *= nums[i];
    }
    int right = 1;
    for(int i = nums.length-1 ; i >= 0 ; i--){
        result[i] *= right;
        right *= nums[i];
    }
    
    return result;
  }
}
class Solution {
  double findMaxAverage(List<int> nums, int k) {
    // 소수점 길이 고정 toStringAsFixed() <괄호 내에 몇번째자리까지 할지 작성
    // 리스트길이, k 의 값에 따라 몇 번 반복해야하는지? => 리스트길이 - k + 1
    // 반복문으로 모든 경우의 수의 총합 구하기
    // 가장 큰 값만 평균 내고 반올림, 소수점길이 고정하여 반환

    int tempTotal = 0;
    int largest = 0;

    for(int i = 0 ; i < nums.length - k+1 ; i ++) {
        for(int j = i ; j < i + k ; j ++) {
            tempTotal += nums[j];
        }
        if(largest < tempTotal) {
            largest = tempTotal;
            tempTotal = 0;
        } else tempTotal = 0 ;
    }    
    return double.parse((largest/k).toStringAsFixed(5));
    }
}
class Solution {
  double average(List<int> salary) {
    // salary의 모든 값 더하기 -> sum
    // max, min 써서 가장 큰 값과 작은 값 빼주기
    // sum / salary.length-2

    int sum = salary.reduce((t,e) => t+e);
    return (sum - salary.reduce(max) - salary.reduce(min)) / (salary.length - 2);
  }
}
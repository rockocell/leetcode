class Solution {
  int arraySign(List<int> nums) {
    //any로 0 있는지 확인
    var checkZero = nums.any((n) => n == 0);
    if (checkZero == true) {
        return 0;
    } else {
        //where로 모든 음수 구하기
        //length로 음수 개수 구하기
        var oddLength = (nums.where((n) => n<0)).length;
        if(oddLength.isOdd==true) {
            return -1;
        } else {
            return 1;
        }
    }
  }
}
class Solution {
  int arraySign(List<int> nums) {
    //any로 0 있는지 확인
    if (nums.any((n) => n == 0) == true) {
        return 0;
    } else {
        //where로 모든 음수 구하기
        //length로 음수 개수 구하기
        if(((nums.where((n) => n<0)).length).isOdd==true) {
            return -1;
        } else {
            return 1;
        }
    }
  }
}
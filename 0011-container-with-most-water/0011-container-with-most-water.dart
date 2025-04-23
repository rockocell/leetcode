class Solution {
  int maxArea(List<int> height) {
    // 양쪽 끝에서 하나씩 접근하면서 확인 -> 두 개의 인덱스 변수
    // 왼쪽 끝에서 ++, 오른쪽 끝에서 --
    int left = 0;
    int right = height.length-1;
    int maxVol = 0;
    if(right == 1){
        return min(height[0],height[1])*1;
    }
    while(left < right){
        int currentVol = min(height[left], height[right]) * (right - left);
        if (currentVol > maxVol){maxVol = currentVol;}
        if (height[left] < height[right]){left ++;}
        else{right --;}
    }
    return maxVol;
  }
}
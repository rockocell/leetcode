class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    //index 0부터 확인
    //index-1 || index +1 이 존재하는지 확인
    //flowerbed[i]가 0 이면 flowerbed[i-1], [i+1] 확인 -- 둘 다 0이면 count ++;
    //flowerbed[i]를 1로 변경
    //count == n 될때까지 반복하고 true 반환, 반복이 끝났는데 count < n 이면 false

    int count = 0;
    bool result = false;

    for(int i = 0; i < flowerbed.length ; i ++) {
        if (i == 0 && flowerbed[i] == 0) {
            if (flowerbed.length > 1 && flowerbed[1] == 0) {
                count ++;
                flowerbed[0] = 1;
            } else if (flowerbed.length == 1) {
                if (n == 1){
                    result = true;
                    break;
                }
            }
        }
        else if (i == flowerbed.length-1 && flowerbed[i] == 0 && flowerbed[i-1] == 0) {
            count ++;
            flowerbed[i] = 1;
        }
        else if (flowerbed[i] == 0 && flowerbed[i-1] == 0 && flowerbed[i+1] == 0) {
            count ++;
            flowerbed[i] = 1;
        }
        if (count >= n) {
            result = true;
            break;
        }
    }
    
    return result;
  }
}
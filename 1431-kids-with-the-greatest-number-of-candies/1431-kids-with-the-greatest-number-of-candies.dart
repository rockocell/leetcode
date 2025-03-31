class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    // 가장 많은 사탕 개수 먼저 구하기
    // for문으로 전체 리스트 돌기
    // if (candies[i] < maxCandies) 기존 캔디에 extraCandies 더하기, maxCandies 보다 큰지 확인
    // else return true;

    int maxCandies = candies.reduce((a,b) => a > b ? a : b);
    List<bool> isMax = [];

    for(int candy in candies) {
        if (candy == maxCandies) isMax.add(true); 
        else if (candy < maxCandies && candy + extraCandies >= maxCandies) isMax.add(true);
        else isMax.add(false);
    }
    
    return isMax;
  }
}
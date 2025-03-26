class Solution {
  int maximumWealth(List<List<int>> accounts) {
    //for문으로 고객 전체 돌기 
    //for문 내부 for문으로 고객 하나의 재산 모두 더하기 -- 그 전 값과 비교, 더 큰 값 남기고 작은 건 버리기
    int richest = 0;
    int total = 0;

    for(int i = 0; i < accounts.length; i++){
        for(int j = 0 ; j < accounts[i].length ; j++) {
            total += accounts[i][j];
        }
        if (i==0){
            richest = total;
            total = 0;
        } else {
            if (total>richest) {
                richest = total;
                total = 0;
            } else {
                total = 0;
            }
        }
    }
    return richest;    
  }
}
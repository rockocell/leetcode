class Solution {
  bool lemonadeChange(List<int> bills) {
    //잔돈 리스트 change = [[5,0],[10,0],[20,0]]; //초기값
    //손님을 받을 때마다 잔돈 리스트에 받은 돈 추가
    //손님이 $5가 아닌 다른 지폐를 낼 때마다 잔돈 리스트에서 돈 거슬러 줄 수 있는지 확인
    //손님이 $10을 낸 경우 change[0][1] != 0 확인
    //손님이 $20을 낸 경우 change[0][1] >=3 || {change[0][1]!=0 && change[1][1]!=0} 확인

    List<List<int>> change = [[5,0],[10,0],[20,0]];
    bool result = true;

    for(int bill in bills) {
        if (bill == 5) {
            change[0][1] ++;
        } else if (bill == 10) {
            change[1][1] ++;
            if(change[0][1] > 0) {
                change[0][1] --;
            } else {result = false;}
        } else {
            change[2][1] ++;
            if(change[0][1] > 0 && change[1][1] > 0) {
                change[0][1] --;
                change[1][1] --;
            } else if(change[0][1] >= 3) {
                change[0][1] = change[0][1] - 3;
            }
            else {result = false;}
        }
    }
        return result;
    }
}

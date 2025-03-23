class Solution {
  bool judgeCircle(String moves) {
    bool result = false;
    //list.length !=isOdd 로 먼저 한 번 거르기
    //length가 홀수면 무조건 false;

    //먼저 U, D로 판단
    //U의 개수, D의 개수 세어 bool 값 반환
    //여기서 false가 나오면 뒤 과정 실행 X

    //L, R 판단
    //L, R 개수 세어 bool 값 반환
    //여기서 true면 결과도 true;

    /*
    if (list.length.isEven) {
        if (list.where((n) => n == 'U').length == list.where((n) => n == 'D').length) {
            if (list.where((n) => n == 'L').length == list.where((n) => n == 'R').length) {
                return true;
            } else {return false;}
        }   else {return false;}
    } else {
        return false;
    }
    */
    int ud = 0;
    int lr = 0;
    if (moves.length.isEven) {
        for (int i = 0; i<moves.length ; i++) {
        if (moves[i] == 'U') ud += 1;
        if (moves[i] == 'D') ud += -1;
        if (moves[i] == 'L') lr += 1;
        if (moves[i] == 'R') lr += -1;
    }
    if (ud == 0 && lr ==0) result = true;
    }

    return result;
  }
}
class Solution {
  bool judgeCircle(String moves) {
    //moves 길이가 홀수면 false
    //for 문으로 돌면서 값에 따라 int coX, int coY에 합산

    bool result = false;
    int coX = 0;
    int coY = 0;

    if (moves.length.isEven) {
      for (int i = 0; i < moves.length; i++) {
        switch (moves[i]) {
          case 'R':
            coX++;
            break;
          case 'L':
            coX--;
            break;
          case 'U':
            coY++;
            break;
          case 'D':
            coY--;
            break;
        }
      }
      if (coX == 0 && coY == 0) {
        result = true;
      }
    }
    return result;
  }
}

class Solution {
  // .filled 로 ['', '', ''] 생성
  // .generate 로 [['', '', ''],['', '', ''],['', '', '']] 생성 => 3x3 빈 배열 보드 생성
  List<List<String>> board = List.generate(3, (_) => List.filled(3,''));

  String tictactoe(List<List<int>> moves) {
    // moves 순회 하면서 보드 상태를 저장
    // var list = [["a", "b"], ["c", "d"]]
    for (int i=0; i<moves.length; i++) {
        int row = moves[i][0]; //List<int> 타입인 moves[i]를 가져와 0번째 자리의 값, 즉 row값을 저장
        int col = moves[i][1]; //List<int> 타입인 moves[i]를 가져와 1번째 자리의 값, 즉 col값을 저장
        print("row: $row col: $col");
        board[row][col] = (i % 2 == 0) ? "A" : "B"; //board[row][col]이 board의 몇 번째 값인지 확인 -- 짝수번째 값이면 "A", 홀수번째 값이면 "B"
    }
    
    //checkWin을 실행하여 true를 반환받으면 즉시 인자로 넣은 String을 반환
    if (checkWin("A")) return "A";
    if (checkWin("B")) return "B";

    //checkWin이 두 번 다 false인 경우 move.length로 Draw / Pending 판단, 반환
    return moves.length == 9 ? "Draw" : "Pending";
  }

  // 승리 조건 검사
  bool checkWin(String player) {
    // 가로, 세로에 같은 플레이어가 앉아 있는지
    // (0,0) (0,1) (0,2)
    // (1,0) (1,1) (1,2)
    // (2,0) (2,1) (2,2)
    for (int i=0; i<3; i++) {
        if ( (board[i][0] == player && board[i][1] == player && board[i][2] == player) ||
        (board[0][i] == player && board[1][i] == player && board[2][i] == player) ) {
            return true;
        }
    }
    // 대각선에 같은 플레이어가 앉아 있는지
    if ( (board[0][0] == player && board[1][1] == player && board[2][2] == player) || 
    ( board[0][2] == player && board[1][1] == player && board[2][0] == player ) ) {
        return true;
    }

    return false;
  }
  
}
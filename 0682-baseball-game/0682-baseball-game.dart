class Solution {
  int calPoints(List<String> operations) {
    ///for문, if문 사용
    ///for 로 operations.length-1만큼 돌면서 새로운 리스트에 규칙에 따라 추가
    ///int.tryParse로 숫자인지 기호인지 확인 -- 숫자면 기록, 기호면 규칙적용
    
    List<int> score = [];
    int result = 0;
    for(int i = 0 ; i<operations.length ; i++) {
        if (int.tryParse(operations[i]) != null) {
            //값이 숫자인 경우 int로 형변환해 score에 추가
            score.add(int.parse(operations[i]));
        } else {
            switch(operations[i]) {
                case 'C':
                    if (score.isNotEmpty) {
                    score.removeLast();
                    }
                    break;
                case 'D':
                    if (score.isNotEmpty) {
                    score.add(score.last*2);
                    }
                    break;
                case '+':
                    if (score.length>=2) {
                    score.add(score[score.length-2]+score.last);
                    }
                    break;
            }
        }
    }
    result = score.fold(0, (a,b) => a+b);
    return result;
  }
}
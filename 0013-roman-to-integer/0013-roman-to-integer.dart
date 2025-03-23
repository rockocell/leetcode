class Solution {
  int romanToInt(String s) {
    //String s를 리스트화
    //문자가 나타내는 수를 담은 리스트 생성
    //for 문으로 리스트의 모든 수 더해주기
    //list[i]의 값보다 list[i-1]의 값이 작은 경우 list[i]값을 더한 뒤 list[i-1]*2 빼기

    List<String> sList = s.split('');
    List<int> iList = [];
    int result = 0;
    
    for (int i = 0; i < sList.length; i++) {
        switch(sList[i]) {
            case 'I' :
            iList.add(1);
            break;
            case 'V' :
            iList.add(5);
            break;
            case 'X' :
            iList.add(10);
            break;
            case 'L' :
            iList.add(50);
            break;
            case 'C' :
            iList.add(100);
            break;
            case 'D' :
            iList.add(500);
            break;
            case 'M' :
            iList.add(1000);
            break;
        }
    }
    for (int i =0; i<iList.length; i++) {
        if (i != 0) {
            if (iList[i-1]<iList[i]) {
                result = result + iList[i] - iList[i-1]*2;
            } else {
                result += iList[i];
            }
        } else {
            result += iList[i];
        }
    }
    return result;
  }
}
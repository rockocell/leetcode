class Solution {
  int romanToInt(String s) {
    //s를 리스트화
    //for문 - 리스트 내의 요소를 각각 정수로 치환, 하나씩 최종값result에 더해줌
    //list[i-1]이 list[i]보다 작은 경우 -list[i-1]*2

    List list = s.split('');
    List<int> intList = [];

    for (var letter in list) {
        switch(letter) {
            case 'I':
            intList.add(1);
            break;
            case 'V':
            intList.add(5);
            break;
            case 'X':
            intList.add(10);
            break;
            case 'L':
            intList.add(50);
            break;
            case 'C':
            intList.add(100);
            break;
            case 'D':
            intList.add(500);
            break;
            case 'M':
            intList.add(1000);
            break;
        }
    }

    int result = intList[0];

    for (int i = 1; i < intList.length ; i++) {
        if (intList[i-1]<intList[i]) {
            result = result + intList[i] - intList[i-1]*2;
        } else {
            result += intList[i];
        }
    }

    return result;
  }
}
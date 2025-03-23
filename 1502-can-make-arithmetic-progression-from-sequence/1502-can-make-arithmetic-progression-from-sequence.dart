class Solution {
  bool canMakeArithmeticProgression(List<int> arr) {
    //arr 크기순서로 정렬
    //첫 두 요소를 비교하여 증가값 찾기
    //다른 모든 요소에 해당 증가값 적용, bool if문 사용
    //한 번이라도 불일치 시 false, 전부 통과 시 true 
    bool result = true;
    List list = arr..sort((a, b) {
    if(a < b) {
      return -1;
    }else{
      return 1;
    }
  });

    int diff = list[0]-list[1];
  for(int i = 1 ; i < list.length-1 ; i++) {
    if(list[i]-list[i+1] != diff) {
        result = false;
    } else {
        continue;
    }
  }
  return result;
  }
}
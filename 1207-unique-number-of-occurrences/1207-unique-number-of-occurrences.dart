class Solution {
  bool uniqueOccurrences(List<int> arr) {
    // arr을 set으로 만들어 저장
    // set 내부 요소를 for in 문으로 arr내부에 몇 개 있는지 확인
    // where로 구하고 length로 길이 확인, list 에 넣기
    // 위에서 구한 list를 set으로 바꾸기 => list와 set의 길이가 같으면 모든 요소의 개수가 고유한 것
    Set<int> arrSet = Set<int>.from(arr);
    bool result = false;
    List<int> list = [];

    for(int a in arrSet){
        list.add(arr.where((n)=> n == a).length);
    }

    Set<int> listSet = Set<int>.from(list); 
    if(list.length == listSet.length) result = true;

    return result;
  }
}
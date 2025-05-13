class Solution {
  List<int> asteroidCollision(List<int> asteroids) {
    // 빈 배열 만들기
    // 앞에서부터 하나씩 담기
    // 양수는 그냥 담기
    // 음수를 넣을 때는 충돌 규칙을 확인하기
    // 분기: a. 방향상 만나지 않음 b. 기존 요소가 파괴됨 c. 새 요소가 파괴됨
    // a 의 경우 기존 요소 유지, 새 요소 배열에 넣기. 케이스 종료
    // b 의 경우 다시 남아있는 기존 요소 중 마지막 것과 새 요소를 다시 비교.
    // c 의 경우 기존 요소 유지, 케이스 종료.
    // b 의 경우 기존 요소의 개수를 확인하며 진행해야 함.

    List<int> result =[];

    for(int a in asteroids){
        if(a >= 0){
            result.add(a);
        } else if(a < 0 && result.isEmpty) {
            result.add(a);
        } else {
            // 음수를 넣을 때
            if(result.last >= 0) {
                // 방향상 부딪히는 경우
                if(result.last > a*-1){
                } else if (result.last == a*-1){
                    result.removeAt(result.length-1);
                } else {
                    // c. 기존 마지막 요소가 파괴되고 새로운 음수가 추가되는 경우
                    result.removeAt(result.length-1);
                    result.add(a);
                    // 기존 마지막 요소 삭제, 새로운 음수 추가
                    // 새로운 음수 바로 앞에 있는 요소와 마지막의 음수를 비교 (바로 앞 요소가 0, 양수인 경우에만)
                    while(result.length>=2 && result[result.length-2] >= 0) {
                        if(result[result.length-2] > a*-1){
                            result.removeAt(result.length-1);
                            print(result);
                            break;
                        } else if(result[result.length-2] == a*-1) {
                            result.removeAt(result.length-1);
                            result.removeAt(result.length-1);
                            print(result);
                            break;
                        } else {
                            result.removeAt(result.length-2);
                            print(result);
                        }
                    } 
                }
            } else {
                result.add(a);
            }
        }
    }
    return result;
  }
}
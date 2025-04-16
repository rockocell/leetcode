class Solution {
  bool checkStraightLine(List<List<int>> coordinates) {
    // 먼저 coordinates[i][0]을 기준으로 오름차순 정렬
    // list.sort((a, b) => a[0].compareTo(b[0]))
    coordinates = coordinates..sort((a,b)=>a[0].compareTo(b[0]));
    
    // coordinates[i][0]과 coordinates[i+1][0] 비교
    // coordinates[i][1]과 coordinates[i+1][1] 비교
    // 규칙을 찾기
    double ratio = (coordinates[1][0]-coordinates[0][0])/(coordinates[1][1]-coordinates[0][1]);

    for (int i = 0 ; i < coordinates.length-1 ; i++){
        if((coordinates[i+1][0]-coordinates[i][0])/(coordinates[i+1][1]-coordinates[i][1]) == ratio) continue;
        else return false;
    }
    return true;
  }
}
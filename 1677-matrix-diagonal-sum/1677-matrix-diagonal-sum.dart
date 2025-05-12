class Solution {
  int diagonalSum(List<List<int>> mat) {
    // mat[0]에서는 0, last
    // mat[1]에서는 1, last-1
    // ...
    // mat.length/2 의 몫만큼 양쪽이 반복, mat.length.isOdd==true인경우 가운데 행 하나 있음

    // mat.length가 홀수인 경우
    // for 문으로 돌기
    // mat[0][0]+mat[0][last]
    // mat[1][1]+mat[a][last-1]
    
    int result = 0;

    if(mat.length.isOdd){
        for(int i = 0; i < mat.length; i++){
            if(i != (mat.length-1-i)) {
                result += mat[i][i] + mat[i][(mat.length-1-i)];
            } else {
                // mat.length가 홀수인 경우 가운데 변에서는 숫자 하나만 더함
                result += mat[i][i];
            }
        }
    } else {
        for(int i = 0; i < mat.length; i++){
            result += mat[i][i] + mat[i][(mat.length-1-i)];
        }
    }
    return result;
  }
}
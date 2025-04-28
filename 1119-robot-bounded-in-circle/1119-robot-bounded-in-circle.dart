class Solution {
  bool isRobotBounded(String instructions) {
    // 최종 각도가 0도, 360도 ... 일때 => 반복할때마다 제자리에 있으면 true 
    // 최종 각도가 90도, 180도, 270도, ... 일 때 => 항상 true

    int angle = 0;
    int x = 0;
    int y = 0;

    for(String i in instructions.split('')){
        if(i == 'L'){
            angle --;
        }
        if(i == 'R'){
            angle ++;
        }
        if(i == 'G'){
            if ((angle.abs())%4 == 0) {x++;}
            if ((angle.abs())%4 == 1) {y--;}
            if ((angle.abs())%4 == 2) {x--;}
            if ((angle.abs())%4 == 3) {y++;}
        }
    }
   
    if((angle.abs())%4 != 0){return true;}
    else if(x==0 && y==0){
    return true;
    }
    return false;
    }
}
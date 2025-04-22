class Solution {
  int compress(List<String> chars) {
    // 반복문으로 리스트 각 요소를 순회
    
    // 처음 요소를 currentChar로 저장
    // chars[i]==currentChar 인 경우 count++
    // 바로 리스트에 덮어쓰기로 작성 < int write 변수 관리, char[write]에 char[i] 넣고 write++
    // count > 1 이상인 경우
    // for(var countString in count.toString().split('')){
    //    char[write] = countString;
    //    write++;
    // }

    // 앞에서부터 덮어쓰지만 write가 순회 인덱스를 따라잡을 일은 없으니 그냥 쭉 진행하면 될듯
    int index = 0;
    int write = 0;
    while(index < chars.length){
        String currentString = chars[index];
        int count = 0;
        while(index<chars.length && chars[index] == currentString){
            count++;
            index++;
        }
        chars[write] = currentString;
        write++;
        if(count>1){
            for(var countString in count.toString().split('')){
                chars[write] = countString;
                write++;
            }
        }
    }
    chars.removeRange(write,chars.length);
    return write;
    }
}
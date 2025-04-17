class Solution {
  List<int> countBits(int n) {
    // 2진수 변환: toRadixString(2)
    String number = '0';
    List<int> result = [];
    for(int i = 0; i<=n ; i++){
        number = i.toRadixString(2);
        List<String> list = number.split('');
        int count =0;
        for(String l in list){
            if(l=='1'){
                count ++;
            }
        }
        result.add(count);
    }
    
    return result;
  }
}
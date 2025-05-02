class Solution {
  String gcdOfStrings(String str1, String str2) {
    // 문자열이 공약수가 있으려면: 두 문자열은 같은 문자들만을 가지고 있어야 함, 짧은 쪽의 문자열이 긴 쪽의 문자열에 속해 있어야 함.
    // 1. 짧은 쪽의 문자열이 긴 쪽의 문자열에 contains 되어 있는지 확인
    // 2. 아니라면 빈 문자열 리턴, 맞다면 짧은 쪽이 긴 쪽의 약수인지 확인
    // 3. 맞다면 짧은 쪽 문자열 리턴, 아니라면 짧은 쪽 문자열의 가장 긴 약수 리턴

    // + 두 문자열의 길이가 같다면, 공약수가 있으려면 두 문자열이 동일해야 함=> 문자열 자체 리턴

    String short = '';
    String long = '';

    if (str1.length == str2.length) {
      if (str1 == str2) {
        return str1;
      } else {
        return '';
      }
    } else if (str1.length < str2.length) {
      short = str1;
      long = str2;
    } else if (str1.length > str2.length) {
      short = str2;
      long = str1;
    }

    if (long.contains(short)) {
      if (short * (long.length ~/ short.length) == long) {
        return short;
      } else {
        // short의 가장 긴 약수 리턴
        for (int i = short.length; i >= 1; i--) {
          if (short.length % i == 0) {
            String part = short.substring(0, i);
            if (part * (short.length ~/ part.length) == short &&
                part * (long.length ~/ part.length) == long) {
              return part;
            }
          }
        }
      }
    } else {
      return '';
    }
    return '';
  }
}

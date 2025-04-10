class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    // nums1, nums2 내부의 값부터 처리 < 중복되는 요소 삭제
    // nums1의 모든 요소-> contains로 nums2에도 있는지 확인, 없는 것 answer[0] 에 넣기
    // nums2 요소 중 answer[0]에 없는 것 answer[1]에 넣기
    Set<int> set1 = Set<int>.from(nums1);
    Set<int> set2 = Set<int>.from(nums2);

    List<List<int>> answer = [[],[]];

    for(int s in set1) {
        if(!set2.contains(s)) {
            answer[0].add(s);
        } else continue;
    }
    for(int s in set2) {
        if(!set1.contains(s)) {
            answer[1].add(s);
        } else continue;
    }
    return answer;
  }
}
class Solution {
    public int removeElement(int[] nums, int val) {
        int left = 0;                 // pointer from start
        int right = nums.length - 1;  // pointer from end

        while (left <= right) {
            if (nums[left] == val) {
                // Swap current element with the last element
                nums[left] = nums[right];
                right--; // shrink the end
            } else {
                left++; // move ahead if current is not val
            }
        }
        
        // left now is the count of non-val elements
        return left;
    }
}

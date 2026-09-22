class Solution {
    public boolean isPalindrome(int x) {
        // Negative numbers and numbers ending in 0 (but not 0) can't be palindromes
        if (x < 0 || (x % 10 == 0 && x != 0)) {
            return false;
        }

        int original = x;
        int rev = 0;

        while (x != 0) {
            int dig = x % 10;
            x = x / 10;
            rev = rev * 10 + dig;
        }

        return original == rev;
    }
}

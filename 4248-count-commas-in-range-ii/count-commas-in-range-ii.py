class Solution:
    def countCommas(self, n: int) -> int:
        if n<1000:
            return 0
        elif n>= 1000 and n< 10**6:
            return n-1000+1
        elif n>= 10**6 and n< 10**9:
            return (n-(10**6))*2+2+ 999000
        elif n>=10**9 and n< 10**12:
            return (n-(10**9))*3+3+ 999000+999000000*2
        elif n>= 10**12 and n< 10**15:
            return (n-(10**12))*4+4+999000+999000000*2+ 999000000000*3
        return 5+999000+999000000*2+ 999000000000*3+ 999000000000000*4


        
        
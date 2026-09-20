class Solution:
    def reverseDegree(self, s: str) -> int:
        sum=0
        values=[26-(ord(char)-ord('a'))for char in s]
        for i in range(1,len(values)+1):
            sum+= i* values[i-1]

        return sum      
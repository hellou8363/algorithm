class Solution {
    fun solution(n: Int): String {
        var result = ""
        
        for (num in 1..n) {
            if (num % 2 == 0) result += "박" else result += "수"
        }
        
        return result
    }
}
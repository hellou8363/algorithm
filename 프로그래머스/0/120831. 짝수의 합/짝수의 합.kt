class Solution {
    fun solution(n: Int): Int {
        var sum = 0
        
        for(i in 0..n step 2) {
            sum += i
        }
        
        return sum
    }
}
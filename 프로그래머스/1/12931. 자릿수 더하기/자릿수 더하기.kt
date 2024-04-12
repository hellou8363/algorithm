class Solution {
    fun solution(n: Int): Int {
        var sum = 0
        
        for(i in n.toString()) {
            sum += i.toString().toInt()
        }
        
        return sum
    }
}
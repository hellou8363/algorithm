class Solution {
    fun solution(x: Int, n: Int): LongArray {
    
        val list = LongArray(n)
        
        for (i in 1..n) {
            list[i - 1] = (i * x.toLong())
        }
        
        return list
    }
}
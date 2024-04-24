import kotlin.math.max
import kotlin.math.min

class Solution {
    fun solution(a: Int, b: Int): Long {
        val min = min(a, b)
        val max = max(a, b)
        
        return (min..max).sum().toLong()
    }
}
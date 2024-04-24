import kotlin.math.max
import kotlin.math.min

class Solution {
    fun solution(a: Int, b: Int): Long {
        val min = min(a, b).toLong()
        val max = max(a, b).toLong()
        
        return (min..max).sum().toLong()
    }
}
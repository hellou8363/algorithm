import kotlin.math.pow
import kotlin.math.sqrt

class Solution {
    fun solution(n: Long): Long {
        
    val result = sqrt(n.toDouble()).toInt().toDouble()
    
    if(result.pow(2) == n.toDouble()) return (result + 1).pow(2).toLong() else return -1
    }
}
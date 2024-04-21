class Solution {
    fun solution(n: Long): Long {
        return n.toString().toList().sorted().reversed().joinToString(separator = "").toLong()
    }
}
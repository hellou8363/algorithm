class Solution {
    fun solution(s: String): String {
        return s.toList().sorted().reversed().joinToString("")
    }
}
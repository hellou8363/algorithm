class Solution {
    fun solution(s: String): String {
        val half = s.length / 2
        if (s.length % 2 == 0) return s.substring(half - 1..half) else return s[half].toString()
    }
}
class Solution {
    fun solution(s: String): Boolean {
        if (s.length == 4 || s.length == 6) {
            val length = s.filter { '0'.rangeTo('9').contains(it) }.length
        
            if (length == s.length) {
                return true
            }   
        }
        
        return false
    }
}
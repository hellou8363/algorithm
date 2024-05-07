class Solution {
    fun solution(s: String): String {
        var index = 0
        var result = ""
        
        for (c in s) {
            if (c == ' ') {
                result += c
                index = 0
                continue
            }

            if (index % 2 == 0) {
                result += c.uppercase()
            } else {
                result += c.lowercase()
            }

            index++
        }
        
        return result
    }
}
class Solution {
    fun solution(t: String, p: String): Int {
        var count = 0

        for (i in 0 until t.length - p.length + 1) {
            val substr = t.substring(i, i + p.length)

            if (substr.toLong() <= p.toLong()) {
                count++
            }
        }
        
        return count
    }
}
class Solution {
    fun solution(k: Int, m: Int, score: IntArray): Int {
        val scoreList = score.sortedDescending()
        var totalScore = 0
        val range = scoreList.indices
        val max = range.maxOrNull()!!
        
        for (i in range step m) {
            if (i + (m - 1) <= max) {
                totalScore += scoreList[i + (m - 1)] * m
            }
        }
        
        return totalScore
    }
}
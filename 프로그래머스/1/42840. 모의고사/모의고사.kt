class Solution {
    fun solution(answers: IntArray): IntArray {
        val person1 = arrayOf(1, 2, 3, 4, 5)
        val person2 = arrayOf(2, 1, 2, 3, 2, 4, 2, 5)
        val person3 = arrayOf(3, 3, 1, 1, 2, 2, 4, 4, 5, 5)
        
        val scoreList = intArrayOf(0, 0, 0)
        
        for (i in answers.indices) {
            if (answers[i] == person1[i % person1.size]) {
                scoreList[0]++
            }
            
            if (answers[i] == person2[i % person2.size]) {
                scoreList[1]++
            }
            
            if (answers[i] == person3[i % person3.size]) {
                scoreList[2]++
            }
        }
        
        val max = scoreList.maxOrNull()
        val result = mutableListOf<Int>()
        
        for (i in scoreList.indices) {
            if (scoreList[i] == max) {
                result.add(i + 1)
            }
        }

        return result.toIntArray()
    }
}
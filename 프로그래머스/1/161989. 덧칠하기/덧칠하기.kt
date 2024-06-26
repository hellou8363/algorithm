class Solution {
    fun solution(n: Int, m: Int, section: IntArray): Int {
        var count = 0
        var temp = 0 // 0, 6, 6, 10

        for (i in 0 until section.size) {
            if (section[i] < temp) { // 2 < 0, 3 < 6, 6 < 6
                continue
            }
            
            temp = section[i] + m 
            count++
        }
        
        return count
    }
}
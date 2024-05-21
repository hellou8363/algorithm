class Solution {
    fun solution(s: String): IntArray {
        val result = mutableListOf<Int>()
        result.add(-1)
        
        for(i in s.indices) {
            for(j in i-1 downTo 0) {
                if(s.get(i) == s.get(j)) {
                    result.add(i-j)
                    break
                }

                if(j == 0 && s.get(i) != s.get(j)) {
                    result.add(-1)
                }
            }
        }
        
        return result.toIntArray()
    }
}
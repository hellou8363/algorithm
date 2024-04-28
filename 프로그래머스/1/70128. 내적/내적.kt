class Solution {
    fun solution(a: IntArray, b: IntArray): Int {
        val resultArray = IntArray(a.size)
        
        a.forEachIndexed { index, n -> resultArray[index] = n * b[index] }
    
        return resultArray.sum()
    }
}
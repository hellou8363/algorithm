class Solution {
    fun solution(arr: IntArray, divisor: Int): IntArray {
        val result = arr.filter { it % divisor == 0 }.sorted().toIntArray()
        if (result.size == 0) return intArrayOf(-1) else return result
    }
}
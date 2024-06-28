class Solution {
    fun solution(lottos: IntArray, win_nums: IntArray): IntArray {
        val ranks = arrayListOf<Int>(0, 6, 5, 4, 3, 2, 1)
        val total = lottos.toList().filter { win_nums.contains(it) || it == 0 }
        val nonZero = total.filter { it != 0 }.size

        return intArrayOf(
            if (total.size == 0) 6 else ranks.lastIndexOf(total.size), 
            if (nonZero == 0) 6 else ranks.lastIndexOf(nonZero))
    }
}
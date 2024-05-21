class Solution {
    fun solution(numbers: IntArray): IntArray {
        val set = mutableSetOf<Int>()

        numbers.forEachIndexed { outIndex, i ->
            numbers.forEachIndexed { inIndex, j ->
                if (outIndex != inIndex) {
                    set.add(i + j)
                }
            }
        }
        
        return set.sorted().toIntArray()
    }
}
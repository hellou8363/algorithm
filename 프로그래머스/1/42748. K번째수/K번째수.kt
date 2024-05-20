class Solution {
    fun solution(array: IntArray, commands: Array<IntArray>): IntArray {
        val result = mutableListOf<Int>()
        
        for (arr in commands) {
            val number = array.sliceArray(IntRange(arr[0] - 1, arr[1] - 1)).sortedArray()[arr[2] - 1]
            result.add(number)
        }
        
        return result.toIntArray()
    }
}
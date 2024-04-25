class Solution {
    fun solution(arr: IntArray): IntArray {
        if (arr.size == 1)  {
            return arrayOf(-1).toIntArray()
        } else {
            var min = arr[0]

            for (number in arr) {
                if (number < min) min = number
            }

            return arr.filterNot { min == it }.toIntArray()
        }
    }
}
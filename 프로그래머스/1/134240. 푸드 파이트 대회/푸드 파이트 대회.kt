class Solution {
    fun solution(food: IntArray): String {
        var result = ""

        for (i in 1 until food.size) {
            result += "${i}".repeat(food[i] / 2)
        }

        return result + "0" + result.reversed()
    }
}
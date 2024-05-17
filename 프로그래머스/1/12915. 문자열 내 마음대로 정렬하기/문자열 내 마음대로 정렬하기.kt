class Solution {
    fun solution(strings: Array<String>, n: Int): Array<String> {
        return strings.toList().sortedBy { it }.sortedBy { it[n] }.toTypedArray()
    }
}
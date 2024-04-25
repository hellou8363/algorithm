class Solution {
    fun solution(absolutes: IntArray, signs: BooleanArray): Int {
        return signs.mapIndexed { index, b ->  if (b == true) absolutes[index] else -absolutes[index]}.sum().toInt()
    }
}
class Solution {
    fun solution(x: Int): Boolean {
     if(x % x.toString().toList().map{ Character.getNumericValue(it) }.sum() == 0) return true else return false
    }
}
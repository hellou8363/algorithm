class Solution {
    fun solution(nums: IntArray): Int {
        val noPrimes = BooleanArray(2998)
        
        for (i in 2..54) {
            if (!noPrimes[i]) {
                for (j in 2..2997/i) {
                    noPrimes[i * j] = true
                }
            }
        }
    
        var count = 0
        val size = nums.size
        
        for (first in 0..size - 3) {
            for (second in (first + 1)..size - 2) {
                for (third in (second + 1)..size - 1) {
                    if (!(noPrimes[nums[first] + nums[second] + nums[third]])) {
                        count++
                    }
                }                
            }
        }
        
        return count
    }
}
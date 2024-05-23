class Solution {
    fun solution(a: Int, b: Int, n: Int): Int {
        var emptyBottle = n
        var sum = 0
        var temp = 0
        
        while(emptyBottle >= a) {
            temp = (emptyBottle / a * b) 
            sum += temp
            emptyBottle = temp + (emptyBottle % a)
        }
        
        return sum
    }
}
class Solution {
    fun solution(left: Int, right: Int): Int {
        val itemList = arrayListOf<Int>()
        var count = 0
        
        for (num1 in left..right) {
            for (num2 in 1..num1) {
                if (num1 % num2 == 0) {
                    count++
                }
            }
            
            if (count % 2 == 0) {
                itemList.add(num1)                
            } else {
                itemList.add(num1 * (-1))
            }
            
            count = 0
        }
        
        return itemList.sum()       
    }
}
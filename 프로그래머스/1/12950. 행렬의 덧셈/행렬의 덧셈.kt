class Solution {
    fun solution(arr1: Array<IntArray>, arr2: Array<IntArray>): Array<IntArray> {
        val result = Array(arr1.size) { IntArray(arr1[0].size) }
        
        arr1.forEachIndexed { index1, ints -> 
            val tempArray = IntArray(ints.size)
            
            ints.forEachIndexed { index2, it ->
                tempArray[index2] = it + arr2[index1][index2]
            }
            
            result[index1] = tempArray
        }
        
        return result
    }
}
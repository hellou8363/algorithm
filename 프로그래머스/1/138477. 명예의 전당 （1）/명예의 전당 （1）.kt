class Solution {
    fun solution(k: Int, score: IntArray): IntArray {
        val topList = mutableListOf<Int>()
        val minList = mutableListOf<Int>()

        for(v in score) {
            if(topList.size < k) {
                topList.add(v)
    
                val min = topList.minOrNull()!!
                minList.add(min)
                println(minList)
                
            } else {
                var min = topList.minOrNull()!!
                
                if(min < v) {
                    topList[topList.indexOf(min)] = v     
                }
                min = topList.minOrNull()!!
                minList.add(min)  
            }
            
        }
        return minList.toIntArray()
    }
}
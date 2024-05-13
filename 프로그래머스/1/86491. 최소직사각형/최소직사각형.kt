class Solution {
    fun solution(sizes: Array<IntArray>): Int {
        val widthList = mutableListOf<Int>()
        val heightList = mutableListOf<Int>()

        for (arr in sizes) {
            if(arr[0] < arr[1]) {
                heightList.add(arr[0])
                widthList.add(arr[1])
            } else {
                widthList.add(arr[0])
                heightList.add(arr[1])   
            }
        }
        
        widthList.sort()
        heightList.sort()

        return heightList.last() * widthList.last()
    }
}
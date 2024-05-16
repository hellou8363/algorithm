class Solution {
    fun solution(s: String): Int {
        val stringNumberList = listOf("zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine")
        val numberList = listOf("0", "1", "2", "3", "4", "5", "6", "7", "8", "9")

        var result = ""
        var temp = ""

        s.forEach {
            if (numberList.contains(it.toString())) {
                result += it
            } else {
                temp += it

                if(stringNumberList.contains(temp)) {
                    result += stringNumberList.indexOf(temp)
                    temp = ""
                }
            }
        }
        
        return result.toInt()
    }
}
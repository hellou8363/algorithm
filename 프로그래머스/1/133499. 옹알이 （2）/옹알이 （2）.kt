class Solution {
    fun solution(babbling: Array<String>): Int {
        val words = arrayListOf("aya", "ye", "woo", "ma")
        var count = 0
        
        for (i in babbling) { // ["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"]
            var word = ""
            var tempWord = ""
            
            for (j in i) {
                word += j

                if (words.contains(word)) {
                    if (tempWord != word) {
                        tempWord = word
                        word = ""
                    }
                }
            }

            if (word.isEmpty()) {
                count++
            }
        }
        
        return count
    }
}
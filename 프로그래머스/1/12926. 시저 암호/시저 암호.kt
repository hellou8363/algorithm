import kotlin.math.abs

class Solution {
    fun solution(s: String, n: Int): String {
        val upperCaseList = listOf('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z')
        val lowerCaseList = listOf('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z')
    var result = ""

    for (c in s) {
        if (upperCaseList.indexOf(c) != -1) {
            var index = upperCaseList.indexOf(c)
            index = if (index + n > 25) abs(26 - (index + n)) else index + n
            result += upperCaseList[index]
        }

        if (lowerCaseList.indexOf(c) != -1) {
            var index = lowerCaseList.indexOf(c)
            index = if (index + n > 25) abs(26 - (index + n)) else index + n
            result += lowerCaseList[index]
        }

        if (c == ' ') result += ' '
    }

    return result
    }
}
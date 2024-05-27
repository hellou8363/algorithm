import java.time.LocalDate

class Solution {
    fun solution(a: Int, b: Int): String {
        return LocalDate.parse("2016-${if(a < 10) "0$a" else a}-${if(b < 10) "0$b" else b}").dayOfWeek.toString().substring(0, 3)
    }
}
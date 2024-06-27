import kotlin.math.sqrt

class Solution {
    fun solution(number: Int, limit: Int, power: Int): Int {
        var result = 0
        
        for (i in 1..number) {
            var count = 0 // 약수의 개수를 저장
            
            // 약수 구하기
            for (j in 1..Math.sqrt(i.toDouble()).toInt()) { 
                if (i % j == 0) {
                    if (i / j == j) {
                        count++
                    } else {
                        count += 2
                    }
                }
            }
            
            // 구매할 무기의 공격력이 공격력 제한 수치를 넘는 경우
            if (count > limit) { 
                result += power // 제한 수치를 초과한 기사가 사용해야하는 무기를 구매
            } else { // 아닌 경우 그대로 구매
                result += count
            }
        }
        
        return result
    }
}
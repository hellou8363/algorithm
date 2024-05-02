class Solution {
    fun solution(n: Int, m: Int): IntArray {
        val intArray = IntArray(2)

        // 최대 공약수 - 작은 수를 기준으로 나누기 진행
        for (i in n downTo 1) {
            if (n % i == 0 && m % i == 0) {
                intArray[0] = i
                break
            }
        }

        // 최소 공배수 - 큰 수를 기준으로 곱하기 진행
        for (i in 1..m) {
            if (m * i % n == 0) {
                intArray[1] = m * i
                break
            }
        }
        
        return intArray
    }
}
fun main() {
    val countInput = readln().split(" ").last().toInt() // 데이터의 개수, 질의 개수
    val array = readln().split(" ").map { it.toInt() }.toIntArray() // 구간 합을 구할 대상 배열
    val sumArray = intArrayOf(0, *array)

    for (i in 1..array.size) {
        sumArray[i] = sumArray[i - 1] + sumArray[i]
    }

    for (i in 1..countInput) {
        val input = readln().split(" ")

        println(sumArray[input[1].toInt()] - sumArray[input[0].toInt() - 1])
    }
}
fun main() {
    val countInput = readln().toInt() // 입력받을 수
    val scores = readln().split(" ").map { it.toDouble() }
    val max = scores.max()
    val average = scores.map { score -> score / max * 100 }.average()

    println(average)
}
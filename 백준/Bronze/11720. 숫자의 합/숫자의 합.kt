fun main() {
    val list = arrayListOf<Int>() // 입력받는 수들을 저장할 공간
    val countInput = readln() // 입력받을 수의 개수
    val numbersInput = readln() // 공백 없이 주어진 N개의 숫자

    val result = numbersInput.map { it.toString().toInt() }.sum()
    println(result)

}

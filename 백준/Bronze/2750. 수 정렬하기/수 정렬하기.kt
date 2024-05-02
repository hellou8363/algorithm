fun main() {
    val list = arrayListOf<Int>() // 입력받는 수들을 저장할 공간
    val input = readln().toInt() // 입력받을 수

    for (number in 1..input) {
        val input = readln() // 입력받을 수만큼 입력을 받음

        list.add(input.toInt()) // 입력받은 수를 저장
    }

    // sorted() 정렬된 새로운 리스트를 반환
    list.sorted().forEach { println(it) }

}
fun main() {

    val input = readLine()
    val result = input?.split(" ")?.map { it -> it.toInt() }?.reduce { acc, s ->  acc * s}

    println(result)
}
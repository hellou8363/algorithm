import java.io.BufferedReader
import java.io.BufferedWriter
import java.io.InputStreamReader
import java.io.OutputStreamWriter
import java.util.*

fun main() {
    val br = BufferedReader(InputStreamReader(System.`in`))
    val bw = BufferedWriter(OutputStreamWriter(System.out))

    val countInput = br.readLine().split(" ").map { it.toInt() }
    val array = IntArray(countInput[0] + 1)

    val st = StringTokenizer(br.readLine())

    for (i in 1..countInput[0]) {
        array[i] = array[i - 1] + st.nextToken().toInt()
    }

    for (i in 1..countInput[1]) {
        val st = StringTokenizer(br.readLine())

        val i = st.nextToken().toInt()
        val j = st.nextToken().toInt()

        bw.write("${(array[j] - array[i - 1])}\n")
    }

    bw.flush()
    bw.close()
}

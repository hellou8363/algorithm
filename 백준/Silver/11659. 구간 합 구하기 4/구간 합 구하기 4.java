import java.io.*;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int suNo = Integer.parseInt(st.nextToken()); 
        int quizNo = Integer.parseInt(st.nextToken()); 

        long[] s = new long[suNo + 1];

        st = new StringTokenizer(br.readLine());

        for (int i = 1; i <= suNo; i++) {
            s[i] = s[i - 1] + Integer.parseInt(st.nextToken());
        }

        for (int q = 1; q <= quizNo; q++) {
            st = new StringTokenizer(br.readLine());

            int i = Integer.parseInt(st.nextToken());
            int j = Integer.parseInt(st.nextToken());

            bw.write(s[j] - s[i - 1] + "\n");
        }

        bw.flush();
        bw.close();
    }
}

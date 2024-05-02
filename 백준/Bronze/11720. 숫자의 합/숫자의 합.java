import java.util.Scanner;

// 숫자의 합 구하기 : 백준 온라인 저지 11720번
// 합을 구하는 순서
/*
숫자의 합 구하기 : 백준 온라인 저지 11720번

합을 구하는 순서
1. 숫자의 개수를 입력받는다.(int)
2. 공백없이 연결된 숫자들을 입력받는다.(String)
3. 입력받은 숫자들(문자열)을 문자로 하나씩 분리하면서 정수형(int)으로 변환한다.(숫자의 개수만큼 for문 반복)
4. 변환한 숫자를 모두 더해서 합계를 출력한다.
 */

public class Main {
    public static void main(String[] args) {
        int numberCount; // 숫자의 개수
        String numbers;  // 공백없는 N개의 숫자
        int sum = 0; // 숫자의 합


        Scanner scanner = new Scanner(System.in);

        numberCount = scanner.nextInt();
        numbers = scanner.next();

        for (int i = 0; i < numberCount; i++) {
            sum = sum + (numbers.charAt(i) - '0');

        } // for

        System.out.println(sum);

    } // main
} // end class

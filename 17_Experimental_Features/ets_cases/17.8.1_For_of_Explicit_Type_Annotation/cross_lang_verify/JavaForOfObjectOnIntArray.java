/**
 * Java equivalent of ArkTS for-of with explicit type annotation (§17.8.1)
 * Case: Object explicit type on int[] -- compile and run (autoboxing, PASS)
 */
public class JavaForOfObjectOnIntArray {
    public static void main(String[] args) {
        int[] arr = {100, 200, 300};
        int sum = 0;
        for (Object obj : arr) {
            if (obj instanceof Integer) {
                sum++;
            }
        }
        if (sum != 3) {
            throw new RuntimeException("assertion failed: expected 3 Integer instances but got " + sum);
        }
        System.out.println("verified");
    }
}

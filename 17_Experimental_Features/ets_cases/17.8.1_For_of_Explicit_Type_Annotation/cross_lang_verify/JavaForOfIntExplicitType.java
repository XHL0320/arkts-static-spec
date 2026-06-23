/**
 * Java equivalent of ArkTS for-of with explicit type annotation (§17.8.1)
 * Case: int explicit type on int[] -- compile and run (PASS)
 *
 * Java's enhanced for-loop always requires explicit type, so this is the baseline.
 */
public class JavaForOfIntExplicitType {
    public static void main(String[] args) {
        int[] arr = {10, 20, 30, 40, 50};
        int[] expected = {10, 20, 30, 40, 50};
        int idx = 0;
        for (int v : arr) {
            if (v != expected[idx]) {
                throw new RuntimeException("assertion failed: expected " + expected[idx] + " but got " + v);
            }
            idx++;
        }
        if (idx != 5) {
            throw new RuntimeException("assertion failed: expected 5 iterations but got " + idx);
        }
        System.out.println("verified");
    }
}

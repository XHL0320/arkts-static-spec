/**
 * Java equivalent of ArkTS for-of with explicit type annotation (§17.8.1)
 * Case: String explicit type on String[] -- compile and run (PASS)
 */
public class JavaForOfStringExplicitType {
    public static void main(String[] args) {
        String[] arr = {"hello", "world", "arkts"};
        StringBuilder result = new StringBuilder();
        for (String s : arr) {
            result.append(s);
        }
        String expected = "helloworldarkts";
        if (!result.toString().equals(expected)) {
            throw new RuntimeException("assertion failed: expected " + expected + " but got " + result);
        }
        System.out.println("verified");
    }
}

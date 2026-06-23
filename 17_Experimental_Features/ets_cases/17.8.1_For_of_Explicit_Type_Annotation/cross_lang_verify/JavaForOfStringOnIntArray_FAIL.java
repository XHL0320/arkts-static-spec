/**
 * Java equivalent of ArkTS for-of with explicit type annotation (§17.8.1)
 * Case: String explicit type on int[] -- should FAIL to compile
 * Java error: incompatible types: int cannot be converted to String
 *
 * This file is intentionally invalid.
 */
public class JavaForOfStringOnIntArray_FAIL {
    public static void main(String[] args) {
        int[] arr = {1, 2, 3};
        // ERROR expected: incompatible types
        // for (String s : arr) {
        //     System.out.println(s);
        // }
    }
}

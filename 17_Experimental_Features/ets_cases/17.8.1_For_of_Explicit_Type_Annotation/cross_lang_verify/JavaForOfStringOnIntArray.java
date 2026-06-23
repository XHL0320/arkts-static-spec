/**
 * Java equivalent of ArkTS for-of with explicit type annotation (§17.8.1)
 * Case: String explicit type on int[] -- should FAIL to compile
 * Java does NOT allow this. Compiler error: incompatible types.
 *
 * This file is intentionally invalid and should not compile.
 */
public class JavaForOfStringOnIntArray {
    // UNCOMMENT to see compiler error:
    // public static void main(String[] args) {
    //     int[] arr = {1, 2, 3};
    //     for (String s : arr) {  // error: incompatible types: int cannot be converted to String
    //         System.out.println(s);
    //     }
    // }
}

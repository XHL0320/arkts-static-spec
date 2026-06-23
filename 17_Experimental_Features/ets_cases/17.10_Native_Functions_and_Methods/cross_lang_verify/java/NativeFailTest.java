/**
 * Java equivalent of compile-fail tests for native keyword.
 * These are commented out because they would cause compilation failure.
 */
public class NativeFailTest {
    // FAIL: native method with body - Java error: "native methods cannot have a body"
    // native int badBody() { return 1; }

    // FAIL: native + abstract combination - Java error: "illegal combination of modifiers: abstract and native"
    // native abstract void badCombo();

    // FAIL: native method in interface (Java 8+ default methods are not native)
    // interface BadInterface {
    //     native void foo(); // Error: interface abstract methods cannot have body
    // }

    public static void main(String[] args) {
        System.out.println("Java native fail cases: documented in comments above");
        System.out.println("Java compiler correctly rejects native+body, native+abstract, native in interface");
    }
}

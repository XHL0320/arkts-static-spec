import java.math.BigInteger;
import java.util.*;
import java.util.function.Function;

public class JavaTypesSummaryTest {
    static int pass = 0;
    static int fail = 0;

    static void check(boolean cond, String name) {
        if (cond) {
            pass++;
            System.out.println("PASS " + name);
        } else {
            fail++;
            System.out.println("FAIL " + name);
        }
    }

    // 3.1 / 3.6.1 Numeric Types
    static void testNumericTypes() {
        byte b = 127;
        short s = 32767;
        int i = 2147483647;
        long l = 9223372036854775807L;
        float f = 3.14f;
        double d = 3.14;

        long widen = b;
        double widen2 = i;
        check(widen == 127L && widen2 == 2147483647.0, "numeric widening");

        // Java has no number alias
        check(true, "java has no number alias (N/A)");
    }

    // 3.6.2 Integer Operations
    static void testIntegerOperations() {
        int a = 12;
        int c = 10;
        check((a & c) == 8, "bitwise and");
        check((a | c) == 14, "bitwise or");
        check((a ^ c) == 6, "bitwise xor");
        check((16 >> 2) == 4 && (16 >>> 2) == 4, "shift positive");
        check((-16 >> 2) == -4 && (-16 >>> 2) == 1073741820, "shift negative");

        int max = Integer.MAX_VALUE;
        check(max + 1 == Integer.MIN_VALUE, "integer overflow wraps");

        try {
            int x = 10 / 0;
            check(false, "integer div zero should throw");
        } catch (ArithmeticException e) {
            check(true, "integer div zero throws ArithmeticException");
        }
    }

    // 3.6.3 Floating-Point
    static void testFloatingPoint() {
        double posInf = 5.0 / 0.0;
        double negInf = -5.0 / 0.0;
        double nan = 0.0 / 0.0;
        check(Double.isInfinite(posInf) && posInf > 0, "float div zero +inf");
        check(Double.isInfinite(negInf) && negInf < 0, "float div zero -inf");
        check(Double.isNaN(nan), "float zero over zero NaN");
        check(((int)3.7) == 3 && ((int)-3.7) == -3, "float to int truncates toward zero");
    }

    // 3.6.4 boolean
    static void testBoolean() {
        boolean t = true;
        boolean f = false;
        check((t && !f), "boolean && !");
        check((t | f) && (t ^ f) && !(t & f), "boolean bitwise logical");
        check(("flag=" + true).equals("flag=true"), "boolean string concat");
    }

    // 3.7 Reference Types / 3.9 Object
    static class RefBox { int v = 0; }
    static void testReferencesAndObject() {
        RefBox r1 = new RefBox();
        RefBox r2 = r1;
        r2.v = 100;
        check(r1.v == 100, "class reference shared");

        int[] arr = new int[] {1, 2, 3};
        int[] arr2 = arr;
        arr2[0] = 99;
        check(arr[0] == 99, "array reference shared");

        Object o = "hello";
        check(o.toString().equals("hello"), "Object.toString");

        Object boxed = 42;
        check(boxed instanceof Integer, "int boxes to Integer Object");
    }

    // 3.2 User-defined: class/interface/enum/generic
    interface Shape { int area(); }
    static class Square implements Shape {
        int s;
        Square(int s) { this.s = s; }
        public int area() { return s * s; }
    }
    enum Color { Red, Green, Blue }
    static class JBox<T> {
        T v;
        JBox(T v) { this.v = v; }
        T get() { return v; }
    }
    static void testUserDefinedTypes() {
        Shape sh = new Square(4);
        check(sh.area() == 16, "interface dispatch");
        check(Color.values().length == 3 && Color.valueOf("Red") == Color.Red, "enum values valueOf");
        JBox<Integer> b = new JBox<Integer>(42);
        check(b.get() == 42, "generic class boxed int");
    }

    // Function type analog: java.util.function.Function
    static void testFunctionTypeAnalog() {
        Function<Integer, Integer> square = x -> x * x;
        check(square.apply(5) == 25, "Function<T,R> analog");
    }

    // 3.11 void limitations
    static void voidReturnOnly() { return; }
    static void testVoid() {
        voidReturnOnly();
        check(true, "void return only");
        check(true, "void variable/generic N/A in Java");
    }

    // N/A feature markers
    static void testNAs() {
        check(true, "Java has no union types (N/A)");
        check(true, "Java has no tuple types (N/A)");
        check(true, "Java has no typealias (N/A)");
        check(true, "Java has no never type (N/A)");
        check(true, "Java has no undefined value (N/A)");
        check(true, "Java has no native bigint literal (N/A)");
    }

    public static void main(String[] args) {
        testNumericTypes();
        testIntegerOperations();
        testFloatingPoint();
        testBoolean();
        testReferencesAndObject();
        testUserDefinedTypes();
        testFunctionTypeAnalog();
        testVoid();
        testNAs();
        System.out.println("SUMMARY pass=" + pass + " fail=" + fail);
        if (fail != 0) {
            System.exit(1);
        }
    }
}

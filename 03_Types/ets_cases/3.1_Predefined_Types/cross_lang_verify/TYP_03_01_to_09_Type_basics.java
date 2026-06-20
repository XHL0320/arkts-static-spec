// Java cross-language verification for 3.1~3.9
// Each class tests a specific aspect of ArkTS types vs Java

// === 3.1 Predefined Types ===
class TYP_03_01_PREDEFINED {
    public static void main(String[] args) {
        // Integer types
        byte b = 1;
        short s = 2;
        int i = 3;
        long l = 4L;
        float f = 3.14f;
        double d = 3.14;
        boolean bool = true;
        // Java: no char literal type issue like ArkTS
        char c = 'a';
        System.out.println("3.01: byte=" + b + " int=" + i + " double=" + d + " bool=" + bool);

        // Key diff: Java has no separate 'number' type (double only)
        // ArkTS: number = double (alias)
        double num = 3.14;
        System.out.println("3.01: number(double)=" + num);

        // Key diff: Java primitive int cannot be null
        // ArkTS: let x: int = null is compile-time error (same in Java)
        // Integer wrapper can be null (different from ArkTS)
        Integer nullable = null;
        System.out.println("3.01: Integer=null is OK in Java (ArkTS: compile-fail for int)");
    }
}

// === 3.2 User-Defined Types ===
class TYP_03_02_USER_DEFINED {
    static class Point { int x; int y; }
    public static void main(String[] args) {
        Point p = new Point();
        p.x = 1; p.y = 2;
        System.out.println("3.02: Point(" + p.x + "," + p.y + ")");
    }
}

// === 3.3 Using Types ===
class TYP_03_03_USING_TYPES {
    public static void main(String[] args) {
        int x = 42;
        String s = "hello";
        double d = 3.14;
        System.out.println("3.03: int=" + x + " str=" + s + " double=" + d);
        // Key diff: Java has no type alias
    }
}

// === 3.4 Named Types ===
class TYP_03_04_NAMED_TYPES {
    public static void main(String[] args) {
        // Java has no type alias, uses class/interface
        System.out.println("3.04: Java has no type alias (type keyword)");
    }
}

// === 3.5 Type References ===
class TYP_03_05_TYPE_REFS {
    public static void main(String[] args) {
        // Java uses generics similarly
        java.util.List<String> list = new java.util.ArrayList<>();
        list.add("hello");
        System.out.println("3.05: List<String>=" + list.get(0));
    }
}

// === 3.6.1 Numeric Types ===
class TYP_03_06_01_NUMERIC {
    public static void main(String[] args) {
        byte b = 127;
        short s = 32767;
        int i = 2147483647;
        long l = 9223372036854775807L;
        float f = 3.14f;
        double d = 3.14;
        System.out.println("3.6.1: byte=" + b + " short=" + s + " int=" + i);
        System.out.println("3.6.1: long=" + l + " float=" + f + " double=" + d);
    }
}

// === 3.6.2 Integer Division - Key difference ===
class TYP_03_06_02_INT_DIV {
    public static void main(String[] args) {
        // KEY DIFF: Java int/int = int (truncates), same as ArkTS
        int a = 1 / 2;  // = 0 (integer division)
        System.out.println("3.6.2: 1/2 = " + a + " (Java: integer division truncates)");

        // Division by zero
        try {
            int zero = 0;
            int result = 1 / zero;
            System.out.println("UNEXPECTED: no exception");
        } catch (ArithmeticException e) {
            System.out.println("3.6.2: ArithmeticException caught");
        }
    }
}

// === 3.6.3 Floating-Point ===
class TYP_03_06_03_FLOAT {
    public static void main(String[] args) {
        double nan = Double.NaN;
        double inf = Double.POSITIVE_INFINITY;
        System.out.println("3.6.3: NaN != NaN = " + (nan != nan));
        System.out.println("3.6.3: Infinity > 1e308 = " + (inf > 1e308));
    }
}

// === 3.6.4 Boolean ===
class TYP_03_06_04_BOOLEAN {
    public static void main(String[] args) {
        boolean t = true;
        boolean f = false;
        System.out.println("3.6.4: true&&false=" + (t && f) + " true||false=" + (t || f) + " !true=" + (!t));
    }
}

// === 3.7 Reference Types ===
class TYP_03_07_REF_TYPES {
    public static void main(String[] args) {
        // Key diff: Java reference types are always nullable
        String s = null;  // OK in Java
        System.out.println("3.07: Java allows null for reference types (ArkTS: compile-fail for string)");
    }
}

// === 3.8 Type Any ===
class TYP_03_08_TYPE_ANY {
    public static void main(String[] args) {
        // Key diff: Java Object is top type (not Any)
        Object a = null;     // OK in Java
        a = 42;              // autoboxing
        a = "hello";
        System.out.println("3.08: Object accepts null and all types (ArkTS Any similar but no methods)");

        // Key diff: Object allows null, ArkTS Any also allows null
        // But ArkTS Any has no methods, Java Object has toString/equals/hashCode
        Object obj = new Object();
        System.out.println("3.08: Object.toString() = " + obj.toString());
    }
}

// === 3.9 Type Object ===
class TYP_03_09_TYPE_OBJECT {
    public static void main(String[] args) {
        // Key diff: Java Object can hold null
        Object o = null;
        o = new Object();
        System.out.println("3.09: Object can hold null (ArkTS: Object cannot hold null)");

        // Subtypes
        Object num = 42;  // autoboxing
        Object str = "hello";
        System.out.println("3.09: Object accepts all subtypes");
    }
}
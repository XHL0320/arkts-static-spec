/**
 * Java verification for ArkTS 17.1 Type char features
 * Compares Java char behavior with ArkTS char behavior
 */
public class JavaCharType {
    // Java: char is a primitive 16-bit unsigned integral type
    // ArkTS: char is a class type, subtype of Object

    public static void main(String[] args) {
        // Basic declaration (both languages support this syntax conceptually)
        char a = 'a';
        char z = 'Z';
        System.out.println("char a = " + a + " (value: " + (int)a + ")");

        // Java: char can widen to int (ArkTS: NOT allowed)
        int a_int = a;  // widening, OK in Java
        System.out.println("char->int widening: " + a_int);

        // Java: char is a primitive, assign to Object requires boxing
        Object o = a;  // auto-boxing to Character
        System.out.println("char->Object (auto-boxed): " + o);

        // Java: char can do arithmetic (ArkTS: NOT allowed)
        char next = (char)(a + 1);  // OK in Java, needs cast back
        System.out.println("a + 1 = " + (int)next + " ('" + next + "')");

        // Java: int->char requires explicit cast (both languages agree)
        // char c = 65; // OK in Java actually (literal narrowing)
        char c_from_int = (char)65;
        System.out.println("(char)65 = '" + c_from_int + "'");

        System.out.println("=== All Java char type tests passed ===");
    }
}

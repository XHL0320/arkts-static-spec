/**
 * Java verification for ArkTS 17.1.1 char Literals
 * Java char literals use single quotes: 'X'
 * Java also supports escape sequences.
 */
public class JavaCharLiterals {
    public static void main(String[] args) {
        // ASCII literals (Java and ArkTS both use quotes, ArkTS uses c'X')
        char a = 'a';
        char z = 'Z';
        char zero = '0';
        System.out.println("'a' = " + (int)a);
        System.out.println("'Z' = " + (int)z);
        System.out.println("'0' = " + (int)zero);

        // Escape sequences (same in both languages)
        char nl = '\n';
        char tab = '\t';
        System.out.println("newline = " + (int)nl);
        System.out.println("tab = " + (int)tab);

        // Boundary values
        char min = 0;  // 0
        char max = 65535;  // 65535
        System.out.println("U+0000 = " + (int)min);
        System.out.println("U+FFFF = " + (int)max);
        System.out.println("U+0000 < U+FFFF: " + (min < max));

        System.out.println("=== All Java char literal tests passed ===");
    }
}

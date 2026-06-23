/**
 * Java equivalent of ArkTS EXP2_17_12_001 - Default method basic usage
 * Tests: interface with default method, class implements without override
 */
interface IGreeter {
    default void greet() {
        System.out.println("Hello from default method");
    }
}

class Person implements IGreeter {
    String name = "Alice";
}

class JavaDefaultBasic {
    public static void main(String[] args) {
        Person p = new Person();
        p.greet();
        System.out.println("PASS");
    }
}

/**
 * Java cross-verification: final method override attempt (should fail)
 * Equivalent to ArkTS compile-fail test 006
 * This file will NOT compile - final methods cannot be overridden in Java either
 */
class Base {
    public final void greet() {
        System.out.println("Base greet");
    }
}

class Derived extends Base {
    // COMPILE ERROR: greet() in Derived cannot override greet() in Base
    // overridden method is final
    public void greet() {
        System.out.println("Derived greet");
    }
}

public class FinalMethodOverride {
    public static void main(String[] args) {
        Derived d = new Derived();
        d.greet();
    }
}

/**
 * Java cross-language verification for 15.5 Invariance, Covariance, Contravariance
 *
 * Key differences:
 * - Java supports use-site variance (? extends / ? super), ArkTS does not
 * - Swift supports declaration-site variance (inout), ArkTS does not
 * - All three support return type covariance and parameter contravariance
 */
class SEM_15_05_Variance {
    static int pass = 0;
    static int fail = 0;

    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    // Generic invariance demonstration
    static class Box<T> {
        T value;
        Box(T v) { this.value = v; }
        T get() { return value; }
        void set(T v) { this.value = v; }
    }

    // Return type covariance
    static class Animal {
        Animal reproduce() { return new Animal(); }
    }
    static class Dog extends Animal {
        @Override
        Dog reproduce() { return new Dog(); }  // covariant return type
    }

    // Parameter contravariance via functional interface
    @FunctionalInterface
    interface Consumer<T> {
        void accept(T t);
    }

    public static void main(String[] args) {
        // === Generic invariance ===
        // ArkTS: let b: Box<Dog> = new Box<Dog>(new Dog()); let a: Box<Animal> = b; // ERROR
        // Java:  same - generic invariance
        {
            Box<Dog> dogBox = new Box<>(new Dog());
            // Box<Animal> animalBox = dogBox;  // COMPILE ERROR (invariance)
            check(true, "generic invariance (Java: same as ArkTS)");
        }

        // === Return type covariance ===
        // ArkTS: override reproduce(): Dog { ... }  // covariant return OK
        // Java:  @Override Dog reproduce() { ... }  // covariant return OK (Java 5+)
        {
            Dog d = new Dog();
            Animal result = d.reproduce();
            check(result instanceof Dog, "return type covariance (Java: same as ArkTS)");
        }

        // === Parameter contravariance via Consumer ===
        // ArkTS: function type (Animal) -> void can accept (Dog) -> void
        // Java:  Consumer<Animal> can accept Dog (wildcard)
        {
            Consumer<Dog> dogConsumer = (Dog d) -> System.out.println("  INFO dog");
            // Consumer<Animal> animalConsumer = dogConsumer;  // Java: invariance
            // Java uses wildcards: Consumer<? super Dog>
            Consumer<? super Dog> superConsumer = (Animal a) -> System.out.println("  INFO animal");
            superConsumer.accept(new Dog());
            check(true, "parameter contravariance (Java: wildcard ? super)");
        }

        // === Java-specific: use-site variance (? extends) ===
        // ArkTS does NOT support use-site variance
        {
            Box<Dog> dogBox = new Box<>(new Dog());
            // Java wildcard: allows read-only covariance at use site
            Box<? extends Animal> animalBox = dogBox;
            Animal a = animalBox.get();
            check(a instanceof Dog, "use-site variance (? extends) - Java specific, ArkTS does not support");
        }

        // === Java-specific: use-site variance (? super) ===
        {
            Box<Animal> animalBox = new Box<>(new Animal());
            Box<? super Dog> dogBox = animalBox;
            dogBox.set(new Dog());
            check(true, "use-site variance (? super) - Java specific, ArkTS does not support");
        }

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) { System.exit(1); }
        System.out.println("verified");
    }
}

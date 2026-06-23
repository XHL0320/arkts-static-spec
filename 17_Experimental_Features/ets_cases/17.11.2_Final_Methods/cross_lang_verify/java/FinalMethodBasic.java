/**
 * Java cross-verification: final method basic declaration and inheritance
 * Equivalent to ArkTS 17.11.2 Final Methods compile-pass tests
 */
class Animal {
    public final String identify() {
        return "Animal";
    }
}

class Dog extends Animal {
    // Cannot override identify() because it's final
    // This is valid - just inheriting the final method
    public String bark() {
        return "Woof";
    }
}

public class FinalMethodBasic {
    public static void main(String[] args) {
        Animal a = new Animal();
        assert a.identify().equals("Animal") : "Animal.identify should return 'Animal'";

        Dog d = new Dog();
        assert d.identify().equals("Animal") : "Dog.identify should return 'Animal' via inheritance";
        assert d.bark().equals("Woof") : "Dog.bark should return 'Woof'";

        System.out.println("verified");
    }
}

/**
 * Java cross-verification: Builder pattern (alternative to named constructors)
 * Java Builder pattern is another common alternative when you need multiple
 * construction strategies with descriptive names.
 *
 * Equivalent to ArkTS: constructor Full(name: string, age: int) { ... }
 */
class User {
    private String name;
    private int age;

    private User() {}

    public String getName() { return name; }
    public int getAge() { return age; }

    // Builder class enables named-parameter-like construction
    public static class Builder {
        private User user = new User();

        public Builder withName(String name) {
            user.name = name;
            return this;
        }

        public Builder withAge(int age) {
            user.age = age;
            return this;
        }

        public User build() {
            return user;
        }
    }
}

public class BuilderPattern {
    public static void main(String[] args) {
        User u1 = new User.Builder()
            .withName("Alice")
            .withAge(30)
            .build();
        assert u1.getName().equals("Alice") : "name should be Alice";
        assert u1.getAge() == 30 : "age should be 30";

        User u2 = new User.Builder()
            .withName("Bob")
            .build();
        assert u2.getName().equals("Bob") : "name should be Bob";
        assert u2.getAge() == 0 : "age should be 0 (default)";

        System.out.println("verified");
    }
}

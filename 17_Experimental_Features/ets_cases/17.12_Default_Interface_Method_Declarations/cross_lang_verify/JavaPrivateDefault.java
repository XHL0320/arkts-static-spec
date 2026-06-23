/**
 * Java equivalent of ArkTS EXP2_17_12_003 - Private default method
 * Tests: private default method called from another default method
 * Requires Java 9+
 */
interface IMath {
    default int compute(int a, int b) {
        return add(a, b);
    }

    default int multiply(int a, int b) {
        int result = 0;
        for (int i = 0; i < b; i++) {
            result = add(result, a);
        }
        return result;
    }

    private int add(int a, int b) {
        return a + b;
    }

    private int subtract(int a, int b) {
        return a - b;
    }
}

class Calculator implements IMath {
}

class JavaPrivateDefault {
    public static void main(String[] args) {
        Calculator c = new Calculator();
        int sum = c.compute(3, 4);
        if (sum != 7) {
            throw new RuntimeException("FAIL: expected 7, got " + sum);
        }
        int prod = c.multiply(3, 5);
        if (prod != 15) {
            throw new RuntimeException("FAIL: expected 15, got " + prod);
        }
        System.out.println("PASS: sum=" + sum + ", product=" + prod);
    }
}

/**
 * Java equivalent of ArkTS EXP2_17_12_021 - Override precedence
 * Tests: class override takes precedence over default method
 */
interface ICalculator {
    default int compute(int x) {
        return x * 2; // default: multiply by 2
    }
}

class Doubler implements ICalculator {
    // does not override, uses default
}

class Tripler implements ICalculator {
    @Override
    public int compute(int x) {
        return x * 3; // overrides: multiply by 3
    }
}

class JavaOverridePrecedence {
    public static void main(String[] args) {
        Doubler d = new Doubler();
        Tripler t = new Tripler();

        int r1 = d.compute(10);
        if (r1 != 20) {
            throw new RuntimeException("FAIL: Doubler expected 20, got " + r1);
        }

        int r2 = t.compute(10);
        if (r2 != 30) {
            throw new RuntimeException("FAIL: Tripler expected 30, got " + r2);
        }

        // verify overriding doesn't affect default behavior
        int r3 = d.compute(5);
        if (r3 != 10) {
            throw new RuntimeException("FAIL: Doubler second call expected 10, got " + r3);
        }

        System.out.println("PASS: override takes precedence over default");
    }
}

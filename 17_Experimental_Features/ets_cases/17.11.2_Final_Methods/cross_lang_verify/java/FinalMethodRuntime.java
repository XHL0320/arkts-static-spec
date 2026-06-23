/**
 * Java cross-verification: final method runtime behavior
 * Equivalent to ArkTS runtime tests 011-014
 */
class Accumulator {
    private int total;
    private StringBuilder history;

    public Accumulator() {
        this.total = 0;
        this.history = new StringBuilder();
    }

    public final void add(int n) {
        total += n;
    }

    public final void record(String op) {
        history.append(op);
    }

    public final int getTotal() {
        return total;
    }

    public final String getHistory() {
        return history.toString();
    }
}

public class FinalMethodRuntime {
    public static void main(String[] args) {
        Accumulator acc = new Accumulator();
        assert acc.getTotal() == 0 : "total should be 0";
        assert acc.getHistory().equals("") : "history should be empty";

        acc.add(10);
        acc.record("+10");
        assert acc.getTotal() == 10 : "total should be 10";

        acc.add(25);
        acc.record("+25");
        assert acc.getTotal() == 35 : "total should be 35";
        assert acc.getHistory().equals("+10+25") : "history should be '+10+25'";

        System.out.println("verified");
    }
}

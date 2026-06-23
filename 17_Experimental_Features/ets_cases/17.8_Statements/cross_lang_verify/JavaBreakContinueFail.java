/**
 * Java equivalent of EXP2_17_08_011/012_FAIL_BREAK_OUTSIDE_LOOP / CONTINUE_OUTSIDE_LOOP
 * Tests: break/continue outside loop — Java also produces compile errors
 */
public class JavaBreakContinueFail {
    public static void main(String[] args) {
        // These are commented out because Java would also reject them at compile time.
        // In Java, "break outside loop" and "continue outside loop" are compile errors
        // just like in ArkTS.

        // break outside loop:
        // int x = 10;
        // if (x > 5) { break; }  // Error: break outside switch or loop

        // continue outside loop:
        // int y = 0;
        // continue;  // Error: continue outside of loop
    }
}

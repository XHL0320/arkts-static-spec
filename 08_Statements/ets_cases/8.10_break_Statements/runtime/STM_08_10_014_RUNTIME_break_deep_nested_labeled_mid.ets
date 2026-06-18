/**
 * @id STM_08_10_014_RUNTIME_break_deep_nested_labeled_mid
 * @expect runtime
 * @section 8.10
 * @design 验证三层嵌套循环中带标签break跳出中间层，外层继续执行下一迭代
 * @note Verify labeled break from 3-level deep loop exits to mid, outer continues to next iteration
 */
function main(): void {
    let i: int = 0;
    let j: int = 0;
    let k: int = 0;
    let outerRuns: int = 0;
    let midRuns: int = 0;
    let innerRuns: int = 0;
    let midBreakCount: int = 0;
    outer: for (i = 0; i < 3; i++) {
        outerRuns++;
        mid: for (j = 0; j < 3; j++) {
            midRuns++;
            for (k = 0; k < 3; k++) {
                if (k == 1) {
                    midBreakCount++;
                    break mid;
                }
                innerRuns++;
            }
        }
    }
    if (outerRuns != 3) {
        throw new Error("outer loop should run 3 times, got " + outerRuns);
    }
    if (midRuns != 9) {
        throw new Error("mid loop should run 9 times (3 outer x 3 mid), got " + midRuns);
    }
    if (innerRuns != 9) {
        throw new Error("inner loop body should execute 9 times (once per mid iteration before break at k=1), got " + innerRuns);
    }
    if (midBreakCount != 9) {
        throw new Error("break mid should execute 9 times, got " + midBreakCount);
    }
    console.log("verified");
}

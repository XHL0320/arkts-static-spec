/**
 * @id STM_08_10_010_RUNTIME_break_labelled_outer
 * @expect runtime
 * @section 8.10
 * @design 验证带标签的break能正确跳出外层标记循环，跳过内层剩余迭代
 * @note Verify break with label exits the outer labeled loop, skipping remaining inner iterations
 */
function main(): void {
    let i: int = 0;
    let j: int = 0;
    outer: for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
            if (j == 2) {
                break outer;
            }
        }
    }
    // After break outer: outer loop iteration stays at i=0, inner loop stopped at j=2
    if (i != 0) {
        throw new Error("Expected i=0 after break outer, got " + i);
    }
    if (j != 2) {
        throw new Error("Expected j=2 after break outer, got " + j);
    }
    console.log("verified");
}

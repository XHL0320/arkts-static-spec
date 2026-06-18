/**
 * @id STM_08_07_013_RUNTIME_while_break_in_nested_if
 * @expect runtime
 * @section 8.7
 * @design while 内嵌套 if 使用 break 提前退出，验证 break 后循环不再执行且外部变量保留中间值 — STATEMENTS.md §8.7
 * @note break 仅退出最内层循环，外层 while 之后代码正常执行
 */
function main(): void {
    let i: int = 0;
    let sum: int = 0;
    while (i < 10) {
        i = i + 1;
        if (i == 7) {
            break;
        }
        sum = sum + i;
    }
    if (i != 7) {
        throw new Error("Expected i=7 after break, got " + i);
    }
    if (sum != 21) {
        throw new Error("Expected sum=21 after break, got " + sum);
    }
    // Verify break exits only inner while, outer continues
    let outer: int = 0;
    let inner: int = 0;
    while (outer < 3) {
        outer = outer + 1;
        inner = 0;
        while (inner < 5) {
            inner = inner + 1;
            if (inner == 2) {
                break;
            }
        }
        if (inner != 2) {
            throw new Error("Expected inner=2 after break, got " + inner);
        }
    }
    if (outer != 3) {
        throw new Error("Expected outer=3, got " + outer);
    }
    console.log("verified");
}

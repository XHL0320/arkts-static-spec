/**
 * @id STM_08_07_012_RUNTIME_do_while_continue_to_condition
 * @expect runtime
 * @section 8.7
 * @design do-while 体内 continue 跳转到条件检查，若条件为 false 则退出循环 — STATEMENTS.md §8.7
 * @note continue 使执行流跳转到 while 条件表达式，而非回到 do 体开头
 */
function main(): void {
    let i: int = 0;
    let bodyExecCount: int = 0;
    do {
        bodyExecCount = bodyExecCount + 1;
        i = i + 2;
        if (i < 10) {
            continue;
        }
        break;
    } while (i < 10);
    if (i != 10) {
        throw new Error("Expected i=10 after loop, got " + i);
    }
    // Verify continue skips to condition check: if condition still true, re-enters body
    let j: int = 0;
    let skipCount: int = 0;
    let endCount: int = 0;
    do {
        j = j + 1;
        if (j < 5) {
            skipCount = skipCount + 1;
            continue;
        }
        endCount = endCount + 1;
    } while (j < 5);
    if (skipCount != 4) {
        throw new Error("Expected skipCount=4, got " + skipCount);
    }
    if (endCount != 1) {
        throw new Error("Expected endCount=1, got " + endCount);
    }
    if (j != 5) {
        throw new Error("Expected j=5, got " + j);
    }
    console.log("verified");
}

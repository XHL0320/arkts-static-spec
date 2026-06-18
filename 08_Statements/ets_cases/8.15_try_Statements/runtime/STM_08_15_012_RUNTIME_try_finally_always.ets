/**
 * @id STM_08_15_012_RUNTIME_try_finally_always
 * @expect runtime
 * @section 8.15
 * @design 验证 finally 子句始终执行（无论是否抛出异常）
 * @note finally 块不论 try 块是否抛出异常都会执行
 */
function main(): void {
    let finallyExecuted: int = 0;
    let catchExecuted: int = 0;

    try {
        finallyExecuted = 1;
    } finally {
        finallyExecuted = 2;
    }
    if (finallyExecuted != 2) {
        throw new Error("finally was not executed when no error thrown");
    }

    finallyExecuted = 0;
    try {
        throw new Error("error");
    } catch (e) {
        catchExecuted = 1;
    } finally {
        finallyExecuted = 3;
    }
    if (finallyExecuted != 3) {
        throw new Error("finally was not executed when error was thrown");
    }
    if (catchExecuted != 1) {
        throw new Error("catch was not executed when error was thrown");
    }

    console.log("verified");
}

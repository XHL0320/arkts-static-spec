/**
 * @id STM_08_03_010_RUNTIME_block_throw_error
 * @expect runtime
 * @section 8.3
 * @design 验证块中执行到 throw 错误时停止执行，后续语句不执行
 * @note 运行时用例：验证 block 的异常终止语义（8.3 - Execution stops on thrown error）
 */
function main(): void {
    // Test throw stops block execution
    let x: int = 0;
    let caught: boolean = false;
    try {
        {
            x = 1;
            throw new Error("stop here");
            x = 2; // should NOT execute
        }
    } catch (e) {
        caught = true;
    }

    // Verify x was set to 1 before throw
    if (x != 1) {
        throw new Error("throw stop failed: x should be 1 but got " + x);
    }

    // Verify catch was entered (error was thrown)
    if (!caught) {
        throw new Error("throw was not caught");
    }

    // Verify x is still 1 (the assignment after throw did not execute)
    // If x were 2, it means the statement after throw executed, violating the spec
    if (x == 2) {
        throw new Error("statement after throw should not execute");
    }

    // Test that a block after try-catch executes independently
    let y: int = 0;
    {
        y = 100;
    }
    if (y != 100) {
        throw new Error("block after try-catch failed: y should be 100 but got " + y);
    }

    console.log("verified");
}

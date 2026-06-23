/**
 * @id STM_08_15_017_PASS_try_finally_only
 * @expect compile-pass
 * @section 8.15
 * @design 验证仅含 finally 子句（无 catch）的 try 语句编译通过
 * @note try 语句仅跟 finally 子句不跟 catch 子句是合法语法，finally 中的代码在控制流离开 try 块前执行
 */
function testTryFinallyOnly(): void {
    let a: int = 0;
    let b: int = 0;
    try {
        a = 1;
        b = 2;
    } finally {
        a = 10;
        b = 20;
    }
}

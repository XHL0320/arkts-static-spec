/**
 * @id STM_08_15_002_PASS_try_finally
 * @expect compile-pass
 * @section 8.15
 * @design 验证基本的 try-finally 结构编译通过
 * @note try 块后跟 finally 子句，符合语法要求
 */
function testTryFinally(): void {
    let x: int = 0;
    try {
        x = 10;
    } finally {
        x = 20;
    }
}

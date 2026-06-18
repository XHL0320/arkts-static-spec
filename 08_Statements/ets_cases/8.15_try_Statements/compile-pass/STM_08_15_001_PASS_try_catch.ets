/**
 * @id STM_08_15_001_PASS_try_catch
 * @expect compile-pass
 * @section 8.15
 * @design 验证基本的 try-catch 结构编译通过
 * @note try 块后跟 catch 子句，符合语法要求
 */
function testTryCatch(): void {
    let x: int = 0;
    try {
        x = 42;
    } catch (e) {
        x = -1;
    }
}

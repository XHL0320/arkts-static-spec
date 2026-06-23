/**
 * @id STM_08_15_005_PASS_try_catch_return
 * @expect compile-pass
 * @section 8.15
 * @design 验证 try-catch 中包含 return 语句编译通过
 * @note try 或 catch 块中可以包含 return 语句
 */
function testTryCatchReturn(): int {
    let x: int = 0;
    try {
        x = 7;
        return x;
    } catch (e) {
        return -1;
    } finally {
        x = 0;
    }
}

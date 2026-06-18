/**
 * @id STM_08_15_004_PASS_try_nested
 * @expect compile-pass
 * @section 8.15
 * @design 验证嵌套 try 语句结构编译通过
 * @note try 块内部可以包含另一个 try-catch 结构
 */
function testNestedTry(): void {
    let result: int = 0;
    try {
        try {
            result = 1;
        } catch (e) {
            result = -1;
        }
    } catch (e) {
        result = -2;
    } finally {
        result = 99;
    }
}

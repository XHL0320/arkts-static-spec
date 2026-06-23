/**
 * @id STM_08_15_009_FAIL_try_catch_nested_function
 * @expect compile-fail
 * @section 8.15
 * @design 验证 catch 块内定义嵌套函数产生编译错误
 * @note ArkTS 不允许在函数内定义嵌套函数
 */
function testTryCatchNestedFunction(): void {
    try {
        let x: int = 1;
    } catch (e) {
        function helper(): int {
            return 42;
        }
        let y: int = helper();
    }
}

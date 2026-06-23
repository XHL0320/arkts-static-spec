/**
 * @id STM_08_15_007_FAIL_try_catch_local_class
 * @expect compile-fail
 * @section 8.15
 * @design 验证 try 块内定义局部类产生编译错误
 * @note ArkTS 不允许在函数内定义局部类
 */
function testTryCatchLocalClass(): void {
    try {
        class LocalError {
            msg: string = "error";
        }
    } catch (e) {
        // empty
    }
}

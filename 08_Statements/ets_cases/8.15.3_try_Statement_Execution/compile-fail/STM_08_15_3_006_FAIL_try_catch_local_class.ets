/**
 * @id STM_08_15_3_006_FAIL_try_catch_local_class
 * @expect compile-fail
 * @section 8.15.3
 * @design 验证在 catch 块内定义局部类导致编译错误。ArkTS 禁止局部类定义。
 * @note 反向测试：catch 块内 class 定义违反 ArkTS 约束，编译器应报错。
 */
function testTryCatchLocalClass(): void {
    try {
        throw new Error("err");
    } catch (e) {
        class LocalCatchClass {
            value: int = 0;
        }
    }
}

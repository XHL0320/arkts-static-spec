/**
 * @id STM_08_15_008_FAIL_try_finally_local_type_alias
 * @expect compile-fail
 * @section 8.15
 * @design 验证 finally 块内定义局部类型别名产生编译错误
 * @note ArkTS 不允许在函数内定义局部类型别名
 */
function testTryFinallyLocalTypeAlias(): void {
    try {
        let x: int = 1;
    } finally {
        type MyInt = int;
        let y: MyInt = x;
    }
}

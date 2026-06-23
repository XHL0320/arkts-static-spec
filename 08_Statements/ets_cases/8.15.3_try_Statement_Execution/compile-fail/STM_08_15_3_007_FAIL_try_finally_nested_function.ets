/**
 * @id STM_08_15_3_007_FAIL_try_finally_nested_function
 * @expect compile-fail
 * @section 8.15.3
 * @design 验证在 finally 块内定义嵌套函数导致编译错误。ArkTS 禁止嵌套函数定义。
 * @note 反向测试：finally 块内 function 定义违反 ArkTS 约束，编译器应报错。
 */
function testTryFinallyNestedFunction(): void {
    let x: int = 0;
    try {
        x = 1;
    } finally {
        function nestedInFinally(): void {
            x = 2;
        }
    }
}

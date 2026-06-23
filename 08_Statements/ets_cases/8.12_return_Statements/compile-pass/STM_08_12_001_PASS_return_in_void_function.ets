/**
 * @id STM_08_12_001_PASS_return_in_void_function
 * @expect compile-pass
 * @section 8.12
 * @design 测试void函数中无表达式的return语句
 * @note 正向测试：void函数允许使用无表达式的return语句，语义上等价于return undefined
 */
function testReturnInVoidFunction(): void {
    let x: int = 0;
    if (x == 0) {
        return;
    }
}

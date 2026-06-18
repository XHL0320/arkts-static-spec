/**
 * @id STM_08_02_008_FAIL_undefined_variable
 * @expect compile-fail
 * @section 8.2
 * @design 测试访问未定义变量的表达式作为语句应编译失败
 * @note 表达式中引用了未声明的变量，编译器应报错
 */
function testUndefinedVariable(): void {
    let x: int = 0;
    x = undeclaredVariable;
}

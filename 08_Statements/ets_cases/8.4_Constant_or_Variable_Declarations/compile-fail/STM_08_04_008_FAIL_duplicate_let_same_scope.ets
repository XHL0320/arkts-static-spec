/**
 * @id STM_08_04_008_FAIL_duplicate_let_same_scope
 * @expect compile-fail
 * @section 8.4
 * @design 测试同一作用域重复let声明同名变量编译错误
 * @note 同一块作用域中不能重复声明同名变量
 */
function testDuplicateLetSameScope(): void {
    let name: string = "hello";
    let name: string = "world";
}

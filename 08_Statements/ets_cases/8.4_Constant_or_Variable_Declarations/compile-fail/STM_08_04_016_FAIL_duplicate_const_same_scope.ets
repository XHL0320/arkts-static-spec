/**
 * @id STM_08_04_016_FAIL_duplicate_const_same_scope
 * @expect compile-fail
 * @section 8.4
 * @design 测试同一作用域重复const声明同名常量编译错误
 * @note 同一块作用域中不能重复声明同名const常量，与let规则一致
 */
function testDuplicateConstSameScope(): void {
    const name: string = "first";
    const name: string = "second";
}

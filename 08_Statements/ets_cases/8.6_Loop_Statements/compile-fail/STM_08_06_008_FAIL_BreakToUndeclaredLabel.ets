/**
 * @id STM_08_06_008_FAIL_BreakToUndeclaredLabel
 * @expect compile-fail
 * @section 8.6
 * @design break语句引用一个未声明的标签标识符，应编译时报错
 * @note 标签必须在使用前声明并关联到包含循环语句
 */
function testBreakToUndeclaredLabel(): void {
    for (let i: int = 0; i < 10; i++) {
        break nonExistentLabel;
    }
}

/**
 * @id STM_08_04_020_FAIL_duplicate_let_block
 * @expect compile-fail
 * @section 8.4
 * @design 测试同一块作用域内（if/for/while等块体）重复let声明同名变量编译错误
 * @note if块体内不能重复声明同名let变量
 */
function testDuplicateLetInBlock(): void {
    if (true) {
        let msg: string = "first";
        let msg: string = "second";
    }
}

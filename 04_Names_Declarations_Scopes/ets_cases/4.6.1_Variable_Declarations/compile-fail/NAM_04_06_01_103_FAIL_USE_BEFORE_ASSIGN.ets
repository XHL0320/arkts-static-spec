/**
 * @id NAM_04_06_01_103_FAIL_USE_BEFORE_ASSIGN
 * @expect compile-fail
 * @section 4.6.1
 * @design 无默认值的变量使用前未赋值应报错
 * @note spec: variable value must be set before any use
 */
class C103 {}
function test(): void {
    let c: C103
    c.toString()
}

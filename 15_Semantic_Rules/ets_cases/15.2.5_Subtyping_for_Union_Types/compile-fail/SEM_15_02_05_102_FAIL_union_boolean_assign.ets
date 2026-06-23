/**
 * @id SEM_15_02_05_102_FAIL_union_boolean_assign
 * @expect compile-fail
 * @section 15.2.5
 * @design boolean 不是 number|string 的成员，不可赋值
 * @note 来自规范 15.2.5 例：u = true 编译错误
 */
function main(): void {
    let u: number|string = 1.0
    u = true
}

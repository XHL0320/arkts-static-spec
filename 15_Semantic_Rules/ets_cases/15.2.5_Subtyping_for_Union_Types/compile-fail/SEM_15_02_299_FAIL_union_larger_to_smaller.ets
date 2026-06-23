/**
 * @id SEM_15_02_299_FAIL_union_larger_to_smaller
 * @expect compile-fail
 * @section 15.2.5
 * @design boolean 不在 string|number 中，string|number|boolean 不可赋给 string|number
 * @note 来自规范 15.2.5 例：b = a 编译错误
 */
function main(): void {
    let a: string|number|boolean = "abc"
    let b: string|number = 42
    b = a
}

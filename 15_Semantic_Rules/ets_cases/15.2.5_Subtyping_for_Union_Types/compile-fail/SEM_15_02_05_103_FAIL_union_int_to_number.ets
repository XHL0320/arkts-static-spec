/**
 * @id SEM_15_02_05_103_FAIL_union_int_to_number
 * @expect compile-fail
 * @section 15.2.5
 * @design int 不是 number 的子类型，不可隐式赋值给 number|string
 * @note 来自规范 15.2.5 例：u = 1 编译错误（int 不可隐式转换到 number）
 */
function main(): void {
    let u: number|string = 1.0
    u = 1
}

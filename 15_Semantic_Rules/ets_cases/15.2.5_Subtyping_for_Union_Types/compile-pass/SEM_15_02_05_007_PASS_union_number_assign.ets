/**
 * @id SEM_15_02_05_007_PASS_union_number_assign
 * @expect compile-pass
 * @section 15.2.5
 * @design 1.0 是 number 类型，number <: number|string
 * @note 来自规范 15.2.5 例：u = 1.0 OK
 */
function main(): void {
    let u: number|string = 1.0
}

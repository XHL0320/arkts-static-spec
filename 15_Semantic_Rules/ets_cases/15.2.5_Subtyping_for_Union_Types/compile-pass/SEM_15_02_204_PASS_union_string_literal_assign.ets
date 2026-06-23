/**
 * @id SEM_15_02_204_PASS_union_string_literal_assign
 * @expect compile-pass
 * @section 15.2.5
 * @design string 字面量 "aa" 是 string 子类型，string <: number|string
 * @note 来自规范 15.2.5 例：u = "aa" OK
 */
function main(): void {
    let u: number|string = "aa"
}

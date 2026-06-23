/**
 * @id SEM_15_02_201_PASS_union_smaller_to_larger
 * @expect compile-pass
 * @section 15.2.5
 * @design string|number 的每个成员在 string|number|boolean 中，联合 <: 更大联合
 * @note 来自规范 15.2.5 例：a = b OK
 */
function main(): void {
    let a: string|number|boolean = "abc"
    let b: string|number = 42
    a = b
}

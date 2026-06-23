/**
 * @id SEM_15_02_206_PASS_union_normalization
 * @expect compile-pass
 * @section 15.2.5
 * @design 联合类型归一化：字面量 "abc"|"cde" 均为 string 子类型，合并为 string
 * @note 来自规范 15.2.5 例：let u: "abc"|"cde"|string → u 类型为 string
 */
function main(): void {
    let u: "abc"|"cde"|string = "abc"
    let v: string = u
}

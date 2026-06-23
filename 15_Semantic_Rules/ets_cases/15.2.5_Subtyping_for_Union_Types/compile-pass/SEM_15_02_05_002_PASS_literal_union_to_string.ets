/**
 * @id SEM_15_02_05_002_PASS_literal_union_to_string
 * @expect compile-pass
 * @section 15.2.5
 * @design 联合类型 "1"|"2" 每个成员是 string 子类型，联合 <: string
 * @note 来自规范 15.2.5 例：let s2: string = s1 OK
 */
function main(): void {
    let s1: "1"|"2" = "1"
    let s2: string = s1
}

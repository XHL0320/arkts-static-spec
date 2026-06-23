/**
 * @id EXP_07_06_01_008_PASS_DEFAULT_VALUE_FIELD
 * @expect compile-pass
 * @section 7.6.1
 * @design 值类型默认值字段可跳过：class C { f1: number; f2: string = "hello" }，f1 为值类型有默认值 0，可跳过
 * @note 正向用例：验证值类型（如 number）有默认值，可在对象字面量中跳过
 */
class C {
    f1: number
    f2: string = "hello"
}
let c: C = {f2: "hello"}

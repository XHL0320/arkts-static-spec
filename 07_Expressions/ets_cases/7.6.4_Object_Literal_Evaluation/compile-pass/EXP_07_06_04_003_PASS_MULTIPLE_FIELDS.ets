/**
 * @id EXP_07_06_04_003_PASS_MULTIPLE_FIELDS
 * @expect compile-pass
 * @section 7.6.4
 * @design 多字段对象字面量编译通过：5 个字段从左到右排列，验证多字段字面量编译正常
 * @note 正向用例：验证多字段对象字面量编译通过
 */
class Data {
    a: number = 0
    b: number = 0
    c: number = 0
    d: number = 0
    e: number = 0
}
let d: Data = {a: 1, b: 2, c: 3, d: 4, e: 5}

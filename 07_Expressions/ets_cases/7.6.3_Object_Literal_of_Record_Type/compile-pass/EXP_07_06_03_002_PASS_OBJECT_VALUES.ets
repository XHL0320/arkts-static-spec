/**
 * @id EXP_07_06_03_002_PASS_OBJECT_VALUES
 * @expect compile-pass
 * @section 7.6.3
 * @design Record<string, 对象类型> 对象作为值
 * @note 正向用例：验证 Record 的值可以是对象类型
 */
interface PersonInfo {
    age: number
    salary: number
}
let map: Record<string, PersonInfo> = {
    "John": { age: 25, salary: 10},
    "Mary": { age: 21, salary: 20}
}

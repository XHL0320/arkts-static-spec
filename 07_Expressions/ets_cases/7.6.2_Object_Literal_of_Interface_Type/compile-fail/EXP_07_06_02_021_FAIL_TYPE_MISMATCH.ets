/**
 * @id EXP_07_06_02_021_FAIL_TYPE_MISMATCH
 * @expect compile-fail
 * @section 7.6.2
 * @design 属性值类型不匹配：name 为 string 类型，赋值为 123 (int) 应编译时错误
 * @note 反向用例：验证对象字面量中属性值类型必须与接口属性类型兼容
 */
interface Person {
    name: string
}
let b: Person = {name: 123}

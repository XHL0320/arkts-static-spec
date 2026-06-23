/**
 * @id EXP_07_10_02_009_FAIL_NULLISH_REF_FIELD_ACCESS
 * @expect compile-fail
 * @section 7.10.2
 * @design nullish 引用类型访问字段：T | undefined 类型的 objectReference 访问字段应报编译错误
 * @note 反向用例：验证 nullish 引用类型访问字段时编译时错误
 */
class Data {
    value: int = 0
}
let d: Data | undefined = new Data()
let v: int = d.value

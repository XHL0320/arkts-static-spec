/**
 * @id NAM_04_06_05_100_FAIL_OBJECT_LITERAL_INFER
 * @expect compile-fail
 * @section 4.6.5
 * @design 对象字面量类型不可推断
 * @note 反向用例：验证对象字面量类型不可推断编译错误
 */
let obj = {name: "aa"};

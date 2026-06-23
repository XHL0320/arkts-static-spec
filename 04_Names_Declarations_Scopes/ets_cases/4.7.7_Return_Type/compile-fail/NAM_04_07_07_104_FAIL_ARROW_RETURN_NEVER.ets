/**
 * @id NAM_04_07_07_104_FAIL_ARROW_RETURN_NEVER
 * @expect compile-fail
 * @section 4.7.7
 * @design 箭头函数声明never返回类型但空体
 * @note 反向用例：验证 let foo6 = (): never => {} 编译报错（spec 4.7.7 行1414）
 */
let foo6 = (): never => {}

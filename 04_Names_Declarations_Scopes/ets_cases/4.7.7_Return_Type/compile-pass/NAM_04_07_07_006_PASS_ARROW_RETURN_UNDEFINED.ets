/**
 * @id NAM_04_07_07_006_PASS_ARROW_RETURN_UNDEFINED
 * @expect compile-pass
 * @section 4.7.7
 * @design 箭头函数声明undefined返回类型空体
 * @note 正向用例：验证 let foo4 = (): undefined => {} 编译通过（spec 4.7.7 行1396）
 */
let foo4 = (): undefined => {}

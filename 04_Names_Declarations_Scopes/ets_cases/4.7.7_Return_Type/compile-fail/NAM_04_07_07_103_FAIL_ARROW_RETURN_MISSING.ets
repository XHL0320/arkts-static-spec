/**
 * @id NAM_04_07_07_103_FAIL_ARROW_RETURN_MISSING
 * @expect compile-fail
 * @section 4.7.7
 * @design 箭头函数声明number返回类型但无return/throw
 * @note 反向用例：验证 let foo2 = (): number => {} 编译报错（spec 4.7.7 行1390）
 */
let foo2 = (): number => {}
